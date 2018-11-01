(** {3 Camlline_datastructure_camltype_value_v} *)

open Tools_vgnr_v;;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : ";
   "Current : VGNR:Camlline_datastructure_camltype_value_v";
   "Needed-by : ";
   "What-is-it : ";
   "Improve : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Making.} *)

let module_name_of_string str =
  let (nam_ent, nam_cat) = 
    String_v.first_string_doublet_of_char_off_string
      ':' str 
  in
  nam_ent ^ "_" ^ nam_cat
;;

let argument_module_name_list_of_arguments_string str_arg =
  let wor_l = String_v.split_of_character_of_string ' ' str_arg in
  List.map module_name_of_string wor_l
;;

let developped_arguments_string_of_arguments_string str_arg =
(* Ex.: 
   "fragment_head:mark grouping:mark" 
gives :
   (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) 
*)
let nam_mod_low_l = 
  argument_module_name_list_of_arguments_string 
    str_arg 
in
let nam_mod_cap_l = List.map String.capitalize_ascii nam_mod_low_l in
  let nam_typ_l =
    List.map2 (fun c l -> c ^ "_t." ^ l)
      nam_mod_cap_l nam_mod_low_l 
  in
  let str = List_v.name_with_separator Utilities_v.identity ", " nam_typ_l in
  String.set str 0 '('; 
  String.set str ((String.length str) -1) ')';
  str 
;;

let constructor_name_of_entity_symbol_of_arguments_string sym_ent str_arg =
  let nam_mod_l = 
    argument_module_name_list_of_arguments_string 
      str_arg 
  in
  let str = List_v.name_with_separator Utilities_v.identity "_" nam_mod_l in
  let nam_con =
    String_v.cut_first_character_of_string 
      (String_v.cut_last_character_of_string str) 
  in
  let nam_ent = Entity_symbol_v.name sym_ent in
  (String.capitalize_ascii nam_ent) ^"_"^ nam_con
;;

let datastructure_module_name_of_entity_symbol sym_ent =
  let nam_sym = Entity_symbol_v.name sym_ent in
  (String.capitalize_ascii nam_sym) ^ "_t." ^  nam_sym
;;
(***
  let (sym_exd, sym_enf_l) =
    Entity_external_datastructure_symbol_entity_fictive_symbol_list_by_entity_fictive_nullary_tag_provider_v.provide
      tag_efn_top
  in
***)

let make_pipe_datastructure_camltype sym_ent_l =
(* Ex.:
  | Fragment_head_mark_n_grouping_mark of (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) Capped_list_t.capped_list
*)

(*
From :
  [(Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
   (Entity_external_datastructure_symbol_t.Capped_list
   "fragment_head:mark grouping:mark"))
   ;
   (Entity_symbol_t.Entity_symbol
   (Entity_symbol_t.Entity_top_symbol
   (Entity_top_symbol_t.Has_some_leaf_son
   "molecule_linear_diatomic"))]
*)

  let sym_ent_dat = List.hd sym_ent_l in
  let str_arg = Entity_symbol_v.string_off sym_ent_dat in

  Format.sprintf "  | %s of %s %s"
    (constructor_name_of_entity_symbol_of_arguments_string sym_ent_dat str_arg) 
    (developped_arguments_string_of_arguments_string str_arg)
    (datastructure_module_name_of_entity_symbol sym_ent_dat)  
;;

let make sym_ccd soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_datastructure_camltype_duo_symbol sym_ccd 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let sym_ent_top = Camlline_tag_v.entity_symbol_off_camlline_tag tag_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in
  let (sym_ent_a, sym_ent_b) = duo_off_list nam_cod "make" sym_cal sym_ent_l in
  let str_dou = 
    doublet_tag_of_entity_symbol_of_entity_symbol
      sym_ent_a 
      sym_ent_b 
  in

  match sym_ccd with
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_list -> 
   (* Ex.: (A_tag_t.a_tag, B_tag_t.b_tag) Capped_tree_t.capped_list *)
      Format.sprintf "%s Capped_list_t.capped_list" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree -> 
   (* Ex.: (A_tag_t.a_tag, B_tag_t.b_tag) Capped_tree_t.capped_tree *)
      Format.sprintf "%s Capped_tree_t.capped_tree" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar ->
      str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet ->
      Format.sprintf "%s Doublet_t.doublet" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_list ->
      Format.sprintf "%s Doublet_list_t.doublet_list" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_tree ->
      Format.sprintf "%s Doublet_tree_t.doublet_tree" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed ->
      Format.sprintf "%s Tree_leafed_t.tree_leafed" str_dou

  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure -> 

      make_pipe_datastructure_camltype sym_ent_l     

  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_constructor_of_a_b_doublet ->

      Format.sprintf "  | %s of %s"
	(entity_name_capitalized sym_ent_top) 
	str_dou

;;
