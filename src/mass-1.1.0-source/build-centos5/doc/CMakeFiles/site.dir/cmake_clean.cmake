FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/site"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/site.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
