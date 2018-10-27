(** {3 Entity_fictive_nullary_formula_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Contentfile_symbol_list_by_entity_fictive_nullary_tag_provider_v";
   "Current : FGNR:Entity_fictive_nullary_formula_v";
   "Needed-by : FGNR:entity_fictive_nullary_formula_v";
   "What-is-it : the formula [Contentfile_symbol list] for an Entity_fictive_nullary Symbol";
   "Definition : Contentfile_symbol is either type_alone, value_alone or type_n_value";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_usf = "Entity_fictive_nullary_symbol_formula";;

let longname for_efn =
  Format.sprintf "Entity_fictive_nullary_symbol_formula_t.%s" 
    (String.capitalize (name for_efn))

let string_off for_efn = "";;

let fullname for_efn =
  Format.sprintf "%s \"%s\"" (longname for_efn) (string_off for_efn)
;;

(** {6 Interfacing.} *)

let contentfile_tag_list tag_efn =
  let soi_efn = Tag_v.sole_index_off_tag tag_efn in
  let tri_efn =
    Entity_fictive_nullary_tag_v.entity_fictive_nullary_tritup_off_entity_fictive_nullary_tag 
      tag_efn 
  in
  let sym_cof_l = 
    Contentfile_symbol_list_by_entity_fictive_nullary_tritup_provider_v.provide
      tri_efn
  in
  let soi_cof_l = 
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cof_l)
      soi_efn
  in

  List.map2 Tag_v.make sym_cof_l soi_cof_l 
;;

(** {6 Storing.} *)

let store tag_cof_l =
  let soi_cof_l = 
    Doublet_list_v.right_list_off_doublet_list 
      tag_cof_l
  in
  let sym_cof_l = 
    Doublet_list_v.left_list_off_doublet_list 
      tag_cof_l
  in
  let gss_cof_l = List.map 
      Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol
      sym_cof_l
  in

  List.iter2 
    Generatorset_symbol_by_sole_index_register_v.store
    soi_cof_l  gss_cof_l;
;;

(** {6 Making.} *)

let make sym_efn soi_efn =
  let tag_efn = Tag_v.make sym_efn soi_efn in

  let tag_cof_l = contentfile_tag_list tag_efn in
  store tag_cof_l;

  tag_cof_l
;;

(** {6 Retrieving.} *)

let retrieve tag_efn = 
  let sym_efn = Tag_v.entity_off_tag tag_efn in
  let soi_efn = Tag_v.sole_index_off_tag tag_efn in
  make sym_efn soi_efn
;;

(** {6 Extracting.} *)

let contentfile_tag_list_off_entity_fictive_nullary_formula for_efn =
  for_efn
;;
 
(** {6 Iterating.} *)

let iter for_efn = List.iter for_efn ;;
let iter2 for_efn_1 for_efn_2 = List.iter for_efn_1 for_efn_2;;
let map for_efn = List.map for_efn;;
let map2 for_efn_1 for_efn_2 = List.map2 for_efn_1 for_efn_2;;


(** {6 Naming.} *)
(*
let name for_efn = map Contentfile_tag_v.name for_efn;;
*)
