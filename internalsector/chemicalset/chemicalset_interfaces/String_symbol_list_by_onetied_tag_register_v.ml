(** {3 String_symbol_list_by_onetied_tag_register_v} *)

(** {6 Documenting_for_register} *)

let documentation () = 
[
  "Needs: ";
  "Current : DFIG:String_symbol_list_by_onetied_tag_register_v";
  "Needed-by: IFIG:Onetied_interface_v";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "String_symbol_list_by_onetied_tag_register_v.register";;

let register : 
    (Onetied_tag_t.onetied_tag,
     String_symbol_t.string_symbol list) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s  --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key tag_fas =
  Onetied_tag_v.fullname tag_fas
;;

let name_of_value sym_fas_l  =
 List_v.name_with_separator String_symbol_v.fullname ";\n  " sym_fas_l
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve tag_fas =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register tag_fas 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

let store tag_fas tag_fas_l =
  try Register_v.store register tag_fas tag_fas_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    let tag_fas_l_old = retrieve tag_fas in
    if tag_fas_l <> tag_fas_l_old
    then Error_messages_v.print_fatal_error nam_cod 
	"store"
	(Format.sprintf "for key >%s<@.    already stored value :@.   %s@.    equal new one :"
	   (Onetied_tag_v.name tag_fas) 
	   (List_v.name_with_separator String_symbol_v.fullname ";\n    " tag_fas_l_old)
	)
	(Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
	   (List_v.name_with_separator String_symbol_v.fullname ";\n    " tag_fas_l)
	   (Register_v.string_of_register
	      (Onetied_tag_v.name)
	      (fun v -> List_v.name_with_separator String_symbol_v.fullname ";\n    " v)
	      ";\n  "
	      register
	   )
	)
	"Check or re-run if it is a test"
    else ()
;;

let store_force tag_fas tag_fas_l =
  Register_v.store_force register tag_fas tag_fas_l
;;

let is_stored tag_fas =
  Register_v.is_stored register tag_fas
;;

