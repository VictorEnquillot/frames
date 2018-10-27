FILES_T_MLI := \
mp3_tag_one_bit_label_t.mli \
id3v2_frame_specification_label_t.mli \
mp3_tag_label_t.mli \
mp3_format_t.mli \
id3v2_frame_specification_label_t.mli \
mp3_data_t.mli \
mp3_header_content_t.mli \
mp3_frame_t.mli \
mp3_file_t.mli \

  
FILES_V_MLI := $(subst _t.mli,_v.mli,$(FILES_T_MLI))

# concatenate
FILES_MLI:= \
$(FILES_T_MLI) \
$(FILES_V_MLI) \
 