SYMBOL_T_MLI := \
document_text_symbol_t.mli \
document_symbol_t.mli \
willforge_word_symbol_t.mli \
willforge_sentence_symbol_t.mli \
# ----------------- willforge_paragraph \
 willforge_pwillforge_paragrapharagraph_section_paragraph_symbol_t.mli \
    willforge_paragraph_foot_line_symbol_t.mli \
   willforge_paragraph_foot_symbol_t.mli \
  willforge_paragraph_hat_symbol_t.mli \
 willforge_paragraph_section_symbol_t.mli \
willforge_paragraph_symbol_t.mli \
# ----------------- willforge_page \
willforge_page_symbol_t.mli \

# create TAG files from SYMBOL files
TAG_T_MLI := $(subst symbol,tag,$(SYMBOL_T_MLI))

# concatenate
FILES_MLI:= $(SYMBOL_T_MLI) $(TAG_T_MLI)
