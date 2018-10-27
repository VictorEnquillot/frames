(** {3 Local_database_nameofdirectory_list_by_domain_tag_register_v} *)

(** {6 Documenting_for_domain_tag} *)

let documentation () = 
[
  "Needs: ";
  "Current : DFIG:Local_database_nameofdirectory_list_by_domain_tag_register_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

(** {6 Register} *)

let nam_reg = "Local_database_nameofdirectory_list_by_domain_tag_register_v";;

let register : 
    (Domain_tag_t.domain_tag, 
     string list) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;


let name_of_domain_tag domain_tag =
  Domain_tag_v.name domain_tag
;;

let name_of_value ndi_ldb_l =
  List_v.name_with_separator (fun s->s) ";\n    " ndi_ldb_l
;;

let dump () = 
  Register_v.string_of_register 
    name_of_domain_tag
    name_of_value
    ";\n   "
    register
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve domain_tag =
  let nam_fun = "retrieve" in

  try Register_v.retrieve register domain_tag 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    let nam_cod = Management_v.current_module_name (documentation ()) in
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

(* let check_is_of_domain_tag_of_son_domain_tag_list domain_tag ndi_ldb_l = (\*** Improve should be typed **\) *)
(*   let nam_fun = "check_is_son_domain_tag_list_of_domain_tag_list" in *)
  
(*   let sym_fat = Tag_v.entity_off_tag domain_tag in *)
(*   let domain_tag_nos_l =  *)
(*     Doublet_list_v.filter_if_left  *)
(*       (fun s -> not (Domain_symbol_v.is_symbol_of_father_of_son sym_fat s))  *)
(*       ndi_ldb_l  *)
(*   in *)
(*   if domain_tag_nos_l <> [] *)
(*   then *)
(*     Error_messages_v.print_fatal_error nam_cod nam_fun  *)
(*       "list were Son Domain_tag list"  *)
(*       (Format.sprintf "that list contains those NON Son Domain_tag :@.   %s@.    " *)
(* 	 (name_of_value domain_tag_nos_l) *)
(*       ) *)
(*       "Check" *)
(*   else  *)
(*     () *)
(* ;; *)

let store domain_tag ndi_ldb_l =

  try Register_v.store register domain_tag ndi_ldb_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let ndi_ldb_l_old = retrieve domain_tag in
    let nam_cod = Management_v.current_module_name (documentation ()) in
    if ndi_ldb_l <> ndi_ldb_l_old
    then Error_messages_v.print_fatal_error nam_cod 
	"store"
	(Format.sprintf "for domain_tag >%s<@.    already stored value :@.   %s@.    equal new one :"
	   (name_of_domain_tag domain_tag) 
	   (name_of_value ndi_ldb_l_old)
	)
	(Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
	   (name_of_value ndi_ldb_l)
	   (dump ())
	)
	"Check or re-run if it is a test"
    else ()
;;

let store_force domain_tag ndi_ldb_l =
  Register_v.store_force register domain_tag ndi_ldb_l
;;

let is_stored domain_tag =
  Register_v.is_stored register domain_tag
;;

