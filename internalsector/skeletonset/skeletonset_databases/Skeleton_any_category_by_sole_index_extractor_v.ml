(** {6 Skeleton_any_category_by_sole_index_extractor_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Skeleton_any_category_by_sole_index_extractor_v";
   "Register : BNWC:Skeleton_Entity_symbol_by_sole_index_register_v";
   ]
  ;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Registering} *)

let main_register = Skeleton_symbol_by_sole_index_register_v.register;;
let main_register_dump () = Skeleton_symbol_by_sole_index_register_v.dump ();;
let main_register_name = Skeleton_symbol_by_sole_index_register_v.nam_reg;;
let main_register_name_of_key = Skeleton_symbol_by_sole_index_register_v.name_of_key;;
let main_register_name_of_value = Skeleton_symbol_by_sole_index_register_v.name_of_value;;

(** {6 Predicates_for_symbol} *)

let predicate_of_string = function
  | "is_skeleton_context_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_context_symbol_off_skeleton_symbol
  | "is_skeleton_body_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_symbol_off_skeleton_symbol
  | "is_skeleton_fence_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol
  | "is_skeleton_fence_periodic" ->
     Skeleton_symbol_v.is_skeleton_fence_periodic
  | "is_skeleton_context_database_constructor" ->
     Skeleton_symbol_v.is_skeleton_context_database_constructor
  | "is_skeleton_context_databox_constructor" ->
     Skeleton_symbol_v.is_skeleton_context_databox_constructor
  | "is_skeleton_context_domain_constructor" ->
     Skeleton_symbol_v.is_skeleton_context_domain_constructor
  | "is_skeleton_body_centered_aopefset_onecenter_constructor" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter_constructor
  | "is_skeleton_body_centered_aopefset_anycenter_constructor" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter_constructor
  | "is_skeleton_body_centered_aopefset_shellsymmetry_constructor" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry_constructor
  | "is_skeleton_body_centered_aopefset_shellordinal_constructor" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal_constructor
  | "is_skeleton_body_centered_ecppefset_constructor" ->
     Skeleton_symbol_v.is_skeleton_body_centered_ecppefset_constructor
  | "is_skeleton_body_periodic_blochwave" ->
     Skeleton_symbol_v.is_skeleton_body_periodic_blochwave
  | "is_skeleton_body_periodic_wavelet" ->
     Skeleton_symbol_v.is_skeleton_body_periodic_wavelet
  | "is_skeleton_fence_centered_aopef_constructor" ->
     Skeleton_symbol_v.is_skeleton_fence_centered_aopef_constructor
  | "is_skeleton_fence_centered_ecppef_constructor" ->
     Skeleton_symbol_v.is_skeleton_fence_centered_ecppef_constructor
  | "is_skeleton_context_database_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_context_database_symbol_off_skeleton_symbol
  | "is_skeleton_context_databox_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_context_databox_symbol_off_skeleton_symbol
  | "is_skeleton_context_domain_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_context_domain_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_aopefset_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol
  | "is_skeleton_body_centered_ecppefset_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_centered_ecppefset_symbol_off_skeleton_symbol
  | "is_skeleton_body_periodic_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_body_periodic_symbol_off_skeleton_symbol
  | "is_skeleton_fence_centered_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_fence_centered_symbol_off_skeleton_symbol
  | "is_skeleton_fence_centered_aopef_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_fence_centered_aopef_symbol_off_skeleton_symbol
  | "is_skeleton_fence_centered_ecppef_symbol_off_skeleton_symbol" ->
     Skeleton_symbol_v.is_skeleton_fence_centered_ecppef_symbol_off_skeleton_symbol
  | str ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "predicate_of_string"
	(Format.sprintf ">%s< were a kown predicate" str)
	"It is NOT" "Check"
;;

(** {6 Preparing} *)

let sole_index_n_skeleton_symbol_list_of_string_predicate_of_sole_index str_pre soi_any =
  Skeleton_symbol_by_sole_index_register_filler_v.fill soi_any;
  let des_pre = predicate_of_string str_pre in
  Register_v.entry_list_of_value_predicate_of_register des_pre main_register 
;;

let sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index str_pre soi_any =
  let soi_n_des_dol = 
    sole_index_n_skeleton_symbol_list_of_string_predicate_of_sole_index
      str_pre 
      soi_any
  in

  if soi_n_des_dol = []
  then
    let nam_fun = "sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index" in
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
	    let nam_fun = "sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index" in
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
              "Check that it has been already stored in Skeleton_symbol_by_sole_index_register"
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
	   let nam_fun = "sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index" in

           Error_messages_v.print_fatal_error nam_mod nam_fun
	     (Format.sprintf "One and ONLY ONE element existed for Predicate >%s<@.        and Sole_index %s" 
		str_pre 
		(Sole_index_v.name soi_any)
	     ) 
	  (Format.sprintf "Sole_index n Symbol Doublet_list is :@.   %s"
	     (Doublet_list_v.name_with_separator Sole_index_v.name Skeleton_symbol_v.fullname ";\n   "
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
    sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index 
      str_pre
      soi_any
  in
  Doublet_v.left_off_doublet soi_n_fss
;;

let skeleton_symbol_of_string_predicate_off_sole_index fss_pre soi_any =
  let soi_n_fss =
    sole_index_n_skeleton_symbol_included_of_string_predicate_of_sole_index 
      fss_pre
      soi_any
  in
  Doublet_v.right_off_doublet soi_n_fss
;;

(** {9 Skeleton_context_context_databox} *)

let skeleton_context_databox_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_context_databox_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_context_databox_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_context_databox_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_context_databox_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_context_databox_symbol_off_skeleton_symbol des_pre
;;

let skeleton_context_databox_name_off_sole_index soi_any =
  let soi_ldb = skeleton_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_databox_symbol_off_sole_index soi_ldb in
  Skeleton_context_databox_symbol_v.name sym_ldb
;;

let skeleton_context_databox_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_databox_symbol_off_sole_index soi_ldb in
  Skeleton_context_databox_symbol_v.string_off sym_ldb
;;

let skeleton_context_databox_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_context_databox_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_databox_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_context} *)

let skeleton_context_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_context_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_context_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_context_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_context_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_context_symbol_off_skeleton_symbol des_pre
;;

let skeleton_context_name_off_sole_index soi_any =
  let soi_ldb = skeleton_context_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_symbol_off_sole_index soi_ldb in
  Skeleton_context_symbol_v.name sym_ldb
;;

let skeleton_context_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_context_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_symbol_off_sole_index soi_ldb in
  Skeleton_context_symbol_v.string_off sym_ldb
;;

let skeleton_context_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_context_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_aopefset_anycenter} *)

let skeleton_body_centered_aopefset_anycenter_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_aopefset_anycenter_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_anycenter_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_aopefset_anycenter_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_aopefset_anycenter_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_anycenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_anycenter_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_anycenter_symbol_v.name sym_ldb
;;

let skeleton_body_centered_aopefset_anycenter_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_anycenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_anycenter_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_anycenter_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_aopefset_anycenter_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_anycenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_anycenter_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_aopefset_onecenter} *)

let skeleton_body_centered_aopefset_onecenter_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_aopefset_onecenter_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_onecenter_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_aopefset_onecenter_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_aopefset_onecenter_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_onecenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_onecenter_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_onecenter_symbol_v.name sym_ldb
;;

let skeleton_body_centered_aopefset_onecenter_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_onecenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_onecenter_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_onecenter_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_aopefset_onecenter_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_onecenter_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_onecenter_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_aopefset_shellordinal} *)

let skeleton_body_centered_aopefset_shellordinal_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_aopefset_shellordinal_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellordinal_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_aopefset_shellordinal_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_aopefset_shellordinal_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellordinal_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellordinal_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_shellordinal_symbol_v.name sym_ldb
;;

let skeleton_body_centered_aopefset_shellordinal_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellordinal_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellordinal_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_shellordinal_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_aopefset_shellordinal_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellordinal_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellordinal_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_aopefset_shellsymmetry} *)

let skeleton_body_centered_aopefset_shellsymmetry_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_aopefset_shellsymmetry_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellsymmetry_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_aopefset_shellsymmetry_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_aopefset_shellsymmetry_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellsymmetry_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellsymmetry_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_shellsymmetry_symbol_v.name sym_ldb
;;

let skeleton_body_centered_aopefset_shellsymmetry_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellsymmetry_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellsymmetry_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_shellsymmetry_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_aopefset_shellsymmetry_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_shellsymmetry_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_shellsymmetry_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_aopefset} *)

let skeleton_body_centered_aopefset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_aopefset_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_aopefset_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_aopefset_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_aopefset_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_aopefset_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_symbol_v.name sym_ldb
;;

let skeleton_body_centered_aopefset_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_aopefset_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_aopefset_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_aopefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_aopefset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered_ecppefset} *)

let skeleton_body_centered_ecppefset_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_ecppefset_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_ecppefset_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_ecppefset_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_ecppefset_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_ecppefset_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_ecppefset_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_ecppefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_ecppefset_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_ecppefset_symbol_v.name sym_ldb
;;

let skeleton_body_centered_ecppefset_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_ecppefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_ecppefset_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_ecppefset_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_ecppefset_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_ecppefset_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_ecppefset_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_centered} *)

let skeleton_body_centered_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_centered_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_centered_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_centered_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_centered_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_centered_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_symbol_v.name sym_ldb
;;

let skeleton_body_centered_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_symbol_off_sole_index soi_ldb in
  Skeleton_body_centered_symbol_v.string_off sym_ldb
;;

let skeleton_body_centered_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_centered_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body_periodic} *)

let skeleton_body_periodic_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_periodic_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_periodic_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_periodic_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_periodic_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_periodic_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_periodic_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_periodic_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_periodic_symbol_off_sole_index soi_ldb in
  Skeleton_body_periodic_symbol_v.name sym_ldb
;;

let skeleton_body_periodic_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_periodic_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_periodic_symbol_off_sole_index soi_ldb in
  Skeleton_body_periodic_symbol_v.string_off sym_ldb
;;

let skeleton_body_periodic_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_periodic_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_periodic_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_body} *)

let skeleton_body_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_body_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_body_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_body_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_body_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_body_symbol_off_skeleton_symbol des_pre
;;

let skeleton_body_name_off_sole_index soi_any =
  let soi_ldb = skeleton_body_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_symbol_off_sole_index soi_ldb in
  Skeleton_body_symbol_v.name sym_ldb
;;

let skeleton_body_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_body_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_symbol_off_sole_index soi_ldb in
  Skeleton_body_symbol_v.string_off sym_ldb
;;

let skeleton_body_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_body_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_body_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_context_database} *)

let skeleton_context_database_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_context_database_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_context_database_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_context_database_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_context_database_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_context_database_symbol_off_skeleton_symbol des_pre
;;

let skeleton_context_database_name_off_sole_index soi_any =
  let soi_ldb = skeleton_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_database_symbol_off_sole_index soi_ldb in
  Skeleton_context_database_symbol_v.name sym_ldb
;;

let skeleton_context_database_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_database_symbol_off_sole_index soi_ldb in
  Skeleton_context_database_symbol_v.string_off sym_ldb
;;

let skeleton_context_database_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_context_database_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_database_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_context_domain} *)

let skeleton_context_domain_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_context_domain_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_context_domain_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_context_domain_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_context_domain_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_context_domain_symbol_off_skeleton_symbol des_pre
;;

let skeleton_context_domain_name_off_sole_index soi_any =
  let soi_ldb = skeleton_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_domain_symbol_off_sole_index soi_ldb in
  Skeleton_context_domain_symbol_v.name sym_ldb
;;

let skeleton_context_domain_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_domain_symbol_off_sole_index soi_ldb in
  Skeleton_context_domain_symbol_v.string_off sym_ldb
;;

let skeleton_context_domain_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_context_domain_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_context_domain_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_fence_centered_aopef} *)

let skeleton_fence_centered_aopef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_fence_centered_aopef_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_fence_centered_aopef_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_aopef_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_fence_centered_aopef_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_fence_centered_aopef_symbol_off_skeleton_symbol des_pre
;;

let skeleton_fence_centered_aopef_name_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_aopef_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_aopef_symbol_v.name sym_ldb
;;

let skeleton_fence_centered_aopef_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_aopef_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_aopef_symbol_v.string_off sym_ldb
;;

let skeleton_fence_centered_aopef_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_aopef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_aopef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_fence_centered_ecppef} *)

let skeleton_fence_centered_ecppef_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_fence_centered_ecppef_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_fence_centered_ecppef_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_ecppef_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_fence_centered_ecppef_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_fence_centered_ecppef_symbol_off_skeleton_symbol des_pre
;;

let skeleton_fence_centered_ecppef_name_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_ecppef_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_ecppef_symbol_v.name sym_ldb
;;

let skeleton_fence_centered_ecppef_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_ecppef_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_ecppef_symbol_v.string_off sym_ldb
;;

let skeleton_fence_centered_ecppef_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_ecppef_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_ecppef_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_fence_centered} *)

let skeleton_fence_centered_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_fence_centered_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_fence_centered_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_fence_centered_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_fence_centered_symbol_off_skeleton_symbol des_pre
;;

let skeleton_fence_centered_name_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_symbol_v.name sym_ldb
;;

let skeleton_fence_centered_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_symbol_off_sole_index soi_ldb in
  Skeleton_fence_centered_symbol_v.string_off sym_ldb
;;

let skeleton_fence_centered_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_centered_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_centered_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(** {9 Skeleton_context_fence} *)

let skeleton_fence_sole_index_off_sole_index soi_any =
  sole_index_of_string_predicate_off_sole_index 
    "is_skeleton_fence_symbol_off_skeleton_symbol"
    soi_any
;;

let skeleton_fence_symbol_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_sole_index_off_sole_index soi_any in
  let des_pre = 
    skeleton_symbol_of_string_predicate_off_sole_index 
      "is_skeleton_fence_symbol_off_skeleton_symbol"
      soi_ldb
  in
  Skeleton_symbol_v.skeleton_fence_symbol_off_skeleton_symbol des_pre
;;

let skeleton_fence_name_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_symbol_off_sole_index soi_ldb in
  Skeleton_fence_symbol_v.name sym_ldb
;;

let skeleton_fence_string_off_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_symbol_off_sole_index soi_ldb in
  Skeleton_fence_symbol_v.string_off sym_ldb
;;

let skeleton_fence_tag_off_sole_index soi_any =
  let soi_ldb = skeleton_fence_sole_index_off_sole_index soi_any in
  let sym_ldb = skeleton_fence_symbol_off_sole_index soi_ldb in
  Tag_v.make sym_ldb soi_ldb
;;

(* done with do_extractor.sh on jeudi 9 juin 2016, 11:42:14 (UTC+0200) *)
