open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_musicset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_musicset_symbol.ml";;

*)

let nam_dos = "musicset";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
  [("musicset", "mp3_file id3_tag mp3_header mp3_header_field");
   ("mp3_file", "file_id3v1 file_id3v2");
   ("file_id3v1",
    "file_id3v1_mp3_header_1 file_id3v1_mp3_header_2 file_id3v1_mp3_header_2_5");
   ("file_id3v2",
    "file_id3v2_mp3_header_1 file_id3v2_mp3_header_2 file_id3v2_mp3_header_2_5");
   ("id3_tag", "id3v1_tag id3v1_1_tag id3v2_tag");
   ("id3v1_tag", "id3v1_tag_128  id3v1_tag_227");
   ("id3v1_tag_128",
    "header_3 title_30 artist_30 album_30 year_4 comment_28  comment_30 zero_byte_1 track_1 genre_1");
   ("id3v1_tag_227",
    "header_4 title_60 artist_60 album_60 speed_1 genre_30 start_time_6 end_time_6");
   ("id3v2_tag", "id3v2_base_tag id3v2_tag_specific");
   ("id3v2_base_tag", "id3v2_tag_unique id3v2_tag_multiple");
   ("id3v2_tag_unique",
    "AENC APIC COMM COMR ENCR ETCO GEOB GRID LINK MCDI MLLT OWNE PCNT POPM POSS PRIV RBUF RVRB SYLT SYTC TALB TBPM TCON TCOP TDLY TENC TFLT TIT1 TIT2 TIT3 TKEY TLAN TLEN TMED TOAL TOFN TOWN TPE2 TPE3 TPE4 TPOS TPUB TRCK TRSN TRSO TSRC TSSE TXXX UFID USER USLT WCOM WCOP WOAF WOAR WOAS WORS WPAY WPUB WXXX");
   ("id3v2_tag_multiple", "TPE1 TCOM TEXT TOLY TOPE");
   ("id3v2_tag_specific", "id3v2_3_tag_specific id3v2_4_tag_specific");
   ("id3v2_3_tag_specific", "EQUA IPLS RVAD TDAT TIME TORY TRDA TYER TSIZ");
   ("id3v2_4_tag_specific",
    "ASPI EQU2 RVA2 SEEK SIGN TDEN TDOR TDRC TDRL TDTG TIPL TMCL TMOO TPRO TSOA TSOP TSOT TSST");
   ("mp3_header", "mp3_header_1 mp3_header_2 mp3_header_2_5");
   ("mp3_header_field",
    "mp3_header_field_onebit mp3_header_field_twobits mp3_header_field_fourbits mp3_header_field_elevenbits");
   ("mp3_header_field_onebit",
    "version error_protection pad_bit intensity_stereo ms_stereo private_bit copyright original");
   ("mp3_header_field_twobits",
    "layer frequency mode mode_extension emphasis");
   ("mp3_header_field_fourbits", "bit_rate");
   ("mp3_header_field_elevenbits", "sync_word");
   ("data", "data_audio data_video data_closed_caption");
   ("frame", "frame_audio frame_video frame_closed_caption");
   ("elementary_stream",
    "elementary_stream_audio elementary_stream_video elementary_stream_closed_caption");
   ("mp3_header_element",
    "sync_word version error_protection pad_bit intensity_stereo ms_stereo private_bit copyright original layer mode mode_extension frequency emphasis bit_rate sync_word");
   ("version", "version_1 version_2 version_2_5")]
);;

