FILES_T_MLI :=  \
 Elementary_stream_tag_t.mli \
  Mp3_header_field_elevenbits_tag_t.mli \
  Mp3_header_field_fourbits_tag_t.mli \
  Mp3_header_field_twobits_tag_t.mli \
   Version_tag_t.mli \
  Mp3_header_field_onebit_tag_t.mli \
 Mp3_header_field_tag_t.mli \
 Mp3_header_tag_t.mli \
    Id3v2_4_tag_specific_tag_t.mli \
    Id3v2_3_tag_specific_tag_t.mli \
   Id3v2_tag_specific_tag_t.mli \
    Id3v2_tag_multiple_tag_t.mli \
    Id3v2_tag_unique_tag_t.mli \
   Id3v2_base_tag_tag_t.mli \
  Id3v2_tag_tag_t.mli \
   Id3v1_tag_227_tag_t.mli \
   Id3v1_tag_128_tag_t.mli \
  Id3v1_tag_tag_t.mli \
 Id3_tag_tag_t.mli \
  File_id3v2_tag_t.mli \
  File_id3v1_tag_t.mli \
 Mp3_file_tag_t.mli \
Musicset_tag_t.mli \

FILES_V_MLI := $(subst symbol_t,symbol_v,$(FILES_T_MLI))

# concatenate
FILES_MLI:= $(FILES_T_MLI) $(FILES_V_MLI) \
#musicset_symbol_by_sole_index_provider_v.mli \

