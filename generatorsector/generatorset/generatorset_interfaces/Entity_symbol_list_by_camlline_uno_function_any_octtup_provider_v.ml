(** {3 Entity_symbol_list_by_camlline_dectup_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Entity_symbol_list_by_camlline_uno_function_any_octtup_provider_v";
   "Needed-by : FGNR:Camlline_uno_function_any_interface_v";
   "What-is-it : the only entity symbol builder of a Camlline_uno_function_any";
   "How-is-it-done : each son entity index is that of the ";
   "Remark : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "entity_symbol_list_by_camlline_uno_function_any_octtup_register";;

let entity_symbol_list_by_camlline_uno_function_any_octtup_register : 
    (
     (Camlline_uno_function_any_symbol_t.camlline_uno_function_any_symbol,
      Camlline_symbol_t.camlline_symbol,
      Item_symbol_t.item_symbol,	
      Usagefile_symbol_t.usagefile_symbol,
      Contentfile_symbol_t.contentfile_symbol,	
      Entity_symbol_t.entity_symbol, 
      Category_symbol_t.category_symbol,
      Domain_symbol_t.domain_symbol
     ) Octuplet_t.octuplet,
     
     Entity_symbol_t.entity_symbol list

) Register_t.register = Register_v.make 137
;;

let store oct_cfa sym_ent_l =
  try Register_v.store 
      entity_symbol_list_by_camlline_uno_function_any_octtup_register 
      oct_cfa
      sym_ent_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored oct_cfa =
  Register_v.is_stored 
    entity_symbol_list_by_camlline_uno_function_any_octtup_register 
    oct_cfa
;;

let retrieve oct_cfa =
  try Register_v.retrieve 
      entity_symbol_list_by_camlline_uno_function_any_octtup_register 
      oct_cfa
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

(*
let entity_symbol_of_camlline sym_cfa =
  let (sym_cal, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = oct_cal in

  match sym_cfa with
  | Camlline_uno_function_any_symbol_t.Comment_s_comment -> 
  | Camlline_uno_function_any_symbol_t.Es_any_vdot_print_ppf_ac_as -> 
  | Camlline_uno_function_any_symbol_t.Es_any_vdot_longname_ac_as ->
  | Camlline_uno_function_any_symbol_t.Es_any_vdot_make_ac_as -> 
  | Camlline_uno_function_any_symbol_t.Es_any_vdot_name_ac_as ->
  | Camlline_uno_function_any_symbol_t.Es_any_vdot_string_off_ac_as ->
  | Camlline_uno_function_any_symbol_t.Format_sprintf_longname_ac_as_string_off_ac_as ->
  | Camlline_uno_function_any_symbol_t.Left_off_doublet ->
  | Camlline_uno_function_any_symbol_t.Left_off_triplet ->
  | Camlline_uno_function_any_symbol_t.Let_fullname_ac_as_equal -> 
  | Camlline_uno_function_any_symbol_t.Middle_off_triplet ->
  | Camlline_uno_function_any_symbol_t.Pipe_datastructure_ac_as_arrow ->
  | Camlline_uno_function_any_symbol_t.Right_off_doublet -> 
  | Camlline_uno_function_any_symbol_t.Right_off_triplet -> 
  | Camlline_uno_function_any_symbol_t.Double_quote_Current ->

      Entity_symbol_son_by_entity_tritup_provider_v.provide sym_ent_top

  | Camlline_uno_function_any_symbol_t.Title_category 
  | Camlline_uno_function_any_symbol_t.Title_functionalities ->

      sym_ent_top
;;
*)

let build oct_cfa =
  Utilities_v.not_yet_implemented nam_cod "build"
;;

let build_n_store oct_cfa =
  let sym_ent_l = build oct_cfa in
  store oct_cfa sym_ent_l; 
  sym_ent_l
;;

let provide oct_cfa =
  if Register_v.is_stored 
      entity_symbol_list_by_camlline_uno_function_any_octtup_register 
      oct_cfa 
  then retrieve oct_cfa
  else build_n_store oct_cfa 
;;

