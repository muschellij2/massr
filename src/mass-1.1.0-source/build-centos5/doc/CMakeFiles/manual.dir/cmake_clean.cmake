FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/manual"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/manual.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
