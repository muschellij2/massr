FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual_pdf"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual_pdf.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
