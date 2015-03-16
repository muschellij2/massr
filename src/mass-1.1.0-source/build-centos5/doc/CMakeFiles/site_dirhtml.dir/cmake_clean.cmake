FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/site_dirhtml"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/site_dirhtml.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
