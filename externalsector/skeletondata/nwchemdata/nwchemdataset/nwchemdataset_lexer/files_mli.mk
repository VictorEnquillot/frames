SYMBOLS_T_MLI :=  \
  Nwchemdata_lexer_variable_symbol_t.mli \
  Nwchemdata_lexer_symbol_symbol_t.mli \
  Nwchemdata_lexer_keyword_symbol_t.mli \
  Nwchemdata_lexer_hashline_symbol_t.mli \
    Nwchemdata_lexer_basic_word_uppercase_symbol_t.mli \
     Nwchemdata_lexer_basic_word_numeric_positive_symbol_t.mli \
     Nwchemdata_lexer_basic_word_numeric_non_negative_symbol_t.mli \
     Nwchemdata_lexer_basic_word_numeric_negative_symbol_t.mli \
    Nwchemdata_lexer_basic_word_numeric_symbol_t.mli \
    Nwchemdata_lexer_basic_word_lowercase_symbol_t.mli \
    Nwchemdata_lexer_basic_word_capitalized_strict_symbol_t.mli \
    Nwchemdata_lexer_basic_word_capitalized_symbol_t.mli \
    Nwchemdata_lexer_basic_word_anycase_symbol_t.mli \
   Nwchemdata_lexer_basic_word_symbol_t.mli \
     Nwchemdata_lexer_basic_character_mark_singled_symbol_t.mli \
     Nwchemdata_lexer_basic_character_mark_coupled_symbol_t.mli \
    Nwchemdata_lexer_basic_character_mark_symbol_t.mli \
    Nwchemdata_lexer_basic_character_alphabetic_symbol_t.mli \
   Nwchemdata_lexer_basic_character_symbol_t.mli \
  Nwchemdata_lexer_basic_symbol_t.mli \
 Nwchemdata_lexer_symbol_t.mli \
 
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI))
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI) 

# TAGS_TV_MLI := $(subst symbol_,tag_,$(SYMBOLS_TV_MLI))
 
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
Nwchemdata_lexer_lexical_analysis_tools_v.mli \
Nwchemdata_lexer_lexical_analysis_v.mli \
Nwchemdata_lexer_symbol_reverse_list_by_databox_name_register_v.mli \
Nwchemdata_lexer_symbol_reverse_list_by_databox_name_provider_v.mli \
 