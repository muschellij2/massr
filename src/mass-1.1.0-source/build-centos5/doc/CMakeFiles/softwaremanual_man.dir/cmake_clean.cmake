FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual_man"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual_man.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
