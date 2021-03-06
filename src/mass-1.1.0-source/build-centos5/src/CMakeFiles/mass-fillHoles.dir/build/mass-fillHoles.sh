#! /bin/bash
__FILE__="$(cd -P -- "$(dirname -- "$BASH_SOURCE")" && pwd -P)/$(basename -- "$BASH_SOURCE")"; i=0; lnk="$__FILE__"; while [[ -h "$lnk" ]] && [[ $i -lt 100 ]]; do dir=`dirname -- "$lnk"`; lnk=`readlink -- "$lnk"`; lnk=`cd "$dir" && cd $(dirname -- "$lnk") && pwd`/`basename -- "$lnk"`; let i++; done; [[ $i -lt 100 ]] && __FILE__="$lnk"; unset -v i dir lnk; __DIR__="$(dirname -- "$__FILE__")"; BASIS_BASH_UTILITIES="$__DIR__//sbia/sbiasfw/lab/mass/1.1.0/lib/bash/mass/mass/basis.sh"; BASHPATH="$__DIR__/.:$__DIR__/bash:$BASHPATH" # <-- added by BASIS
. /sbia/sbiasfw/lab/mass/1.1.0/lib/bash/mass/mass-functions.sh || { echo "Failed to source MASS functions!" 1>&2; exit 1; }

################################################ VERSION INFO ################################################
# $Id: FillHoles_3D.sh 170 2013-09-20 14:44:15Z hsiehm@UPHS.PENNHEALTH.PRV $
#
version()
{
	# Display the version number and date of modification extracted from
	# the Id variable.
	SVNversion="$Id: FillHoles_3D.sh 170 2013-09-20 14:44:15Z hsiehm@UPHS.PENNHEALTH.PRV $"
	Auth="Jimit Doshi"
	ver="$Rev: 170 $"
	mod="$LastChangedDate: 2013-09-20 10:44:15 -0400 (Fri, 20 Sep 2013) $"
	echo -e "Author			: $Auth"
	echo -e "Revision		$ver"
	echo -e "Last Modification	$mod"
#	echo -e "$0 version \c"
#	echo $SVNversion|cut -f3,4,5 -d" "
	exit 5
}

################################################ FUNCTIONS ################################################

help()
{
cat <<HELP

This script does the following:

	This script performs a 3D hole filling operation on a given binary image.

##############################################
USAGE :	$0 [OPTIONS]
OPTIONS:

Reqd:	-in	   < path >	absolute path of the input file to be registered
	
Opt:	-dest	   < path >	absolute path to the destination where the results are to be stored (default: same as input)
	-pref	   < pattern >	output file name (default: input_filled)
	-tmp	   < path >	absolute path to the temporary directory
	-v	   		verbose output (default: 0 - no output)
	-V			Version Information


ERROR: Not enough arguments!!
##############################################

DEPENDENCIES:
	3dcalc		: `which 3dcalc`
	3dBrickStat	: `which 3dBrickStat`
	nifti1_test	: `which nifti1_test`
	3dclust		: `which 3dclust`
	
HELP
exit 1
}

cleanUpandExit()
{
	echo -e ":o:o:o:o:o Aborting Operations .... \n\n"
	
	if [ -d "$TMP" ]
	then
		rm -rfv ${TMP}*
	fi
	
	### Execution Time 
	executionTime

	exit 1
}

parse()
{
	while [ -n "$1" ]; do
		case $1 in
			-h) 
				help;
				shift 1;;			# help is called
		     	-in) 
				input=$2;
				
				checkFile $input

				temp=`FileAtt $input`				
				InExt=`echo $temp | awk '{ print $1 }'`
				InbName=`echo $temp | awk '{ print $2 }'`
				InDir=`echo $temp | awk '{ print $3 }'`
				
				input=${InDir}/${InbName}.${InExt}

				shift 2;;			# SubID is set
			-dest) 
				dest=`checkPath $2`;
				shift 2;;			# source path is set
			-tmp) 
				tmpDirToUse=`checkPath $2`;
				shift 2;;			# source path is set
			-pref) 
				pref=$2;
				shift 2;;			# source path is set
			-v) 
				verbose=1;
				shift 1;;			# source path is set
			-V) 
				version;
				shift 1;;			# source path is set
			-*) 
				echo "ERROR: no such option $1";
				help;;
			 *) 
				break;;
		esac
	done
}

import()
{
	ext=$1
	inFile=$2
	outFile=$3
	
	if [ "${ext}" == "nii.gz" ]
	then
		if [ "$verbose" == "1" ]
		then
			cp -v ${inFile} ${outFile}.nii.gz
		else
			cp ${inFile} ${outFile}.nii.gz
		fi			
	elif [ "${ext}" == "nii" ]
	then
		echoV "nifti1_test -zn1 ${inFile} ${outFile}"
		nifti1_test -zn1 ${inFile} ${outFile}
	elif [ "${ext}" == "hdr" ]
	then
		echoV "nifti1_test -zn1 ${inFile%.hdr}.img ${outFile}"
		nifti1_test -zn1 ${inFile%.hdr}.img ${outFile}
	elif [ "${ext}" == "img" ]
	then
		echoV "nifti1_test -zn1 ${inFile} ${outFile}"
		nifti1_test -zn1 ${inFile} ${outFile}
	fi	
}

################################################ END OF FUNCTIONS ################################################

################################################ MAIN BODY ################################################

if [ $# -lt 1 ]; then
	help
fi

### Timestamps
startTime=`date +%F-%H:%M:%S`
startTimeStamp=`date +%s`

### Specifying the trap signal
trap "checkExitCode 1 '\nProgram Interrupted. Received SIGHUP signal'" SIGHUP 
trap "checkExitCode 1 '\nProgram Interrupted. Received SIGINT signal'" SIGINT 
trap "checkExitCode 1 '\nProgram Interrupted. Received SIGTERM signal'" SIGTERM 
trap "checkExitCode 1 '\nProgram Interrupted. Received SIGKILL signal'" SIGKILL

### Reading the arguments
parse $*

echoV "\nRunning commands on		: `hostname`"
echoV "Start time			: ${startTime}\n"

### Check if all dependenices are satisfied
checkDependency	3dcalc
checkDependency	nifti1_test
checkDependency	3dBrickStat
checkDependency	3dclust

### Forming FileNames
# TMP
PID=$$

### Creating temporary directory
createTempDir mass-fillHoles $PID
echoV "\n----->	Temporary local directory created at $TMP ..." 1

### Checking for default parameters
if [ -z $dest ]
then
	dest=`dirname $input`/
fi

if [ -z $pref ]
then
	pref=${InbName}_filled
fi

if [ "$verbose" == "1" ]
then
	echo -e "Input Image			: ${input}"
	echo -e "Output Image			: ${dest}${pref}.nii.gz"
fi

### Importing data to the temporary directory
echoV "\n----->	Importing required files to the temporary local directory ...\n"
import ${InExt} ${input} ${TMP}${InbName}

cd $TMP

### Converting the Input image to a binary mask (if it is not already) and inverting the mask
echoV "\n----->	Converting the Input image to a binary mask (if it is not already) and inverting the mask ...\n"
echoV "\n--> 3dcalc \n
	 -prefix ${TMP}${InbName}_inv.nii.gz \n
	 -a ${TMP}${InbName}.nii.gz \n
	 -expr 'iszero(step(a))' \n
	 -verbose \n
	 -nscale \n
	 -byte;"
	
if [ "$verbose" == "1" ]
then
	3dcalc \
	 -prefix ${TMP}${InbName}_inv.nii.gz \
	 -a ${TMP}${InbName}.nii.gz \
	 -expr 'iszero(step(a))' \
	 -verbose \
	 -nscale \
	 -byte;
else
	3dcalc \
	 -prefix ${TMP}${InbName}_inv.nii.gz \
	 -a ${TMP}${InbName}.nii.gz \
	 -expr 'iszero(step(a))' \
	 -nscale \
	 -byte >> FillHoles.log 2>&1
fi
checkExitCode $? "\nERROR: Binarizing and Inversion of the Input image failed!!!"

### Clusterizing the inverted mask
#vol=`3dBrickStat -slow -non-zero -volume ${TMP}${InbName}_inv.nii.gz`
vol=`3dBrickStat -slow -non-zero -count ${TMP}${InbName}_inv.nii.gz`
thresh=`echo "scale=0; $vol / 2" | bc`

echoV "\n----->	Clustering the inverted mask ...\n"
echoV "\n--> 3dclust \n
	 -prefix ${TMP}${InbName}_inv_bg.nii.gz \n
	 0 ${thresh} \n
	 ${TMP}${InbName}_inv.nii.gz; "
	
if [ "$verbose" == "1" ]
then
	3dclust \
	 -prefix ${TMP}${InbName}_inv_bg.nii.gz \
	 0 ${thresh} \
	 ${TMP}${InbName}_inv.nii.gz; 
else
	3dclust \
	 -prefix ${TMP}${InbName}_inv_bg.nii.gz \
	 0 ${thresh} \
	 ${TMP}${InbName}_inv.nii.gz  >> FillHoles.log 2>&1
fi
checkExitCode $? "\nERROR: Clusterizing failed!!!"

### Clusterizing the inverted mask
echoV "\n----->	Creating the final mask ...\n"
echoV "\n--> 3dcalc \n
	 -prefix ${TMP}${pref}.nii.gz \n
	 -a ${TMP}${InbName}.nii.gz \n
	 -b ${TMP}${InbName}_inv.nii.gz \n
	 -c ${TMP}${InbName}_inv_bg.nii.gz \n
	 -expr 'a+(b-c)' \n
	 -verbose \n
	 -nscale;"
	
if [ "$verbose" == "1" ]
then
	3dcalc \
	 -prefix ${TMP}${pref}.nii.gz \
	 -a ${TMP}${InbName}.nii.gz \
	 -b ${TMP}${InbName}_inv.nii.gz \
	 -c ${TMP}${InbName}_inv_bg.nii.gz \
	 -expr 'a+(b-c)' \
	 -verbose \
	 -nscale; 
else
	3dcalc \
	 -prefix ${TMP}${pref}.nii.gz \
	 -a ${TMP}${InbName}.nii.gz \
	 -b ${TMP}${InbName}_inv.nii.gz \
	 -c ${TMP}${InbName}_inv_bg.nii.gz \
	 -expr 'a+(b-c)' \
	 -verbose \
	 -nscale  >> FillHoles.log 2>&1
fi
checkExitCode $? "\nERROR: Filling Holes failed!!!"

### Transferring the results to the destination
echoV "\n----->	Transferring the results to the destination ...\n"
if [ ! -d $dest ]
then
	if [ "$verbose" == "1" ]
	then
		mkdir -pv $dest
	else
		mkdir -p $dest
	fi
fi

if [ "$verbose" == "1" ]
then
	mv -v ${TMP}${pref}.nii.gz ${dest}
else
	mv ${TMP}${pref}.nii.gz ${dest}
fi

### Removing the remaining files
echoV "\n----->	Removing some of the remaining files ...\n"

if [ "$verbose" == "1" ]
then
	rm -fv ${TMP}${InbName}.nii.gz
	rm -fv ${TMP}${InbName}_inv.nii.gz
	rm -fv ${TMP}${InbName}_inv_bg.nii.gz
	rm -fv FillHoles.log
	rmdir -v $TMP
else
	rm -f ${TMP}${InbName}.nii.gz
	rm -f ${TMP}${InbName}_inv.nii.gz
	rm -f ${TMP}${InbName}_inv_bg.nii.gz
	rm -f FillHoles.log
	rmdir $TMP 
fi	

### Execution Time
executionTime

################################################ END ################################################
