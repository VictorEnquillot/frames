(** {6 Property_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Property_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Property_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Property_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Property_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Property_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Property_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Property_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_property_command_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_symbol_off_property_symbol
  | "is_property_context_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_context_symbol_off_property_symbol
  | "is_property_operand_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_symbol_off_property_symbol
  | "is_property_operator_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_symbol_off_property_symbol
  | "is_property_target_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_target_symbol_off_property_symbol
  | "is_property_command_body_debug_constructor" ->
     Property_symbol_v.is_property_command_body_debug_constructor
  | "is_property_command_body_set_constructor" ->
     Property_symbol_v.is_property_command_body_set_constructor
  | "is_property_command_body_title_constructor" ->
     Property_symbol_v.is_property_command_body_title_constructor
  | "is_property_command_body_trace_constructor" ->
     Property_symbol_v.is_property_command_body_trace_constructor
  | "is_property_context_domain_constructor" ->
     Property_symbol_v.is_property_context_domain_constructor
  | "is_property_context_inputbase_constructor" ->
     Property_symbol_v.is_property_context_inputbase_constructor
  | "is_property_context_inputbox_constructor" ->
     Property_symbol_v.is_property_context_inputbox_constructor
  | "is_property_context_sector_constructor" ->
     Property_symbol_v.is_property_context_sector_constructor
  | "is_property_operand_body_target_calculated_constructor" ->
     Property_symbol_v.is_property_operand_body_target_calculated_constructor
  | "is_property_operand_body_target_created_constructor" ->
     Property_symbol_v.is_property_operand_body_target_created_constructor
  | "is_property_operand_body_target_measured_constructor" ->
     Property_symbol_v.is_property_operand_body_target_measured_constructor
  | "is_property_operand_fence_external_constructor" ->
     Property_symbol_v.is_property_operand_fence_external_constructor
  | "is_property_operator_fence_creation_toentity_constructor" ->
     Property_symbol_v.is_property_operator_fence_creation_toentity_constructor
  | "is_property_operator_fence_creation_tomeasure_constructor" ->
     Property_symbol_v.is_property_operator_fence_creation_tomeasure_constructor
  | "is_property_operator_fence_creation_tobasic_constructor" ->
     Property_symbol_v.is_property_operator_fence_creation_tobasic_constructor
  | "is_property_operator_fence_tounit_print_constructor" ->
     Property_symbol_v.is_property_operator_fence_tounit_print_constructor
  | "is_property_operator_fence_tounit_write_constructor" ->
     Property_symbol_v.is_property_operator_fence_tounit_write_constructor
  | "is_property_target_body_implicit_tounit_constructor" ->
     Property_symbol_v.is_property_target_body_implicit_tounit_constructor
  | "is_property_command_body_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_body_symbol_off_property_symbol
  | "is_property_command_body_debug_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_body_debug_symbol_off_property_symbol
  | "is_property_command_body_set_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_body_set_symbol_off_property_symbol
  | "is_property_command_body_title_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_body_title_symbol_off_property_symbol
  | "is_property_command_body_trace_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_command_body_trace_symbol_off_property_symbol
  | "is_property_context_domain_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_context_domain_symbol_off_property_symbol
  | "is_property_context_inputbase_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_context_inputbase_symbol_off_property_symbol
  | "is_property_context_inputbox_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_context_inputbox_symbol_off_property_symbol
  | "is_property_context_sector_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_context_sector_symbol_off_property_symbol
  | "is_property_operand_body_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_body_symbol_off_property_symbol
  | "is_property_operand_body_target_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_body_target_symbol_off_property_symbol
  | "is_property_operand_body_target_calculated_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_body_target_calculated_symbol_off_property_symbol
  | "is_property_operand_body_target_created_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_body_target_created_symbol_off_property_symbol
  | "is_property_operand_body_target_measured_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_body_target_measured_symbol_off_property_symbol
  | "is_property_operand_fence_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_fence_symbol_off_property_symbol
  | "is_property_operand_fence_external_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operand_fence_external_symbol_off_property_symbol
  | "is_property_operator_fence_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_symbol_off_property_symbol
  | "is_property_operator_fence_creation_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_creation_symbol_off_property_symbol
  | "is_property_operator_fence_creation_toentity_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_creation_toentity_symbol_off_property_symbol
  | "is_property_operator_fence_creation_tomeasure_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_creation_tomeasure_symbol_off_property_symbol
  | "is_property_operator_fence_creation_tobasic_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_creation_tobasic_symbol_off_property_symbol
  | "is_property_operator_fence_tounit_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_tounit_symbol_off_property_symbol
  | "is_property_operator_fence_tounit_print_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_tounit_print_symbol_off_property_symbol
  | "is_property_operator_fence_tounit_write_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_operator_fence_tounit_write_symbol_off_property_symbol
  | "is_property_target_body_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_target_body_symbol_off_property_symbol
  | "is_property_target_body_implicit_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_target_body_implicit_symbol_off_property_symbol
  | "is_property_target_body_implicit_tounit_symbol_off_property_symbol" ->
     Property_symbol_v.is_property_target_body_implicit_tounit_symbol_off_property_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_property_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Property_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_property_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_property_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_property_symbol_list_of_string_predicate_of_sole_index 
      str_pre soi_any
  in
  
  if soi_n_des_dol = []
  then
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "an element were stored in register >%s<@.      for Predicate >%s<@.      with a Sole_index included in path %s" 
	 main_register_name
	 str_pre 
	 (Sole_index_v.name soi_any)
      ) 
      (Format.sprintf "NONE@.    Here is a dump of main_register:\
       @. %s@.    Register length =%i" 
		(main_register_dump ()) 
		(Register_v.length main_register) 
      )
      (Format.sprintf "Check whether the Entity defined by Predicate:@.     >%s<@.      has been stored when created" str_pre)
  else
    begin  
      let inc_dol =
	try Doublet_list_v.filter_if_left       
	    (fun s -> List_v.are_tail_coinciding_of_list_of_list s soi_any) 
	    soi_n_des_dol
	    
	with
	| Failure "Empty_list:List_v.element_off_one_element_list"
	| Failure "Empty_doublet_list:Doublet_list_v.filter_if_left" ->
	    Error_messages_v.print_fatal_error nam_mod nam_fun
	      (Format.sprintf "an element existed for Predicate >%s<@.    with Sole_index inside path %s" 
		 str_pre 
		 (Sole_index_v.name soi_any)
	      ) 
	      (Format.sprintf "it is EMPTY@.    Here is a dump of main_register:\
               @. %s@.    Register length =%i" 
			(main_register_dump ()) 
			(Register_v.length main_register) 
	      )
              "Check that it has been already stored in Property_symbol_by_sole_index_register"
      in
      
      try List_v.element_off_one_element_list inc_dol
      with
      | Failure "Empty_list:List_v.element_off_one_element_list"
      | Failure "Several_elements:List_v.element_off_one_element_list" ->
          let str_l = Register_v.string_list_of_register 
	      main_register_name_of_key
	      main_register_name_of_value 
	      main_register 
          in
          Error_messages_v.print_fatal_error nam_mod nam_fun
	    (Format.sprintf "At least One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
	       str_pre 
	       (Sole_index_v.name soi_any)
	    ) 
	    (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	       (Doublet_list_v.name_with_separator Sole_index_v.name Property_symbol_v.fullname ";\n   "
		  soi_n_des_dol
	       )
	    )
	    (Format.sprintf "Check Register content :@.    %s"
	       (List_v.name_with_separator (fun s->s) ";\n   " str_l)
	    )
    end
;;

let sole_index_of_string_predicate_off_sole_index str_pre soi_any =
  let soi_n_fss =
    sole_index_n_property_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let property_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_property_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Property_context_command_body_debug} *)

let property_command_body_debug_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_body_debug_symbol_off_property_symbol"
    soi_any
;;

let property_command_body_debug_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_body_debug_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_body_debug_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_body_debug_symbol_off_property_symbol des_pre
;;

let property_command_body_debug_name_off_sole_index soi_any =
  let soi_ldb = property_command_body_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_debug_symbol_off_sole_index soi_ldb in
  Property_command_body_debug_symbol_v.name sym_ldb
;;

let property_command_body_debug_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_body_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_debug_symbol_off_sole_index soi_ldb in
  Property_command_body_debug_symbol_v.string_off sym_ldb
;;

let property_command_body_debug_tag_off_sole_index soi_any =
  let soi_ldb = property_command_body_debug_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_debug_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_command_body_set} *)

let property_command_body_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_body_set_symbol_off_property_symbol"
    soi_any
;;

let property_command_body_set_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_body_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_body_set_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_body_set_symbol_off_property_symbol des_pre
;;

let property_command_body_set_name_off_sole_index soi_any =
  let soi_ldb = property_command_body_set_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_set_symbol_off_sole_index soi_ldb in
  Property_command_body_set_symbol_v.name sym_ldb
;;

let property_command_body_set_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_body_set_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_set_symbol_off_sole_index soi_ldb in
  Property_command_body_set_symbol_v.string_off sym_ldb
;;

let property_command_body_set_tag_off_sole_index soi_any =
  let soi_ldb = property_command_body_set_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_command_body} *)

let property_command_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_body_symbol_off_property_symbol"
    soi_any
;;

let property_command_body_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_body_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_body_symbol_off_property_symbol des_pre
;;

let property_command_body_name_off_sole_index soi_any =
  let soi_ldb = property_command_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_symbol_off_sole_index soi_ldb in
  Property_command_body_symbol_v.name sym_ldb
;;

let property_command_body_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_symbol_off_sole_index soi_ldb in
  Property_command_body_symbol_v.string_off sym_ldb
;;

let property_command_body_tag_off_sole_index soi_any =
  let soi_ldb = property_command_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_command_body_title} *)

let property_command_body_title_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_body_title_symbol_off_property_symbol"
    soi_any
;;

let property_command_body_title_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_body_title_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_body_title_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_body_title_symbol_off_property_symbol des_pre
;;

let property_command_body_title_name_off_sole_index soi_any =
  let soi_ldb = property_command_body_title_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_title_symbol_off_sole_index soi_ldb in
  Property_command_body_title_symbol_v.name sym_ldb
;;

let property_command_body_title_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_body_title_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_title_symbol_off_sole_index soi_ldb in
  Property_command_body_title_symbol_v.string_off sym_ldb
;;

let property_command_body_title_tag_off_sole_index soi_any =
  let soi_ldb = property_command_body_title_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_title_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_command_body_trace} *)

let property_command_body_trace_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_body_trace_symbol_off_property_symbol"
    soi_any
;;

let property_command_body_trace_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_body_trace_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_body_trace_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_body_trace_symbol_off_property_symbol des_pre
;;

let property_command_body_trace_name_off_sole_index soi_any =
  let soi_ldb = property_command_body_trace_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_trace_symbol_off_sole_index soi_ldb in
  Property_command_body_trace_symbol_v.name sym_ldb
;;

let property_command_body_trace_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_body_trace_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_trace_symbol_off_sole_index soi_ldb in
  Property_command_body_trace_symbol_v.string_off sym_ldb
;;

let property_command_body_trace_tag_off_sole_index soi_any =
  let soi_ldb = property_command_body_trace_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_body_trace_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_command} *)

let property_command_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_command_symbol_off_property_symbol"
    soi_any
;;

let property_command_symbol_off_sole_index soi_any =
  let soi_ldb = property_command_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_command_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_command_symbol_off_property_symbol des_pre
;;

let property_command_name_off_sole_index soi_any =
  let soi_ldb = property_command_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_symbol_off_sole_index soi_ldb in
  Property_command_symbol_v.name sym_ldb
;;

let property_command_string_off_off_sole_index soi_any =
  let soi_ldb = property_command_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_symbol_off_sole_index soi_ldb in
  Property_command_symbol_v.string_off sym_ldb
;;

let property_command_tag_off_sole_index soi_any =
  let soi_ldb = property_command_sole_index_off_sole_index soi_any in
  let sym_ldb = property_command_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_context_domain} *)

let property_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_context_domain_symbol_off_property_symbol"
    soi_any
;;

let property_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = property_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_context_domain_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_context_domain_symbol_off_property_symbol des_pre
;;

let property_context_domain_name_off_sole_index soi_any =
  let soi_ldb = property_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_domain_symbol_off_sole_index soi_ldb in
  Property_context_domain_symbol_v.name sym_ldb
;;

let property_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = property_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_domain_symbol_off_sole_index soi_ldb in
  Property_context_domain_symbol_v.string_off sym_ldb
;;

let property_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = property_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_context_inputbase} *)

let property_context_inputbase_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_context_inputbase_symbol_off_property_symbol"
    soi_any
;;

let property_context_inputbase_symbol_off_sole_index soi_any =
  let soi_ldb = property_context_inputbase_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_context_inputbase_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_context_inputbase_symbol_off_property_symbol des_pre
;;

let property_context_inputbase_name_off_sole_index soi_any =
  let soi_ldb = property_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbase_symbol_off_sole_index soi_ldb in
  Property_context_inputbase_symbol_v.name sym_ldb
;;

let property_context_inputbase_string_off_off_sole_index soi_any =
  let soi_ldb = property_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbase_symbol_off_sole_index soi_ldb in
  Property_context_inputbase_symbol_v.string_off sym_ldb
;;

let property_context_inputbase_tag_off_sole_index soi_any =
  let soi_ldb = property_context_inputbase_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbase_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_context_inputbox} *)

let property_context_inputbox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_context_inputbox_symbol_off_property_symbol"
    soi_any
;;

let property_context_inputbox_symbol_off_sole_index soi_any =
  let soi_ldb = property_context_inputbox_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_context_inputbox_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_context_inputbox_symbol_off_property_symbol des_pre
;;

let property_context_inputbox_name_off_sole_index soi_any =
  let soi_ldb = property_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbox_symbol_off_sole_index soi_ldb in
  Property_context_inputbox_symbol_v.name sym_ldb
;;

let property_context_inputbox_string_off_off_sole_index soi_any =
  let soi_ldb = property_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbox_symbol_off_sole_index soi_ldb in
  Property_context_inputbox_symbol_v.string_off sym_ldb
;;

let property_context_inputbox_tag_off_sole_index soi_any =
  let soi_ldb = property_context_inputbox_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_inputbox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_context_sector} *)

let property_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_context_sector_symbol_off_property_symbol"
    soi_any
;;

let property_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = property_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_context_sector_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_context_sector_symbol_off_property_symbol des_pre
;;

let property_context_sector_name_off_sole_index soi_any =
  let soi_ldb = property_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_sector_symbol_off_sole_index soi_ldb in
  Property_context_sector_symbol_v.name sym_ldb
;;

let property_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = property_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_sector_symbol_off_sole_index soi_ldb in
  Property_context_sector_symbol_v.string_off sym_ldb
;;

let property_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = property_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_context} *)

let property_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_context_symbol_off_property_symbol"
    soi_any
;;

let property_context_symbol_off_sole_index soi_any =
  let soi_ldb = property_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_context_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_context_symbol_off_property_symbol des_pre
;;

let property_context_name_off_sole_index soi_any =
  let soi_ldb = property_context_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_symbol_off_sole_index soi_ldb in
  Property_context_symbol_v.name sym_ldb
;;

let property_context_string_off_off_sole_index soi_any =
  let soi_ldb = property_context_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_symbol_off_sole_index soi_ldb in
  Property_context_symbol_v.string_off sym_ldb
;;

let property_context_tag_off_sole_index soi_any =
  let soi_ldb = property_context_sole_index_off_sole_index soi_any in
  let sym_ldb = property_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_body} *)

let property_operand_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_body_symbol_off_property_symbol"
    soi_any
;;

let property_operand_body_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_body_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_body_symbol_off_property_symbol des_pre
;;

let property_operand_body_name_off_sole_index soi_any =
  let soi_ldb = property_operand_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_symbol_off_sole_index soi_ldb in
  Property_operand_body_symbol_v.name sym_ldb
;;

let property_operand_body_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_symbol_off_sole_index soi_ldb in
  Property_operand_body_symbol_v.string_off sym_ldb
;;

let property_operand_body_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_body_target_calculated} *)

let property_operand_body_target_calculated_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_body_target_calculated_symbol_off_property_symbol"
    soi_any
;;

let property_operand_body_target_calculated_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_calculated_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_body_target_calculated_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_body_target_calculated_symbol_off_property_symbol des_pre
;;

let property_operand_body_target_calculated_name_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_calculated_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_calculated_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_calculated_symbol_v.name sym_ldb
;;

let property_operand_body_target_calculated_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_calculated_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_calculated_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_calculated_symbol_v.string_off sym_ldb
;;

let property_operand_body_target_calculated_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_calculated_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_calculated_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_body_target_created} *)

let property_operand_body_target_created_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_body_target_created_symbol_off_property_symbol"
    soi_any
;;

let property_operand_body_target_created_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_created_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_body_target_created_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_body_target_created_symbol_off_property_symbol des_pre
;;

let property_operand_body_target_created_name_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_created_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_created_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_created_symbol_v.name sym_ldb
;;

let property_operand_body_target_created_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_created_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_created_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_created_symbol_v.string_off sym_ldb
;;

let property_operand_body_target_created_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_created_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_created_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_body_target_measured} *)

let property_operand_body_target_measured_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_body_target_measured_symbol_off_property_symbol"
    soi_any
;;

let property_operand_body_target_measured_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_measured_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_body_target_measured_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_body_target_measured_symbol_off_property_symbol des_pre
;;

let property_operand_body_target_measured_name_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_measured_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_measured_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_measured_symbol_v.name sym_ldb
;;

let property_operand_body_target_measured_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_measured_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_measured_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_measured_symbol_v.string_off sym_ldb
;;

let property_operand_body_target_measured_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_measured_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_measured_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_body_target} *)

let property_operand_body_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_body_target_symbol_off_property_symbol"
    soi_any
;;

let property_operand_body_target_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_body_target_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_body_target_symbol_off_property_symbol des_pre
;;

let property_operand_body_target_name_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_symbol_v.name sym_ldb
;;

let property_operand_body_target_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_symbol_off_sole_index soi_ldb in
  Property_operand_body_target_symbol_v.string_off sym_ldb
;;

let property_operand_body_target_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_body_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_body_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_fence_external} *)

let property_operand_fence_external_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_fence_external_symbol_off_property_symbol"
    soi_any
;;

let property_operand_fence_external_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_external_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_fence_external_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_fence_external_symbol_off_property_symbol des_pre
;;

let property_operand_fence_external_name_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_external_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_external_symbol_off_sole_index soi_ldb in
  Property_operand_fence_external_symbol_v.name sym_ldb
;;

let property_operand_fence_external_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_external_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_external_symbol_off_sole_index soi_ldb in
  Property_operand_fence_external_symbol_v.string_off sym_ldb
;;

let property_operand_fence_external_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_external_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_external_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand_fence} *)

let property_operand_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_fence_symbol_off_property_symbol"
    soi_any
;;

let property_operand_fence_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_fence_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_fence_symbol_off_property_symbol des_pre
;;

let property_operand_fence_name_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_symbol_off_sole_index soi_ldb in
  Property_operand_fence_symbol_v.name sym_ldb
;;

let property_operand_fence_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_symbol_off_sole_index soi_ldb in
  Property_operand_fence_symbol_v.string_off sym_ldb
;;

let property_operand_fence_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operand} *)

let property_operand_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operand_symbol_off_property_symbol"
    soi_any
;;

let property_operand_symbol_off_sole_index soi_any =
  let soi_ldb = property_operand_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operand_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operand_symbol_off_property_symbol des_pre
;;

let property_operand_name_off_sole_index soi_any =
  let soi_ldb = property_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_symbol_off_sole_index soi_ldb in
  Property_operand_symbol_v.name sym_ldb
;;

let property_operand_string_off_off_sole_index soi_any =
  let soi_ldb = property_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_symbol_off_sole_index soi_ldb in
  Property_operand_symbol_v.string_off sym_ldb
;;

let property_operand_tag_off_sole_index soi_any =
  let soi_ldb = property_operand_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operand_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_creation} *)

let property_operator_fence_creation_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_creation_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_creation_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_creation_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_creation_symbol_off_property_symbol des_pre
;;

let property_operator_fence_creation_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_symbol_v.name sym_ldb
;;

let property_operator_fence_creation_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_symbol_v.string_off sym_ldb
;;

let property_operator_fence_creation_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_creation_tobasic} *)

let property_operator_fence_creation_tobasic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_creation_tobasic_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_creation_tobasic_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tobasic_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_creation_tobasic_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_creation_tobasic_symbol_off_property_symbol des_pre
;;

let property_operator_fence_creation_tobasic_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tobasic_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tobasic_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_tobasic_symbol_v.name sym_ldb
;;

let property_operator_fence_creation_tobasic_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tobasic_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tobasic_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_tobasic_symbol_v.string_off sym_ldb
;;

let property_operator_fence_creation_tobasic_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tobasic_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tobasic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_creation_toentity} *)

let property_operator_fence_creation_toentity_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_creation_toentity_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_creation_toentity_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_toentity_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_creation_toentity_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_creation_toentity_symbol_off_property_symbol des_pre
;;

let property_operator_fence_creation_toentity_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_toentity_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_toentity_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_toentity_symbol_v.name sym_ldb
;;

let property_operator_fence_creation_toentity_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_toentity_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_toentity_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_toentity_symbol_v.string_off sym_ldb
;;

let property_operator_fence_creation_toentity_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_toentity_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_toentity_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_creation_tomeasure} *)

let property_operator_fence_creation_tomeasure_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_creation_tomeasure_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_creation_tomeasure_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tomeasure_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_creation_tomeasure_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_creation_tomeasure_symbol_off_property_symbol des_pre
;;

let property_operator_fence_creation_tomeasure_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tomeasure_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tomeasure_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_tomeasure_symbol_v.name sym_ldb
;;

let property_operator_fence_creation_tomeasure_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tomeasure_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tomeasure_symbol_off_sole_index soi_ldb in
  Property_operator_fence_creation_tomeasure_symbol_v.string_off sym_ldb
;;

let property_operator_fence_creation_tomeasure_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_creation_tomeasure_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_creation_tomeasure_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence} *)

let property_operator_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_symbol_off_property_symbol des_pre
;;

let property_operator_fence_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_symbol_off_sole_index soi_ldb in
  Property_operator_fence_symbol_v.name sym_ldb
;;

let property_operator_fence_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_symbol_off_sole_index soi_ldb in
  Property_operator_fence_symbol_v.string_off sym_ldb
;;

let property_operator_fence_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_tounit_print} *)

let property_operator_fence_tounit_print_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_tounit_print_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_tounit_print_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_print_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_tounit_print_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_tounit_print_symbol_off_property_symbol des_pre
;;

let property_operator_fence_tounit_print_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_print_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_print_symbol_v.name sym_ldb
;;

let property_operator_fence_tounit_print_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_print_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_print_symbol_v.string_off sym_ldb
;;

let property_operator_fence_tounit_print_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_print_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_print_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_tounit} *)

let property_operator_fence_tounit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_tounit_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_tounit_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_tounit_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_tounit_symbol_off_property_symbol des_pre
;;

let property_operator_fence_tounit_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_symbol_v.name sym_ldb
;;

let property_operator_fence_tounit_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_symbol_v.string_off sym_ldb
;;

let property_operator_fence_tounit_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator_fence_tounit_write} *)

let property_operator_fence_tounit_write_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_fence_tounit_write_symbol_off_property_symbol"
    soi_any
;;

let property_operator_fence_tounit_write_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_write_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_fence_tounit_write_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_fence_tounit_write_symbol_off_property_symbol des_pre
;;

let property_operator_fence_tounit_write_name_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_write_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_write_symbol_v.name sym_ldb
;;

let property_operator_fence_tounit_write_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_write_symbol_off_sole_index soi_ldb in
  Property_operator_fence_tounit_write_symbol_v.string_off sym_ldb
;;

let property_operator_fence_tounit_write_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_fence_tounit_write_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_fence_tounit_write_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_operator} *)

let property_operator_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_operator_symbol_off_property_symbol"
    soi_any
;;

let property_operator_symbol_off_sole_index soi_any =
  let soi_ldb = property_operator_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_operator_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_operator_symbol_off_property_symbol des_pre
;;

let property_operator_name_off_sole_index soi_any =
  let soi_ldb = property_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_symbol_off_sole_index soi_ldb in
  Property_operator_symbol_v.name sym_ldb
;;

let property_operator_string_off_off_sole_index soi_any =
  let soi_ldb = property_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_symbol_off_sole_index soi_ldb in
  Property_operator_symbol_v.string_off sym_ldb
;;

let property_operator_tag_off_sole_index soi_any =
  let soi_ldb = property_operator_sole_index_off_sole_index soi_any in
  let sym_ldb = property_operator_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_target_body_implicit} *)

let property_target_body_implicit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_target_body_implicit_symbol_off_property_symbol"
    soi_any
;;

let property_target_body_implicit_symbol_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_target_body_implicit_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_target_body_implicit_symbol_off_property_symbol des_pre
;;

let property_target_body_implicit_name_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_symbol_off_sole_index soi_ldb in
  Property_target_body_implicit_symbol_v.name sym_ldb
;;

let property_target_body_implicit_string_off_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_symbol_off_sole_index soi_ldb in
  Property_target_body_implicit_symbol_v.string_off sym_ldb
;;

let property_target_body_implicit_tag_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_target_body_implicit_tounit} *)

let property_target_body_implicit_tounit_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_target_body_implicit_tounit_symbol_off_property_symbol"
    soi_any
;;

let property_target_body_implicit_tounit_symbol_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_tounit_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_target_body_implicit_tounit_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_target_body_implicit_tounit_symbol_off_property_symbol des_pre
;;

let property_target_body_implicit_tounit_name_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_tounit_symbol_off_sole_index soi_ldb in
  Property_target_body_implicit_tounit_symbol_v.name sym_ldb
;;

let property_target_body_implicit_tounit_string_off_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_tounit_symbol_off_sole_index soi_ldb in
  Property_target_body_implicit_tounit_symbol_v.string_off sym_ldb
;;

let property_target_body_implicit_tounit_tag_off_sole_index soi_any =
  let soi_ldb = property_target_body_implicit_tounit_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_implicit_tounit_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_target_body} *)

let property_target_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_target_body_symbol_off_property_symbol"
    soi_any
;;

let property_target_body_symbol_off_sole_index soi_any =
  let soi_ldb = property_target_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_target_body_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_target_body_symbol_off_property_symbol des_pre
;;

let property_target_body_name_off_sole_index soi_any =
  let soi_ldb = property_target_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_symbol_off_sole_index soi_ldb in
  Property_target_body_symbol_v.name sym_ldb
;;

let property_target_body_string_off_off_sole_index soi_any =
  let soi_ldb = property_target_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_symbol_off_sole_index soi_ldb in
  Property_target_body_symbol_v.string_off sym_ldb
;;

let property_target_body_tag_off_sole_index soi_any =
  let soi_ldb = property_target_body_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Property_context_target} *)

let property_target_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_property_target_symbol_off_property_symbol"
    soi_any
;;

let property_target_symbol_off_sole_index soi_any =
  let soi_ldb = property_target_sole_index_off_sole_index soi_any in
  let des_pre = 
    property_symbol_of_string_predicate_off_sole_index 
      "is_property_target_symbol_off_property_symbol"
      soi_ldb
  in
  Property_symbol_v.property_target_symbol_off_property_symbol des_pre
;;

let property_target_name_off_sole_index soi_any =
  let soi_ldb = property_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_symbol_off_sole_index soi_ldb in
  Property_target_symbol_v.name sym_ldb
;;

let property_target_string_off_off_sole_index soi_any =
  let soi_ldb = property_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_symbol_off_sole_index soi_ldb in
  Property_target_symbol_v.string_off sym_ldb
;;

let property_target_tag_off_sole_index soi_any =
  let soi_ldb = property_target_sole_index_off_sole_index soi_any in
  let sym_ldb = property_target_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on mardi 4 avril 2017, 10:01:14 (UTC+0200) *)
