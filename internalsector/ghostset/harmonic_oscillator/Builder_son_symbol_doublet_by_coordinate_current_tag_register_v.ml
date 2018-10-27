(** {3 Builder_son_symbol_doublet_by_coordinate_current_tag_register_v} *)

(** {6 Documenting_for_register} *)

let documentation () = 
[
  "Needs: ";
  "Current : HAR:Builder_son_symbol_doublet_by_coordinate_current_tag_register_v";
  "Needed-by: HAR:Coordinate_current_interface_v";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Register} *)

let nam_reg = "Builder_son_symbol_doublet_by_coordinate_tag_register_v.register";;

let register : 
    (Coordinate_current_tag_t.coordinate_current_tag,
     (Coordinate_step_zero_symbol_t.coordinate_step_zero_symbol,
      Coordinate_step_minusone_symbol_t.coordinate_step_minusone_symbol)
       Doublet_t.doublet
    ) 
    Register_t.register = 
  Format.fprintf Format.std_formatter "@. --- Creating  %s --- @." nam_reg;
  Register_v.make 137
;;

let name_of_key tag_coo =
  Coordinate_current_tag_v.fullname tag_coo
;;

let name_of_value sym_bui_d  =
  Doublet_v.name_with_separator 
    Coordinate_step_zero_symbol_v.fullname 
    Coordinate_step_minusone_symbol_v.fullname 
    ";\n  " sym_bui_d
;;

let is_empty () =
  Register_v.is_empty register
;;

(** {6 Retrieving_for_formula.} *)

let retrieve tag_ccu =
  let nam_fun = "retrieve" in
  try Register_v.retrieve register tag_ccu 
  with Failure ("Not_stored:register_v.ml:retrieve") ->
    Utilities_v.failwith_of_message_of_code_name_of_function_name
      "Not_stored:" nam_cod nam_fun
;;  

(** {6 Storing.} *)

let store tag_ccu sym_bui_d =
  try Register_v.store register tag_ccu sym_bui_d
  with Failure ("Already_stored:Register_v.ml:store") ->
    let sym_bui_d_old = retrieve tag_ccu in
    if sym_bui_d <> sym_bui_d_old
    then Error_messages_v.print_fatal_error nam_cod 
	"store"
	(Format.sprintf "for key >%s<@.    already stored value :@.   %s@.    equal new one :"
	   (name_of_key tag_ccu) 
	   (name_of_value sym_bui_d_old)
	)
	(Format.sprintf "for new one :@.   %s@.Register stores:@.  %s" 
	   (name_of_value sym_bui_d)
	   (Register_v.string_of_register
	      (name_of_key)
	      (name_of_value)
	      ";\n  "
	      register
	   )
	)
	"Check or re-run if it is a test"
    else ()
;;

let store_force tag_ccu sym_bui_d =
  Register_v.store_force register tag_ccu sym_bui_d
;;

let is_stored tag_ccu =
  Register_v.is_stored register tag_ccu
;;
