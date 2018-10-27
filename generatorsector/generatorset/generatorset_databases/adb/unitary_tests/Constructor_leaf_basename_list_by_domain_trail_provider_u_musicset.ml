open Make_test_v;;

testing "Constructor_leaf_basename_list_by_domain_trail_provider_v
   Constructor_leaf_basename_list_by_domain_trail_provider_u_musicset.ml";; 

(* toplevel 
   #use "Constructor_leaf_basename_list_by_domain_trail_provider_u_musicset.ml";;

*)

let nam_dos = "musicset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_lea_l_sym = Constructor_leaf_basename_list_by_domain_trail_provider_v.constructor_leaf_basename_list_from_constructor_basename_list tra_dos;;
let nam_lea_l_for = Constructor_leaf_basename_list_by_domain_trail_provider_v.constructor_leaf_basename_list_from_formulasset tra_dos;;
let exu_l = List_v.exclusive_union_of_list_of_list nam_lea_l_sym nam_lea_l_for;;
let nam_lea_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_lea_l_sym 
(* : string list *)
=
["id3v1_file"; "id3v2_file"; "header_3"; "title_30"; "artist_30"; "album_30";
 "year_4"; "comment_28"; "comment_30"; "zero_byte_1"; "track_1"; "genre_1";
 "header_4"; "title_60"; "artist_60"; "album_60"; "speed_1"; "genre_30";
 "start_time_6"; "end_time_6"; "AENC"; "APIC"; "COMM"; "COMR"; "ENCR";
 "ETCO"; "GEOB"; "GRID"; "LINK"; "MCDI"; "MLLT"; "OWNE"; "PCNT"; "POPM";
 "POSS"; "PRIV"; "RBUF"; "RVRB"; "SYLT"; "SYTC"; "TALB"; "TBPM"; "TCON";
 "TCOP"; "TDLY"; "TENC"; "TFLT"; "TIT1"; "TIT2"; "TIT3"; "TKEY"; "TLAN";
 "TLEN"; "TMED"; "TOAL"; "TOFN"; "TOWN"; "TPE2"; "TPE3"; "TPE4"; "TPOS";
 "TPUB"; "TRCK"; "TRSN"; "TRSO"; "TSRC"; "TSSE"; "TXXX"; "UFID"; "USER";
 "USLT"; "WCOM"; "WCOP"; "WOAF"; "WOAR"; "WOAS"; "WORS"; "WPAY"; "WPUB";
 "WXXX"; "TPE1"; "TCOM"; "TEXT"; "TOLY"; "TOPE"; "EQUA"; "IPLS"; "RVAD";
 "TDAT"; "TIME"; "TORY"; "TRDA"; "TYER"; "TSIZ"; "ASPI"; "EQU2"; "RVA2";
 "SEEK"; "SIGN"; "TDEN"; "TDOR"; "TDRC"; "TDRL"; "TDTG"; "TIPL"; "TMCL";
 "TMOO"; "TPRO"; "TSOA"; "TSOP"; "TSOT"; "TSST"; "mp3_header_a";
 "mp3_header_b"; "id3v2"; "version"; "error_protection"; "pad_bit";
 "intensity_stereo"; "ms_stereo"; "private_bit"; "copy"; "original"; "layer";
 "frequency"; "mode"; "mode_extension"; "emphasis"; "bitrate"; "sync_word";
 "data_audio"; "data_video"; "data_closed_caption"; "frame_audio";
 "frame_video"; "frame_closed_caption"; "elementary_stream_audio";
 "elementary_stream_video"; "elementary_stream_closed_caption"; "copyright";
 "bit_rate"; "sync"; "string_1"; "string_3"; "string_4"; "string_6";
 "string_30"; "string_60"]
);;

test_number 2 (
 nam_lea_l_for 
(* : string list *)
=
["id3v1_file"; "id3v2_file"; "album_30"; "album_60"; "artist_30";
 "artist_60"; "comment_28"; "comment_30"; "end_time_6"; "genre_1";
 "genre_30"; "header_3"; "header_4"; "speed_1"; "start_time_6"; "title_30";
 "title_60"; "track_1"; "year_4"; "zero_byte_1"; "AENC"; "APIC"; "ASPI";
 "COMM"; "COMR"; "ENCR"; "EQU2"; "EQUA"; "ETCO"; "GEOB"; "GRID"; "IPLS";
 "LINK"; "MCDI"; "MLLT"; "OWNE"; "PCNT"; "POPM"; "POSS"; "PRIV"; "RBUF";
 "RVA2"; "RVAD"; "RVRB"; "SEEK"; "SIGN"; "SYLT"; "SYTC"; "TALB"; "TBPM";
 "TCOM"; "TCON"; "TCOP"; "TDAT"; "TDEN"; "TDLY"; "TDOR"; "TDRC"; "TDRL";
 "TDTG"; "TENC"; "TEXT"; "TFLT"; "TIME"; "TIPL"; "TIT1"; "TIT2"; "TIT3";
 "TKEY"; "TLAN"; "TLEN"; "TMCL"; "TMED"; "TMOO"; "TOAL"; "TOFN"; "TOLY";
 "TOPE"; "TORY"; "TOWN"; "TPE1"; "TPE2"; "TPE3"; "TPE4"; "TPOS"; "TPRO";
 "TPUB"; "TRCK"; "TRDA"; "TRSN"; "TRSO"; "TSIZ"; "TSOA"; "TSOP"; "TSOT";
 "TSRC"; "TSSE"; "TSST"; "TXXX"; "TYER"; "UFID"; "USER"; "USLT"; "WCOM";
 "WCOP"; "WOAF"; "WOAR"; "WOAS"; "WORS"; "WPAY"; "WPUB"; "WXXX";
 "frame_audio"; "frame_video"; "frame_closed_caption";
 "elementary_stream_audio"; "mp3_header"; "bit_rate"; "copy"; "emphasis";
 "error_protection"; "frequency"; "intensity_stereo"; "layer"; "mode";
 "ms_stereo"; "original"; "pad_bit"; "private_bit"; "sync"; "version";
 "elementary_stream"; "mp3_header"; "sync_word"; "version"; "layer";
 "error_protection"; "bit_rate"; "frequency"; "pad_bit"; "private_bit";
 "mode"; "mode_extension"; "copy"; "original"; "emphasis"; "file_id3v1";
 "file_id3v2_3"; "file_id3v2_4"]
);;

test_number 3 (
List_v.exclusive_union_of_list_of_list  nam_lea_l_sym nam_lea_l_for
=
[]
);;

test_number 4 (
nam_lea_l
(* : string list *)
=
["triangle_isoceles_equilateral";
 "triangle_isoceles_right";
 "triangle_isoceles_acute";
 "triangle_isoceles_obtuse";
 "triangle_scalene_right";
 "triangle_scalene_acute";
 "triangle_scalene_obtuse";
 "vector_3d";
 "vector_2d";
 "vector_1d";
 "point_3d";
 "point_2d";
 "point_1d";
 "coordinate_1d";
 "x_3d";
 "y_3d";
 "z_3d";
 "cylindrical_rho";
 "cylindrical_phi";
 "cylindrical_zed";
 "spherical_rho";
 "spherical_phi";
 "spherical_theta";
 "x_2d";
 "y_2d";
 "polar_rho";
 "polar_theta"]
);;
 

