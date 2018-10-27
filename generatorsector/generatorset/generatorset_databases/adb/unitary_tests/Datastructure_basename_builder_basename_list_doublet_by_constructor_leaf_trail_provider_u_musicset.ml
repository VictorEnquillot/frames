open Make_test_v;;

testing "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_musicset.ml";; 

(* toplevel 
   #use "Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_u_musicset.ml";;

*)

let nam_dos = "music";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos[];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let ban_cnl_l = Constructor_leaf_basename_list_by_domain_trail_provider_v.provide tra_dos;;
let tra_cnl_l = List.map (fun c -> Trail_v.make "entity" c tra_cat) ban_cnl_l;;
let dou_dat_bul_l = List.map Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide tra_cnl_l;;

let tri_cdb_l = List.map2 Triplet_v.make_of_left_of_doublet ban_cnl_l dou_dat_bul_l;;

let lis_l =  List.filter (fun (e, d, l) -> d = "list") tri_cdb_l;;

test_number 1 (
lis_l
(* : (string, string, string list) Triplet_t.triplet list *)
=
  [("metadata_id3v1x", "list", ["tag_id3v1"]);
   ("metadata_id3v2x", "list", ["tag_id3v2"]);
   ("mp3_elementary_stream_audio", "list", ["mp3_frame_audio"]);
   ("tag_id3v1_128", "list", ["mp3_header_field"]);
   ("tag_id3v1_227", "list", ["mp3_header_field"])]
);;

let dou_l =  List.filter (fun (e, d, l) -> d = "doublet") tri_cdb_l;;

test_number 2 (
dou_l
(* : (string, string, string list) Triplet_t.triplet list *)
=
 [("mp3_file_id3v1_header_1", "doublet",
    ["metadata_id3v1x"; "mp3_elementary_stream_audio"]);
   ("mp3_file_id3v1_header_2", "doublet",
    ["metadata_id3v1x"; "mp3_elementary_stream_audio"]);
   ("mp3_file_id3v1_header_2_5", "doublet",
    ["metadata_id3v1x"; "mp3_elementary_stream_audio"]);
   ("mp3_file_id3v2_header_1", "doublet",
    ["metadata_id3v2x"; "mp3_elementary_stream_audio"]);
   ("mp3_file_id3v2_header_2", "doublet",
    ["metadata_id3v2x"; "mp3_elementary_stream_audio"]);
   ("mp3_file_id3v2_header_2_5", "doublet",
    ["metadata_id3v2x"; "mp3_elementary_stream_audio"]);
   ("mp3_frame_audio", "doublet", ["mp3_header"; "mp3_data"])]
);;

let sin_l =  List.filter (fun (e, d, l) -> d = "singlet") tri_cdb_l;;

test_number 3 (
List.length sin_l
(* : (string, string, string list) Triplet_t.triplet list *)
=
131
);;

