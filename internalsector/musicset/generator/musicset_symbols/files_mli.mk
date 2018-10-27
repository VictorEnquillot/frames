FILES_T_MLI :=  \
 Elementary_stream_symbol_t.mli \
  Mp3_header_field_elevenbits_symbol_t.mli \
  Mp3_header_field_fourbits_symbol_t.mli \
  Mp3_header_field_twobits_symbol_t.mli \
   Version_symbol_t.mli \
  Mp3_header_field_onebit_symbol_t.mli \
 Mp3_header_field_symbol_t.mli \
 Mp3_header_symbol_t.mli \
    Id3v2_4_tag_specific_symbol_t.mli \
    Id3v2_3_tag_specific_symbol_t.mli \
   Id3v2_tag_specific_symbol_t.mli \
    Id3v2_tag_multiple_symbol_t.mli \
    Id3v2_tag_unique_symbol_t.mli \
   Id3v2_base_tag_symbol_t.mli \
  Id3v2_tag_symbol_t.mli \
   Id3v1_tag_227_symbol_t.mli \
   Id3v1_tag_128_symbol_t.mli \
  Id3v1_tag_symbol_t.mli \
 Id3_tag_symbol_t.mli \
  File_id3v2_symbol_t.mli \
  File_id3v1_symbol_t.mli \
 Mp3_file_symbol_t.mli \
Musicset_symbol_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#musicset_symbol_by_sole_index_provider_v.mli \

