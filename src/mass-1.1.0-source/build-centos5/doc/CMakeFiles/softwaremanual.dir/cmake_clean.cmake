FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
