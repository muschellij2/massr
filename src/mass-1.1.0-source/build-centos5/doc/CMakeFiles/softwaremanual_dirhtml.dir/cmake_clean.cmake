FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual_dirhtml"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual_dirhtml.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
