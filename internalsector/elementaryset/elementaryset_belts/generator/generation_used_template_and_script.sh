cd ../
grep generated *t.ml | cut -d" " -f4 | sort -u  > generator/generated_script_files_t.lis
grep generated *v.ml | cut -d" " -f4 | sort -u  > generator/generated_script_files_v.lis
grep using *t.ml | cut -d" " -f3 | grep -v frames | sort -u  > generator/using_template_files_t.lis
grep using *v.ml | cut -d" " -f3 | sort -u  > generator/using_template_files_v.lis
cd generator