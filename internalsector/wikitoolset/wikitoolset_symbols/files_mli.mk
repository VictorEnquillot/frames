FILES_T_MLI := \
html_attribute_parameter_t.mli \
html_attribute_t.mli \
html_tag_t.mli \
html_lexeme_t.mli \
html_tree_t.mli \

FILES_MP3_MLI := \
tools_mp3_v.mli \
  
FILES_V_MLI := $(subst _t.mli,_v.mli,$(FILES_T_MLI))

# concatenate
FILES_MLI:= \
 tools_v.mli \
	$(FILES_T_MLI) \
	$(FILES_V_MLI) \
 html_lexer_v.mli \
$(FILES_MP3_MLI) \
 