(** {3 Some tools of Level 1 for Adb directory*)

let nam_cod = "tools_level_1_adb_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Database_filename_by_category_trail_provider_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done :";
 ]
;;

let filename_of_category_trail tra_cat =
  let fin = 
    Database_filename_by_category_trail_provider_v.provide 
      tra_cat in
  if not (Fileio_v.is_existing_of_filename fin)
  then
    Error_messages_v.print_fatal_error 
      nam_cod
      "filename_of_category_trail"
      (Format.sprintf "file @.    >%s<@.    exists" (Filename_p.fullname fin)) 
      ">No such file<"
      "check file name"
  else fin
;;

let nameoffile_of_category_trail tra_cat =
  let fin = filename_of_category_trail tra_cat in
  Filename_p.fullname fin
;;

let selection_of_category_of_kind nam_cat nam_kin =
  match (nam_cat, nam_kin) with
  | ("symbol", "constructors")
  | ("formula", "builders") -> true
  | _ -> false
;;

let is_valid_of_kind = function
  | "description"  -> true
  | "constructors"  -> true
  | "builders"  -> true
  | _ -> false
;;

let domainset_categorys_set_file_name tra_ent =
  let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_ent in
  nameoffile_of_category_trail tra_cat
;;

let domainset_symbols_set_file_name tra_ent =
  let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_ent in
  let tra_cat_sym = Trail_v.replace_of_value_of_key_off_trail 
      "symbol" "category" tra_cat
  in
  domainset_categorys_set_file_name tra_cat_sym
;;

let domainset_formulas_set_file_name tra_ent =
  let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_ent in
  let tra_cat_for = Trail_v.replace_of_value_of_key_off_trail 
      "formula" "category" tra_cat
  in
  domainset_categorys_set_file_name tra_cat_for
;;

