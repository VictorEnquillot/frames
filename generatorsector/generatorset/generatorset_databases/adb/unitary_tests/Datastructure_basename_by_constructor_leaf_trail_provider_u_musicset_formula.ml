open Make_test_v;;

testing "Datastructure_basename_by_constructor_leaf_trail_provider_v with
   Datastructure_basename_by_constructor_leaf_trail_provider_u_musicset_formula.ml";; 

(* toplevel 
   #use "Datastructure_basename_by_constructor_leaf_trail_provider_u_musicset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "music" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let nam_lea_nam_das_dol = Constructor_leaf_basename_datastructure_basename_doublet_list_by_domain_trail_provider_v.provide tra_dos;;

let lis_l = List.filter (fun (e, d) -> d = "list") nam_lea_nam_das_dol;;

test_number 1 (
lis_l
(* : (string, string) Doublet_list_t.doublet_list *)
=
  [("mp3_elementary_stream_audio", "list"); 
   ("metadata_id3v1x", "list");
   ("metadata_id3v2x", "list"); 
   ("tag_id3v1_128", "list");
   ("tag_id3v1_227", "list")]
);;

let tra_ent = Trail_v.make "entity" "mp3_elementary_stream_audio" tra_cat;;

test_number 2 (
 tra_ent
(* : Trail_t.trail *)
=
[("entity", "mp3_elementary_stream_audio"); 
 ("category", "formula");
 ("domain", "music")]
);;

let rhs_str = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent;;

test_number 3 (
rhs_str
(* : string *)
  = 
"list"
);;


let dou_l = List.filter (fun (e, d) -> d = "doublet") nam_lea_nam_das_dol;;

test_number 4 (
dou_l
(* : (string, string) Doublet_list_t.doublet_list *)
=
  [("mp3_frame_audio", "doublet"); 
   ("mp3_file_id3v1_header_1", "doublet");
   ("mp3_file_id3v1_header_2", "doublet");
   ("mp3_file_id3v1_header_2_5", "doublet");
   ("mp3_file_id3v2_header_1", "doublet");
   ("mp3_file_id3v2_header_2", "doublet");
   ("mp3_file_id3v2_header_2_5", "doublet")]
);;

let tra_ent = Trail_v.make "entity" "mp3_frame_audio" tra_cat;;

test_number 5 (
tra_ent
(* : Trail_t.trail *)
  =
[("entity", "mp3_frame_audio");
 ("category", "formula");
 ("domain", "music")]
);;

let rhs_str = Datastructure_basename_by_constructor_leaf_trail_provider_v.provide tra_ent;;

test_number 6 (
rhs_str
(* : string *)
  = 
"doublet"
);;

