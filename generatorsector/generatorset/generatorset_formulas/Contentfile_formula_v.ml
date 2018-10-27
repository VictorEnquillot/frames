(** {3 Category_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Builders : Usagefile_tag";
   "Needs : IGNR:Contentfile_interface_v";
   "Current : FGNR:Contentfile_formula_v";
   "Needed-by : FGNR:Contentfile_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Remark : It is a Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cof =
  match for_cof with
  | Contentfile_formula_t.Type_alone _ -> 
      Contentfile_symbol_t.Type_alone

  | Contentfile_formula_t.Type_n_value _ -> 
      Contentfile_symbol_t.Type_n_value

  | Contentfile_formula_t.Value_alone _ -> 
      Contentfile_symbol_t.Value_alone

;;

(** {6 Naming_for_formula} *)

let name for_cof = 
  let sym_cof = symbol_of_formula for_cof in
  Contentfile_symbol_v.name sym_cof
;;

let string_off for_cof =
  let sym_cof = symbol_of_formula for_cof in
  Contentfile_symbol_v.string_off sym_cof
;;

let longname for_cof =
  Format.sprintf "Contentfile_formula_t.%s" 
    (String.capitalize (name for_cof))

let fullname for_cof =
  Format.sprintf "%s \"%s\"" (longname for_cof) (string_off for_cof)
;;

(** {6 Building_and_storing} *)

let build_n_store sym_cof soi_cof =
  let tag_cof = Tag_v.make sym_cof soi_cof in
  let qua_cof = 
    Contentfile_tag_v.contentfile_quatup_off_contentfile_tag 
      tag_cof 
  in
  let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof in
  let soi_usf_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_usf_l)
      soi_cof
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_usf_l soi_usf_l;
  
  List.map2 Tag_v.make sym_usf_l soi_usf_l
;;

(** {6 Making_for_formula} *)

let make sym_cof soi_cof =
  let tag_usf_l = build_n_store sym_cof soi_cof in

  match sym_cof with 
  | Contentfile_symbol_t.Type_alone ->
      Contentfile_formula_t.Type_alone tag_usf_l

  | Contentfile_symbol_t.Type_n_value ->
      Contentfile_formula_t.Type_n_value tag_usf_l

  | Contentfile_symbol_t.Value_alone ->
       Contentfile_formula_t.Value_alone tag_usf_l
	
;;

(** {6 Retrieving.} *)

let retrieve tag_cof = 
  let soi_cof = Tag_v.sole_index_off_tag tag_cof in
  let sym_cof = Tag_v.entity_off_tag tag_cof in
  make sym_cof soi_cof
;;

(** {6 Builder_tag_listing} *)

let usagefile_tag_list_off_contentfile_formula for_cof =
  match for_cof with
  | Contentfile_formula_t.Type_alone tag_usf_l ->
      tag_usf_l

  | Contentfile_formula_t.Type_n_value tag_usf_l -> 
      tag_usf_l

  | Contentfile_formula_t.Value_alone tag_usf_l -> 
      tag_usf_l
;;

let usagefile_tag_list_off_contentfile_tag tag_cof =
  let for_cof = retrieve tag_cof in
  usagefile_tag_list_off_contentfile_formula for_cof
;;

let camlline_tag_list_off_contentfile_formula for_cof =
  let tag_usf_l = 
    usagefile_tag_list_off_contentfile_formula 
      for_cof 
  in
  let for_usf_l = List.map
      Usagefile_formula_v.retrieve 
      tag_usf_l 
  in
  let tag_cal_ll = List.map
      Usagefile_formula_v.camlline_tag_list_off_usagefile_formula 
      for_usf_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_contentfile_tag tag_cof =
  let for_cof = retrieve tag_cof in
  camlline_tag_list_off_contentfile_formula for_cof
;;

(** {6 Iterating_for_formula_stem.} *)

let map f_of_tag_cap for_cof = 
  let tag_cap_l = camlline_tag_list_off_contentfile_formula for_cof in
  List.map f_of_tag_cap tag_cap_l
;;

let iter f_of_tag_cap for_cof = 
  let tag_cap_l = camlline_tag_list_off_contentfile_formula for_cof in
  List.iter f_of_tag_cap tag_cap_l ;;

let map2 f_of_tag_cap for_cof_1 for_cof_2  = 
  let tag_cap_l_1 = camlline_tag_list_off_contentfile_formula for_cof_1 in
  let tag_cap_l_2 = camlline_tag_list_off_contentfile_formula for_cof_2 in
  List.map2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2
;;

let iter2 f_of_tag_cap for_cof_1 for_cof_2 = 
  let tag_cap_l_1 = camlline_tag_list_off_contentfile_formula for_cof_1 in
  let tag_cap_l_2 = camlline_tag_list_off_contentfile_formula for_cof_2 in
  List.iter2 f_of_tag_cap tag_cap_l_1 tag_cap_l_2 
;;

