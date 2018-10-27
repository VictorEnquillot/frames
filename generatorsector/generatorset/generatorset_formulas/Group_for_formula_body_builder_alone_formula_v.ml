(** {3 Group_for_formula_body_builder_alone_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Group_for_formula_body_builder_alone_interface_v";
   "Current : FGNR:Group_for_formula_body_builder_alone_formula_v";
   "Needed-by : FGNR:Group_formula";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_gba =
  match for_gba with
  | Group_for_formula_body_builder_alone_formula_t.Make_builder_tag_list _ ->
     Group_for_formula_body_builder_alone_symbol_t.Make_builder_tag_list
;;

(** {6 Naming_for_formula} *)

let name for_gba = 
  let sym_gba = symbol_of_formula for_gba in
  Group_for_formula_body_builder_alone_symbol_v.name sym_gba
;;
(* ***

let string_off for_gba =
  let sym_gba = symbol_of_formula for_gba in
  Group_for_formula_body_builder_alone_symbol_v.string_off sym_gba
;;

let longname for_gba =
  Format.sprintf "Group_for_formula_body_builder_alone_formula_t.%s" 
    (String.capitalize (name for_gba))

let fullname for_gba =
  Format.sprintf "%s \"%s\"" (longname for_gba) (string_off for_gba)
;;
*** *)

(** {6 Building_and_storing_proper_sons} *)

let build_n_store sym_gba soi_gro =
  let sym_cal_l = Group_for_formula_body_builder_alone_interface_v.make sym_gba in
  let soi_cal_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cal_l)
      soi_gro
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_camlline_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_cal_l soi_cal_l;
  
  List.map2 Tag_v.make sym_cal_l soi_cal_l
;;

(** {6 Making_for_formula} *)

let make sym_gba soi_gro =
  let tag_cal_l = build_n_store sym_gba soi_gro in

  match sym_gba with 
  | Group_for_formula_body_builder_alone_symbol_t.Make_builder_tag_list ->
     Group_for_formula_body_builder_alone_formula_t.Make_builder_tag_list tag_cal_l
;;

(** {6 Retrieving} *)

let retrieve tag_gba =
  let soi_gro = Tag_v.sole_index_off_tag tag_gba in
  let sym_gba = Tag_v.entity_off_tag tag_gba in
  make sym_gba soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba =
  match for_gba with
  | Group_for_formula_body_builder_alone_formula_t.Make_builder_tag_list tag_cal_l -> tag_cal_l
;;

let camlline_tag_list_off_group_for_formula_body_builder_alone_tag tag_gba =
  let for_gba = retrieve tag_gba in
  camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba
;; 

(** {6 Iterating_for_formula_for_formula_body_builder_alone.} *)

let map f_of_tag_cal for_gba = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba in
  List.map f_of_tag_cal tag_cal_l
;;

let iter f_of_tag_cal for_gba = 
  let tag_cal_l = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba in
  List.iter f_of_tag_cal tag_cal_l ;;

let map2 f_of_tag_cal for_gba_1 for_gba_2  = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba_2 in
  List.map2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2
;;

let iter2 f_of_tag_cal for_gba_1 for_gba_2 = 
  let tag_cal_l_1 = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba_1 in
  let tag_cal_l_2 = camlline_tag_list_off_group_for_formula_body_builder_alone_formula for_gba_2 in
  List.iter2 f_of_tag_cal tag_cal_l_1 tag_cal_l_2 
;;

