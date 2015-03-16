FILE(REMOVE_RECURSE
  "."
  "."
  "."
  "."
  "./doctrees"
  "CMakeFiles/softwaremanual_html"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/softwaremanual_html.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
