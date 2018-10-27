(** {3 Constructor_basename_kind_basename_doublet_list_by_category_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Constructor_basename_kind_basename_kind_basename_triplet_list_by_category_trail_provider_v";
   "Current : AGN:Constructor_basename_kind_basename_doublet_list_by_category_trail_provider_v";
   "Needed-by : AGNR:Constructor_leaf_basename_list_by_category_trail_provider_v";
   "Needed-by : AGNR:Kind_name_by_constructor_leaf_trail_provider_v";
   "Needed-by : AGNR:Constructor_node_basename_list_by_category_trail_provider_v";
   "Needed-by : AGNR:Kind_name_by_constructor_notleaf_trail_provider_v";
   "Definition : a Constructor_basename is a Root a Node of a Leaf of the Constructor Tree (CT)";
   "What-is-it : for each Category_trail it provides the list of (Constructor_basename, Rhs_string)";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "constructor_basename_kind_basename_doublet_list_by_category_trail_register";;

let constructor_basename_kind_basename_doublet_list_by_category_trail_register : 
    (Trail_t.trail, 
     (string, string) 
       Doublet_list_t.doublet_list) 
       Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cat =
  try Register_v.retrieve 
      constructor_basename_kind_basename_doublet_list_by_category_trail_register
      tra_cat
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let store tra_cat nam_ent_n_str_con_dol =
  try Register_v.store 
      constructor_basename_kind_basename_doublet_list_by_category_trail_register 
      tra_cat 
      nam_ent_n_str_con_dol
  with Failure ("Already_stored:Register_v.ml:store") ->
    let wws_trl_old = retrieve tra_cat in
    if nam_ent_n_str_con_dol <> wws_trl_old
    then
      begin
        let nam_ent = Trail_v.value_of_key_off_trail "category" tra_cat in
        let tra_cat = Trail_v.trail_of_key_off_trail "category" tra_cat in
        let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cat) 
        in
        Error_messages_v.print_fatal_error 
          nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_cat)
             (Doublet_list_v.name_with_separator
		Utilities_v.identity Utilities_v.identity
		";\n   " 
		wws_trl_old) 
	  )
           (Format.sprintf "this value >%s<"
             (Doublet_list_v.name_with_separator 
	      Utilities_v.identity Utilities_v.identity 
	      ";\n   " 
	      wws_trl_old) 
	  )
          (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)

      end
    else 
      Error_messages_v.print_warning
	nam_cod 
	"store"
	(Format.sprintf "key >%s<@.    already stored with value:@. >%s<"
           (Trail_v.name tra_cat)
           (Doublet_list_v.name_with_separator Utilities_v.identity Utilities_v.identity "; "
	      (retrieve tra_cat)) 
	)
;;

let is_stored tra_cat =
  Register_v.is_stored 
    constructor_basename_kind_basename_doublet_list_by_category_trail_register 
    tra_cat
;;

let build tra_cat =
  let tri_ckr_l =  
    Constructor_basename_kind_basename_kind_basename_triplet_list_by_category_trail_provider_v.provide
      tra_cat
  in
  
  List.map (fun (c, k, s) -> (c, s)) tri_ckr_l
;;

let build_n_store tra_cat =
  let nam_ent_str_con_dol = build tra_cat in
    store tra_cat nam_ent_str_con_dol;
    nam_ent_str_con_dol
;;

let provide tra_cat =
  if tra_cat = []
  then
    Error_messages_v.print_fatal_error nam_cod "provide"
      "trail tra_cat were NOT empty" "tra_cat IS empty" "Check"
  else
    if not (Trail_v.has_of_head_key_off_trail "category" tra_cat) 
    then 
      Error_messages_v.print_fatal_error nam_cod "provide"
	"category trail"
	(Format.sprintf "%s instead" (Trail_v.name tra_cat))
	"Check"
    else
      begin
	if Register_v.is_stored 
	    constructor_basename_kind_basename_doublet_list_by_category_trail_register 
	    tra_cat
	then retrieve tra_cat
	else build_n_store tra_cat 
      end
;;
