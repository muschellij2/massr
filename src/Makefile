SHELL=bash
version=1.1.0
package=mass
all:
	mkdir -p ./basis-build;
	cp basis-2.1.4-source.tar.gz ./basis-build;
	# cp -r ./${package}-${version}-source/basis-2.1.4-source/* \
	# ./basis-build/basis-2.1.4-source;
	######### Building BASIS
	cd ./basis-build; \
	tar -xzf basis-2.1.4-source.tar.gz;
	# cd /Users/johnmuschelli/Dropbox/Packages/massr/src/
	cd ./basis-build; \
	mkdir -p ./basis-2.1.4-build; \
	cd ./basis-2.1.4-build; \
	cmake ../basis-2.1.4-source; \
	make; 
	# unzip ${package}-${version}-source.zip;
	# cd /Users/johnmuschelli/Dropbox/Packages/massr/src/
	############# - IMPORTANT- if you change output of basis, need
	### to change CMakeLists for mass
	######### Building MASS
	# cd /Users/johnmuschelli/Dropbox/Packages/massr/src/
	# prefix=/usr/local/mass;
	# prefix=$PWD/${package}-${version}-build;
	# echo $prefix
	# mkdir -p ./"${package}-${version}-build";
	# cd ./"${package}-${version}-build"; \
	# cmake -D SCHEDULER:STRING=??? \
	# -DCMAKE_INSTALL_PREFIX=$prefix \
	# ../${package}-${version}-source; \
	# sudo make && sudo make install;
	#
	# -DCMAKE_INSTALL_PREFIX=../../inst/mass \
	# pathdir := $(shell `Rscript -e "cat(.libPaths()[1])"`)
	# echo $(pathdir);
	# mkdir -p "${pathdir}/massr/mass";
	prefix=$PWD/${package}-${version}-build;
	echo $prefix;
	mkdir -p ./"${package}-${version}-build";
	# -DCMAKE_INSTALL_PREFIX=$(pathdir)/massr/mass" \
	cd ./"${package}-${version}-build"; \
	cmake -D SCHEDULER:STRING=??? \
	-DCMAKE_INSTALL_PREFIX=../../inst/mass \
	../${package}-${version}-source; \
	make && make install;
	# cp -r ./"${package}-${version}-build"/* ../inst/mass;
	rm -rf ./"${package}-${version}-build";
	# rm -rf ./"${package}-${version}-source";
	rm -rf ./basis-build;
	cp ../${package}-${version}-source/Process_Files.R ./;
	R CMD Batch Process_Files.R

clean:
	rm -rf ./"${package}-${version}-build"
	# rm -rf ./"${package}-${version}-source"
	rm -rf ../inst/${package}/*;
	rm -rf ./basis-build;
	rm -f Process_Files.R;
