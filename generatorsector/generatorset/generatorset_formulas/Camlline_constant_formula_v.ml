(** {3 Camlline_constant_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_constant_formula_v";
   "Needed-by : FGNR:Camlline_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Node type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_cac = 
  match for_cac with
  | Camlline_constant_formula_t.Camlline_constant_function_formula for_cc1 ->
        Camlline_constant_function_formula_v.name for_cc1

  | Camlline_constant_formula_t.Camlline_constant_pervasive_formula for_cc2 ->
        Camlline_constant_pervasive_formula_v.name for_cc2
;;

let longname for_cac =
  Format.sprintf "Camlline_constant_t.%s" 
    (String.capitalize (name for_cac))

let string_off for_cac = "";;

let fullname for_cac =
  Format.sprintf "%s \"%s\"" (longname for_cac) (string_off for_cac)
;;

(** {6 Making_of_formula} *)

let make sym_cac soi_cap =
  match sym_cac with 
  | Camlline_constant_symbol_t.Camlline_constant_function_symbol sym_cc1 ->
      Camlline_constant_formula_t.Camlline_constant_function_formula 
        (Camlline_constant_function_formula_v.make sym_cc1 soi_cap)

  | Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol sym_cc2 ->
      Camlline_constant_formula_t.Camlline_constant_pervasive_formula 
        (Camlline_constant_pervasive_formula_v.make sym_cc2 soi_cap)

;;

(** {6 Retrieving.} *)

let retrieve tag_cac =
  let soi_cap = Tag_v.sole_index_off_tag tag_cac in
  let sym_cac = Tag_v.entity_off_tag tag_cac in
  make sym_cac soi_cap 
;; 

(** {6 Extracting.} *)

let entity_tag_list_off_camlline_constant_formula for_cac =
  match for_cac with 
  | Camlline_constant_formula_t.Camlline_constant_function_formula for_cc1 ->
        Camlline_constant_function_formula_v.entity_tag_list_off_camlline_constant_function_formula for_cc1

  | Camlline_constant_formula_t.Camlline_constant_pervasive_formula for_cc2 ->
        Camlline_constant_pervasive_formula_v.entity_tag_list_off_camlline_constant_pervasive_formula for_cc2
;;

let entity_tag_list_off_camlline_constant_tag tag_cac =
  let for_cac = retrieve tag_cac in
  entity_tag_list_off_camlline_constant_formula for_cac
;;

(** {6 Iterating.} *)

let map f for_cac = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_formula for_cac in
  List.map f tag_ent_l
;;

let iter f for_cac = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_formula for_cac in
  List.iter f tag_ent_l ;;

let map2 f for_cac_1 for_cac_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_formula for_cac_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_formula for_cac_2 in
  List.map2 f tag_ent_l_1 tag_ent_l_2
;;

let iter2 f for_cac_1 for_cac_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_formula for_cac_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_formula for_cac_2 in
  List.iter2 f tag_ent_l_1 tag_ent_l_2 
;;

