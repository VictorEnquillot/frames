(** {6 Parameter_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Parameter_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Parameter_Entity_symbol_by_sole_index_register_v";
   "What-is-it : any information on any Entity ancestor is provided from a Sole_index and a predicate";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Parameter_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Parameter_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Parameter_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Parameter_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Parameter_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_parameter_context_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_context_symbol_off_parameter_symbol
  | "is_parameter_set_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_symbol_off_parameter_symbol
  | "is_parameter_context_database_constructor" ->
     Parameter_symbol_v.is_parameter_context_database_constructor
  | "is_parameter_context_databox_constructor" ->
     Parameter_symbol_v.is_parameter_context_databox_constructor
  | "is_parameter_context_domain_constructor" ->
     Parameter_symbol_v.is_parameter_context_domain_constructor
  | "is_parameter_context_sector_constructor" ->
     Parameter_symbol_v.is_parameter_context_sector_constructor
  | "is_parameter_set_body_tuple_aopef_constructor" ->
     Parameter_symbol_v.is_parameter_set_body_tuple_aopef_constructor
  | "is_parameter_set_body_tuple_ecppef_constructor" ->
     Parameter_symbol_v.is_parameter_set_body_tuple_ecppef_constructor
  | "is_parameter_set_fence_aopef_coefficient_constructor" ->
     Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor
  | "is_parameter_set_fence_aopef_exponent_constructor" ->
     Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor
  | "is_parameter_set_fence_ecppef_coefficient_constructor" ->
     Parameter_symbol_v.is_parameter_set_fence_ecppef_coefficient_constructor
  | "is_parameter_set_fence_ecppef_exponent_constructor" ->
     Parameter_symbol_v.is_parameter_set_fence_ecppef_exponent_constructor
  | "is_parameter_context_database_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_context_database_symbol_off_parameter_symbol
  | "is_parameter_context_databox_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_context_databox_symbol_off_parameter_symbol
  | "is_parameter_context_domain_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_context_domain_symbol_off_parameter_symbol
  | "is_parameter_context_sector_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_context_sector_symbol_off_parameter_symbol
  | "is_parameter_set_body_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_body_symbol_off_parameter_symbol
  | "is_parameter_set_body_tuple_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_body_tuple_symbol_off_parameter_symbol
  | "is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol
  | "is_parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol
  | "is_parameter_set_fence_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_symbol_off_parameter_symbol
  | "is_parameter_set_fence_aopef_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_aopef_symbol_off_parameter_symbol
  | "is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol
  | "is_parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol
  | "is_parameter_set_fence_ecppef_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_ecppef_symbol_off_parameter_symbol
  | "is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol
  | "is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol" ->
     Parameter_symbol_v.is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol
  | str ->
      Error_messages_v.print_fatal_error __LOC__ "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"it is NOT"
	"Check"
;;

(** {6 Preparing} *)

let sole_index_n_parameter_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Parameter_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_parameter_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let nam_fun = "sole_index_n_parameter_symbol_included_of_string_predicate_of_sole_index" in
  let soi_n_des_dol = 
    sole_index_n_parameter_symbol_list_of_string_predicate_of_sole_index 
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
              "Check that it has been already stored in Parameter_symbol_by_sole_index_register"
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
	       (Doublet_list_v.name_with_separator Sole_index_v.name Parameter_symbol_v.fullname ";\n   "
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
    sole_index_n_parameter_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let parameter_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_parameter_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Parameter_context_context_database} *)

let parameter_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_context_database_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_context_database_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_context_database_symbol_off_parameter_symbol des_pre
;;

let parameter_context_database_name_off_sole_index soi_any =
  let soi_ldb = parameter_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_database_symbol_off_sole_index soi_ldb in
  Parameter_context_database_symbol_v.name sym_ldb
;;

let parameter_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_database_symbol_off_sole_index soi_ldb in
  Parameter_context_database_symbol_v.string_off sym_ldb
;;

let parameter_context_database_tag_off_sole_index soi_any =
  let soi_ldb = parameter_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_context_databox} *)

let parameter_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_context_databox_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_context_databox_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_context_databox_symbol_off_parameter_symbol des_pre
;;

let parameter_context_databox_name_off_sole_index soi_any =
  let soi_ldb = parameter_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_databox_symbol_off_sole_index soi_ldb in
  Parameter_context_databox_symbol_v.name sym_ldb
;;

let parameter_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_databox_symbol_off_sole_index soi_ldb in
  Parameter_context_databox_symbol_v.string_off sym_ldb
;;

let parameter_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = parameter_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_context_domain} *)

let parameter_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_context_domain_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_context_domain_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_context_domain_symbol_off_parameter_symbol des_pre
;;

let parameter_context_domain_name_off_sole_index soi_any =
  let soi_ldb = parameter_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_domain_symbol_off_sole_index soi_ldb in
  Parameter_context_domain_symbol_v.name sym_ldb
;;

let parameter_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_domain_symbol_off_sole_index soi_ldb in
  Parameter_context_domain_symbol_v.string_off sym_ldb
;;

let parameter_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = parameter_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_context_sector} *)

let parameter_context_sector_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_context_sector_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_context_sector_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_context_sector_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_context_sector_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_context_sector_symbol_off_parameter_symbol des_pre
;;

let parameter_context_sector_name_off_sole_index soi_any =
  let soi_ldb = parameter_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_sector_symbol_off_sole_index soi_ldb in
  Parameter_context_sector_symbol_v.name sym_ldb
;;

let parameter_context_sector_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_sector_symbol_off_sole_index soi_ldb in
  Parameter_context_sector_symbol_v.string_off sym_ldb
;;

let parameter_context_sector_tag_off_sole_index soi_any =
  let soi_ldb = parameter_context_sector_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_sector_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_context} *)

let parameter_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_context_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_context_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_context_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_context_symbol_off_parameter_symbol des_pre
;;

let parameter_context_name_off_sole_index soi_any =
  let soi_ldb = parameter_context_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_symbol_off_sole_index soi_ldb in
  Parameter_context_symbol_v.name sym_ldb
;;

let parameter_context_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_context_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_symbol_off_sole_index soi_ldb in
  Parameter_context_symbol_v.string_off sym_ldb
;;

let parameter_context_tag_off_sole_index soi_any =
  let soi_ldb = parameter_context_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_body} *)

let parameter_set_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_body_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_body_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_body_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_body_symbol_off_parameter_symbol des_pre
;;

let parameter_set_body_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_symbol_off_sole_index soi_ldb in
  Parameter_set_body_symbol_v.name sym_ldb
;;

let parameter_set_body_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_symbol_off_sole_index soi_ldb in
  Parameter_set_body_symbol_v.string_off sym_ldb
;;

let parameter_set_body_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_body_tuple_aopef} *)

let parameter_set_body_tuple_aopef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_body_tuple_aopef_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_aopef_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_body_tuple_aopef_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_body_tuple_aopef_symbol_off_parameter_symbol des_pre
;;

let parameter_set_body_tuple_aopef_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_aopef_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_aopef_symbol_v.name sym_ldb
;;

let parameter_set_body_tuple_aopef_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_aopef_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_aopef_symbol_v.string_off sym_ldb
;;

let parameter_set_body_tuple_aopef_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_aopef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_body_tuple_ecppef} *)

let parameter_set_body_tuple_ecppef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_body_tuple_ecppef_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_ecppef_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_body_tuple_ecppef_symbol_off_parameter_symbol des_pre
;;

let parameter_set_body_tuple_ecppef_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_ecppef_symbol_v.name sym_ldb
;;

let parameter_set_body_tuple_ecppef_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_ecppef_symbol_v.string_off sym_ldb
;;

let parameter_set_body_tuple_ecppef_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_ecppef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_body_tuple} *)

let parameter_set_body_tuple_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_body_tuple_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_body_tuple_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_body_tuple_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_body_tuple_symbol_off_parameter_symbol des_pre
;;

let parameter_set_body_tuple_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_symbol_v.name sym_ldb
;;

let parameter_set_body_tuple_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_symbol_off_sole_index soi_ldb in
  Parameter_set_body_tuple_symbol_v.string_off sym_ldb
;;

let parameter_set_body_tuple_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_body_tuple_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_body_tuple_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_aopef_coefficient} *)

let parameter_set_fence_aopef_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_aopef_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_aopef_coefficient_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_aopef_coefficient_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_coefficient_symbol_v.name sym_ldb
;;

let parameter_set_fence_aopef_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_coefficient_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_aopef_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_aopef_exponent} *)

let parameter_set_fence_aopef_exponent_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_aopef_exponent_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_exponent_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_aopef_exponent_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_aopef_exponent_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_exponent_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_exponent_symbol_v.name sym_ldb
;;

let parameter_set_fence_aopef_exponent_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_exponent_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_exponent_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_aopef_exponent_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_exponent_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_aopef} *)

let parameter_set_fence_aopef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_aopef_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_aopef_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_aopef_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_aopef_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_aopef_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_symbol_v.name sym_ldb
;;

let parameter_set_fence_aopef_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_aopef_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_aopef_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_aopef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_ecppef_coefficient} *)

let parameter_set_fence_ecppef_coefficient_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_ecppef_coefficient_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_ecppef_coefficient_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_ecppef_coefficient_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_coefficient_symbol_v.name sym_ldb
;;

let parameter_set_fence_ecppef_coefficient_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_coefficient_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_ecppef_coefficient_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_coefficient_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_coefficient_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_ecppef_exponent} *)

let parameter_set_fence_ecppef_exponent_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_ecppef_exponent_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_exponent_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_ecppef_exponent_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_ecppef_exponent_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_exponent_symbol_v.name sym_ldb
;;

let parameter_set_fence_ecppef_exponent_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_exponent_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_ecppef_exponent_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_exponent_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_exponent_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence_ecppef} *)

let parameter_set_fence_ecppef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_ecppef_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_ecppef_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_ecppef_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_ecppef_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_ecppef_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_symbol_v.name sym_ldb
;;

let parameter_set_fence_ecppef_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_ecppef_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_ecppef_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_ecppef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set_fence} *)

let parameter_set_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_fence_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_fence_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_fence_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_fence_symbol_off_parameter_symbol des_pre
;;

let parameter_set_fence_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_symbol_v.name sym_ldb
;;

let parameter_set_fence_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_symbol_off_sole_index soi_ldb in
  Parameter_set_fence_symbol_v.string_off sym_ldb
;;

let parameter_set_fence_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Parameter_context_set} *)

let parameter_set_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_parameter_set_symbol_off_parameter_symbol"
    soi_any
;;

let parameter_set_symbol_off_sole_index soi_any =
  let soi_ldb = parameter_set_sole_index_off_sole_index soi_any in
  let des_pre = 
    parameter_symbol_of_string_predicate_off_sole_index 
      "is_parameter_set_symbol_off_parameter_symbol"
      soi_ldb
  in
  Parameter_symbol_v.parameter_set_symbol_off_parameter_symbol des_pre
;;

let parameter_set_name_off_sole_index soi_any =
  let soi_ldb = parameter_set_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_symbol_off_sole_index soi_ldb in
  Parameter_set_symbol_v.name sym_ldb
;;

let parameter_set_string_off_off_sole_index soi_any =
  let soi_ldb = parameter_set_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_symbol_off_sole_index soi_ldb in
  Parameter_set_symbol_v.string_off sym_ldb
;;

let parameter_set_tag_off_sole_index soi_any =
  let soi_ldb = parameter_set_sole_index_off_sole_index soi_any in
  let sym_ldb = parameter_set_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* Using do_extractor_header.sh *)
(*       do_extractor_predicate_of_string.sh *)
(*       template_extractor_preparing_v.ml *)
(*       do_extractor_entity_extracted_list.sh > generator/entity_extracted.lis *)
(*       template_extractor_extracting_v.ml *)
(* done with do_extractor.sh force on samedi 1 avril 2017, 19:25:52 (UTC+0200) *)
