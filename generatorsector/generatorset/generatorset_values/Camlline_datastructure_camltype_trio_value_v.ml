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

let make sym_cct soi_cal =
  let sym_cal = 
    Camlline_symbol_v.camlline_symbol_of_camlline_datastructure_camltype_trio_symbol sym_cct
  in
  let tag_cal = Tag_v.make sym_cal soi_cal in
  let tag_ent_l = Camlline_formula_v.retrieve tag_cal in
(*  let sym_cat = Camlline_tag_v.category_symbol_off_camlline_tag tag_cal in : later *)
  
  let sym_ent_l = List.map Tag_v.entity_off_tag tag_ent_l in

  let (sym_ent_a, sym_ent_b, sym_ent_c) = trio_of_list nam_cod "make" sym_cal sym_ent_l in
  let str_trp = 
    triplet_tag_of_entity_symbol_of_entity_symbol_of_entity_symbol 
      sym_ent_a 
      sym_ent_b 
      sym_ent_c 
  in
  match sym_cct with
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped ->
      Format.sprintf "%s Tree_footed_capped_t.tree_footed_capped" str_trp

  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_leafed_capped ->
      Format.sprintf "%s Tree_leafed_capped_t.tree_leafed_capped" str_trp

  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet ->
      Format.sprintf "%s Triplet_t.triplet" str_trp

  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet_list ->
      Format.sprintf "%s Triplet_list_t.triplet_list" str_trp
;;
