open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_musicset_symbol.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_musicset_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "musicset")];;
let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("type", "musicset", "mp3_file id3_tag mp3_header mp3_header_field");
   ("type", "mp3_file", "file_id3v1 file_id3v2");
   ("type", "file_id3v1",
    "file_id3v1_mp3_header_1 file_id3v1_mp3_header_2 file_id3v1_mp3_header_2_5");
   ("type", "file_id3v2",
    "file_id3v2_mp3_header_1 file_id3v2_mp3_header_2 file_id3v2_mp3_header_2_5");
   ("type", "id3_tag", "id3v1_tag id3v1_1_tag id3v2_tag");
   ("type", "id3v1_tag", "id3v1_tag_128  id3v1_tag_227");
   ("type", "id3v1_tag_128",
    "header_3 title_30 artist_30 album_30 year_4 comment_28  comment_30 zero_byte_1 track_1 genre_1");
   ("type", "id3v1_tag_227",
    "header_4 title_60 artist_60 album_60 speed_1 genre_30 start_time_6 end_time_6");
   ("type", "id3v2_tag", "id3v2_base_tag id3v2_tag_specific");
   ("type", "id3v2_base_tag", "id3v2_tag_unique id3v2_tag_multiple");
   ("type", "id3v2_tag_unique",
    "AENC APIC COMM COMR ENCR ETCO GEOB GRID LINK MCDI MLLT OWNE PCNT POPM POSS PRIV RBUF RVRB SYLT SYTC TALB TBPM TCON TCOP TDLY TENC TFLT TIT1 TIT2 TIT3 TKEY TLAN TLEN TMED TOAL TOFN TOWN TPE2 TPE3 TPE4 TPOS TPUB TRCK TRSN TRSO TSRC TSSE TXXX UFID USER USLT WCOM WCOP WOAF WOAR WOAS WORS WPAY WPUB WXXX");
   ("type", "id3v2_tag_multiple", "TPE1 TCOM TEXT TOLY TOPE");
   ("type", "id3v2_tag_specific",
    "id3v2_3_tag_specific id3v2_4_tag_specific");
   ("type", "id3v2_3_tag_specific",
    "EQUA IPLS RVAD TDAT TIME TORY TRDA TYER TSIZ");
   ("type", "id3v2_4_tag_specific",
    "ASPI EQU2 RVA2 SEEK SIGN TDEN TDOR TDRC TDRL TDTG TIPL TMCL TMOO TPRO TSOA TSOP TSOT TSST");
   ("type", "mp3_header", "mp3_header_1 mp3_header_2 mp3_header_2_5");
   ("type", "mp3_header_field",
    "mp3_header_field_onebit mp3_header_field_twobits mp3_header_field_fourbits mp3_header_field_elevenbits");
   ("type", "mp3_header_field_onebit",
    "version error_protection pad_bit intensity_stereo ms_stereo private_bit copyright original");
   ("type", "mp3_header_field_twobits",
    "layer frequency mode mode_extension emphasis");
   ("type", "mp3_header_field_fourbits", "bit_rate");
   ("type", "mp3_header_field_elevenbits", "sync_word");
   ("type", "data", "data_audio data_video data_closed_caption");
   ("type", "frame", "frame_audio frame_video frame_closed_caption");
   ("description", "frame", "doublet mp3_header data");
   ("type", "elementary_stream",
    "elementary_stream_audio elementary_stream_video elementary_stream_closed_caption");
   ("type", "mp3_header_element",
    "sync_word version error_protection pad_bit intensity_stereo ms_stereo private_bit copyright original layer mode mode_extension frequency emphasis bit_rate sync_word");
   ("type", "version", "version_1 version_2 version_2_5");
   ("description", "ASPI", "Audio"); ("description", "EQU2", "Equalisation");
   ("description", "RVA2", "Relative"); ("description", "SEEK", "Seek");
   ("description", "SIGN", "Signature"); ("description", "TDEN", "Encoding");
   ("description", "TDOR", "Original"); ("description", "TDRC", "Recording");
   ("description", "TDRL", "Release"); ("description", "TDTG", "Tagging");
   ("description", "TIPL", "Involved"); ("description", "TMCL", "Musician");
   ("description", "TMOO", "Mood"); ("description", "TPRO", "Produced");
   ("description", "TSOA", "Album"); ("description", "TSOP", "Performer");
   ("description", "TSOT", "Title"); ("description", "TSST", "Set")]
);;

test_number 2 (
List.filter (select_entity_off_triplet "id3v2" 0 5) wws_trl
(* : (string, string, string) Triplet_t.triplet list *)
=
[("type", "id3v2_tag", "id3v2_base_tag id3v2_tag_specific");
 ("type", "id3v2_base_tag", "id3v2_tag_unique id3v2_tag_multiple");
 ("type", "id3v2_tag_unique",
  "AENC APIC COMM COMR ENCR ETCO GEOB GRID LINK MCDI MLLT OWNE PCNT POPM POSS PRIV RBUF RVRB SYLT SYTC TALB TBPM TCON TCOP TDLY TENC TFLT TIT1 TIT2 TIT3 TKEY TLAN TLEN TMED TOAL TOFN TOWN TPE2 TPE3 TPE4 TPOS TPUB TRCK TRSN TRSO TSRC TSSE TXXX UFID USER USLT WCOM WCOP WOAF WOAR WOAS WORS WPAY WPUB WXXX");
 ("type", "id3v2_tag_multiple", "TPE1 TCOM TEXT TOLY TOPE");
 ("type", "id3v2_tag_specific", "id3v2_3_tag_specific id3v2_4_tag_specific");
 ("type", "id3v2_3_tag_specific",
  "EQUA IPLS RVAD TDAT TIME TORY TRDA TYER TSIZ");
 ("type", "id3v2_4_tag_specific",
  "ASPI EQU2 RVA2 SEEK SIGN TDEN TDOR TDRC TDRL TDTG TIPL TMCL TMOO TPRO TSOA TSOP TSOT TSST")]
);;

