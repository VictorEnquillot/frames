(** {3 Constructor_basename_description_string_doublet_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Word_word_string_triplet_list_by_category_trail_provider_v";
   "Current : AGNR:Constructor_basename_description_string_doublet_list_by_category_trail_provider_v";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_description_string_doublet_list_by_category_trail_register";;

let constructor_basename_description_string_doublet_list_by_category_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      constructor_basename_description_string_doublet_list_by_category_trail_register
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat nam_ent_n_str_con_dol =
  try Register_v.store 
      constructor_basename_description_string_doublet_list_by_category_trail_register 
      tra_cat 
      nam_ent_n_str_con_dol
  with Failure ("Already_stored:Register_v.ml:store") ->
    Error_messages_v.print_warning
      nam_cod "store"
      (Format.sprintf "key >%s<@.    already stored with value:@. >%s<"
         (Trail_v.name tra_cat)
         (Doublet_list_v.name_with_separator Utilities_v.identity Utilities_v.identity "; "
	    (retrieve tra_cat)) 
      )
;;

let is_stored tra_cat =
  Register_v.is_stored 
    constructor_basename_description_string_doublet_list_by_category_trail_register 
    tra_cat
;;

let build_n_store_all tra_cat =
  let wws_trl =  
    Word_word_string_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  let nam_kin = "description" in
  let wws_ftl = List.filter 
      (fun (k, e, s) -> k = nam_kin) 
      wws_trl 
      in
      let nam_ent_str_con_dol =
	List.map 
	  Triplet_v.right_doublet_off_triplet 
	  wws_ftl
      in
      store tra_cat nam_ent_str_con_dol;
;;

let build tra_cat =
  build_n_store_all tra_cat;
  retrieve tra_cat
;;

let provide tra_cat =
  if tra_cat = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cat were NOT empty" "tra_cat IS empty" "Check"
  else
    begin
      if Register_v.is_stored 
	  constructor_basename_description_string_doublet_list_by_category_trail_register 
	  tra_cat
      then retrieve tra_cat
      else build tra_cat 
    end
;;
