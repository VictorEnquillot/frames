(** {3 The functionalities for a Value for an Camlline_datastructure_camltype of a Camlfile.}  *)

open Camlline_value_tools_v;;

let nam_cod = "Camlline_datastructure_camltype_value_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : ";
   "Needed-by : ";
   "What-is-it : ";
   "Improve : ";
 ]
;;

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
let nam_mod_cap_l = List.map String.capitalize nam_mod_low_l in
  let nam_typ_l =
    List.map2 (fun c l -> c ^ "_t." ^ l)
      nam_mod_cap_l nam_mod_low_l 
  in
  let str = List_v.name_with_separator Utils_v.identity ", " nam_typ_l in
  String.set str 0 '('; 
  String.set str ((String.length str) -1) ')';
  str 
;;

let constructor_name_of_entity_symbol_of_arguments_string sym_ent str_arg =
  let nam_mod_l = 
    argument_module_name_list_of_arguments_string 
      str_arg 
  in
  let str = List_v.name_with_separator Utils_v.identity "_" nam_mod_l in
  let nam_con =
    String_v.cut_first_character_of_string 
      (String_v.cut_last_character_of_string str) 
  in
  let nam_ent = Entity_symbol_v.name sym_ent in
  (String.capitalize nam_ent) ^"_"^ nam_con
;;

let datastructure_module_name_of_entity_symbol sym_ent =
  let nam_sym = Entity_symbol_v.name sym_ent in
  (String.capitalize nam_sym) ^ "_t." ^  nam_sym
;;

let make_pipe_datastructure_camltype sym_ent_l =
(* Ex.:
  | Fragment_head_mark_n_grouping_mark of (Fragment_head_mark_t.fragment_head_mark, Grouping_mark_t.grouping_mark) Capped_list_t.capped_list

From :
  [(Entity_symbol_t.Entity_external_symbol
   (Entity_external_symbol_t.Entity_external_datastructure_symbol
   (Entity_external_datastructure_symbol_t.Capped_list
   "fragment_head:mark grouping:mark"))
   ;
   (Entity_symbol_t.Entity_proper_symbol
   (Entity_proper_symbol_t.Entity_proper_top_symbol
   (Entity_proper_top_symbol_t.Has_some_leaf_son
   "molecule_linear_diatomic"))]
   
*)
  let sym_ent_dat = List.nth sym_ent_l 0 in
  let str_arg = Entity_symbol_v.string_off sym_ent_dat in

  Format.sprintf "  | %s of %s %s"
    (constructor_name_of_entity_symbol_of_arguments_string sym_ent_dat str_arg) 
    (developped_arguments_string_of_arguments_string str_arg)
    (datastructure_module_name_of_entity_symbol sym_ent_dat)  
;;

let make sym_cdc soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_datastructure_camltype_symbol sym_cdc 
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
  let sym_ent_l = List.map Tag_v.symbol_off_tag tag_ent_l in

  let (sym_ent_1, sym_ent_2) = pair_off_list nam_cod "make" sym_cal sym_ent_l in
  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in

  match sym_cdc with
(* typing *)
  | Camlline_datastructure_camltype_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure -> 

      make_pipe_datastructure_camltype sym_ent_l     

  | Camlline_datastructure_camltype_symbol_t.Pipe_constructor_of_a_list 
  | Camlline_datastructure_camltype_symbol_t.Pipe_constructor_of_a_singlet ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val %s_of_%s :"
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 
      

  | Camlline_datastructure_camltype_symbol_t.Pipe_constructor_of_a_b_doublet ->
      let sym_ent_c = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val %s : %s_t.%s;;"
	(Entity_symbol_v.string_off sym_ent_c) 
	(module_name sym_cat sym_ent_t) 
	(module_name sym_cat sym_ent_c) 


  | Camlline_datastructure_camltype_symbol_t.Pipe_constructor_of_a_b_c_triplet ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val is_%s_off_%s :"
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 
	
  | Camlline_datastructure_camltype_symbol_t.Pipe_constructor_of_a_tree ->
      let sym_ent_s = sym_ent_1 in
      let sym_ent_t = sym_ent_2 in
      Format.sprintf "val is_%s_off_%s :"
	(module_name sym_cat sym_ent_s) 
	(module_name sym_cat sym_ent_t) 

;;
