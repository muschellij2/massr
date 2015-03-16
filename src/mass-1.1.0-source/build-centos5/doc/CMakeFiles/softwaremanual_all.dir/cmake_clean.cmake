FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual_all"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual_all.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
