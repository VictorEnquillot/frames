(** {3 Entity_proper_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_proper_interface_v";
   "Current : FGNR:Entity_proper_formula_v";
   "Needed-by : FGNR:";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_enp =
  match for_enp with
  | Entity_proper_formula_t.Entity_proper_with_one_son (s, _) ->
     Entity_proper_symbol_t.Entity_proper_with_one_son s
  | Entity_proper_formula_t.Entity_proper_with_sons (s, _) ->
     Entity_proper_symbol_t.Entity_proper_with_sons s

;;

(** {6 Naming_for_formula} *)

let name for_enp = 
  let sym_enp = symbol_of_formula for_enp in
  Entity_proper_symbol_v.name sym_enp
;;
(* ***

let string_off for_enp =
  let sym_enp = symbol_of_formula for_enp in
  Entity_proper_symbol_v.string_off sym_enp
;;

let longname for_enp =
  Format.sprintf "Entity_proper_formula_t.%s" 
    (String.capitalize (name for_enp))

let fullname for_enp =
  Format.sprintf "%s \"%s\"" (longname for_enp) (string_off for_enp)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_enp soi_ite =
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp in
  let tag_ent = Tag_v.make sym_ent soi_ite in
  let tri_ent = Entity_tag_v.entity_tritup_off_entity_tag tag_ent in

  let sym_cof_l = Entity_interface_v.make_of_tuple tri_ent in
  let soi_cof_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cof_l)
      soi_ite
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cof_l soi_cof_l;
  
  List.map2 Tag_v.make sym_cof_l soi_cof_l
;;

(** {6 Making_for_formula} *)

let make sym_enp soi_ent =
  let tag_cof_l = build_n_store sym_enp soi_ent in
  match sym_enp with 
  | Entity_proper_symbol_t.Entity_proper_with_one_son s ->
     Entity_proper_formula_t.Entity_proper_with_one_son (s, tag_cof_l)
  | Entity_proper_symbol_t.Entity_proper_with_sons s ->
     Entity_proper_formula_t.Entity_proper_with_sons (s, tag_cof_l)
;;

(** {6 Retrieving} *)

let retrieve tag_enp =
  let soi_enp = Tag_v.sole_index_off_tag tag_enp in
  let sym_enp = Tag_v.entity_off_tag tag_enp in
  make sym_enp soi_enp 
;; 

(** {6 Builder_tag_listing} *)

let contentfile_tag_list_off_entity_proper_formula for_enp =
  match for_enp with
  | Entity_proper_formula_t.Entity_proper_with_one_son (s, tag_cof_l) -> tag_cof_l
  | Entity_proper_formula_t.Entity_proper_with_sons (s, tag_cof_l) -> tag_cof_l
;;

let contentfile_tag_list_off_entity_proper_tag tag_enp =
  let for_enp = retrieve tag_enp in
  contentfile_tag_list_off_entity_proper_formula for_enp
;; 

let camlline_tag_list_off_entity_proper_formula for_enp =
  let tag_cof_l = 
    contentfile_tag_list_off_entity_proper_formula 
      for_enp 
  in
  let for_cof_l = List.map
      Contentfile_formula_v.retrieve 
      tag_cof_l 
  in
  let tag_cal_ll = List.map
      Contentfile_formula_v.camlline_tag_list_off_contentfile_formula 
      for_cof_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_entity_proper_tag tag_enp =
  let for_enp = retrieve tag_enp in
  camlline_tag_list_off_entity_proper_formula for_enp
;; 

(** {6 Iterating_for_formula} *)

let map f_of_tag_cof for_enp = 
  let tag_cof_l = contentfile_tag_list_off_entity_proper_formula for_enp in
  List.map f_of_tag_cof tag_cof_l
;;

let iter f_of_tag_cof for_enp = 
  let tag_cof_l = contentfile_tag_list_off_entity_proper_formula for_enp in
  List.iter f_of_tag_cof tag_cof_l 
;;

let map2 f_of_tag_cof for_enp_1 for_enp_2  = 
  let tag_cof_l_1 = contentfile_tag_list_off_entity_proper_formula for_enp_1 in
  let tag_cof_l_2 = contentfile_tag_list_off_entity_proper_formula for_enp_2 in
  List.map2 f_of_tag_cof tag_cof_l_1 tag_cof_l_2
;;

let iter2 f_of_tag_cof for_enp_1 for_enp_2 = 
  let tag_cof_l_1 = contentfile_tag_list_off_entity_proper_formula for_enp_1 in
  let tag_cof_l_2 = contentfile_tag_list_off_entity_proper_formula for_enp_2 in
  List.iter2 f_of_tag_cof tag_cof_l_1 tag_cof_l_2 
;;

