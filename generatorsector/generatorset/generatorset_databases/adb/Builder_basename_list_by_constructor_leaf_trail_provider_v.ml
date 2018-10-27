(** {3 Builder_basename_list_by_constructor_leaf_trail_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v";
   "Current : AGNR:Builder_basename_list_by_constructor_leaf_trail_provider_v";
   "Needed-by : ";
   "Needed-by : ";
   "What-is-it : it provides the Datastructure_name associated with a Constructor_leaf";
   "How-is-it-done : by extracting Right part of the doublet above";
   "Invariant : None";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "builder_basename_list_by_constructor_leaf_trail_register";;

let builder_basename_list_by_constructor_leaf_trail_register : 
    (Trail_t.trail, 
     string list) 
    Register_t.register = Register_v.make 137
;;

(** {6 Retrieving} *)

let retrieve tra_cle =
  try Register_v.retrieve builder_basename_list_by_constructor_leaf_trail_register tra_cle
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    let str_reg = 
      Register_v.string_of_register 
	Trail_v.name 
	(List_v.name_with_separator Utilities_v.identity "; ")
	"\n" 
	builder_basename_list_by_constructor_leaf_trail_register
    in
    let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cle in
    let tra_cle = List.tl tra_cle in
    let nam_fil = Filename_p.name
        (Database_filename_by_category_trail_provider_v.provide tra_cle) 
    in
    Error_messages_v.print_fatal_error 
      nam_cod 
      "retrieve"
      (Format.sprintf "key >%s<@.    were already stored"
         (Trail_v.name tra_cle)) 
      (Format.sprintf "no such key in register dumped below:@.        %s" str_reg) 
      (Format.sprintf "check entry >%s< in file:@.       >%s<" nam_ent nam_fil)
;;  

let store tra_cle str_l =
  try Register_v.store 
      builder_basename_list_by_constructor_leaf_trail_register 
      tra_cle str_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let str_old_l = retrieve tra_cle in
    if str_old_l <> str_l
    then
      begin
	let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cle in
	let tra_cle = List.tl tra_cle in
	let nam_fil = 
          Filename_p.name
            (Database_filename_by_category_trail_provider_v.provide tra_cle) 
	in
	Error_messages_v.print_fatal_error 
	  nam_cod 
          "store"
          (Format.sprintf "for key >%s<@.    already stored value >%s< equal new one"
             (Trail_v.name tra_cle)
 	     (List_v.name_with_separator Utilities_v.identity "; " str_l) )
     
	  (Format.sprintf "this value >%s<"
 	     (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )

	  (Format.sprintf "check for duplicated entry >%s< in file:@.       >%s<" nam_ent nam_fil)
      end
    else 
      Error_messages_v.print_warning
	nam_cod 
        "store"
        (Format.sprintf "for key >%s<@.    already stored value >%s<"
           (Trail_v.name tra_cle)
           (List_v.name_with_separator Utilities_v.identity "; " str_old_l) )
;;

let is_stored tra_cle =
  Register_v.is_stored builder_basename_list_by_constructor_leaf_trail_register tra_cle
;;

(* {6 Invariants} *)

(* {6 Building} *)

let build tra_cle =
  let dou_dab_bul =
    Datastructure_basename_builder_basename_list_doublet_by_constructor_leaf_trail_provider_v.provide
      tra_cle 
  in

  Doublet_v.right_off_doublet dou_dab_bul
;;

let build_n_store tra_cle =
  let nam_bui_l = build tra_cle in
  store tra_cle nam_bui_l;
  nam_bui_l
;;

let provide tra_cle =
  if not (Tools_agnr_2_v.is_constructor_leaf_basename_of_entity_trail tra_cle) (* *** Improve : needs typing *** *)
  then
    begin
      let nam_ent = Trail_v.value_of_key_off_trail "entity" tra_cle in
      let tra_cat_for =
	Trail_v.replace_of_value_of_key_off_trail 
	  "formula" "category" tra_cle 
      in
      let nam_fil = Tools_agnr_1_v.nameoffile_of_category_trail tra_cat_for in
      Error_messages_v.print_fatal_error nam_cod "provide"
	"entity were a Leaf of the Constructor Tree at LHS of formulas.set file" 
	(Format.sprintf ">%s<" nam_ent) 
	(Format.sprintf "Check formulas.set file >%s<" nam_fil)
    end
  else
    begin 
      if Register_v.is_stored 
	  builder_basename_list_by_constructor_leaf_trail_register 
	  tra_cle
      then retrieve tra_cle
      else build_n_store tra_cle
    end
;;
