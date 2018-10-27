(** {3 Measured_float_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Measured_float_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_v";
   "Needs : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needed-by : ";
   "What-is-it : the Measured_float_tuple_list obtained by applying operator on measured_float_tuple_list";
   "Example : the tanslated measure of a Point";
   "How-is-it-done : ";
   "Author : François Colonna 21 mai 2017 at 16:14:54+02:00";
   "Author : François Colonna 24 mai 2017 at 12:05:04+02:00 Coordinate_operation_measured_float_tuple_v corrected";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let path_from_external_to_target_of_tag_ptc tag_ptc =
  let tag_pro_ptc = 
    Property_operand_body_target_created_tag_v.property_tag_of_property_operand_body_target_created_tag 
      tag_ptc 
  in

  let tag_pro_ptc_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide 
      tag_pro_ptc 
  in

  let tag_pro_pfe = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> (Property_symbol_v.is_property_operand_fence_external_constructor s) )
    tag_pro_ptc_st
  in
  
  let tag_pat_pro_l = 
    Tree_v.path_list_of_node_off_tree 
      tag_pro_pfe 
      tag_pro_ptc_st
  in
  
    List.filter 
      (fun (s, i) -> 
	Property_symbol_v.is_property_operand_body_target_created_constructor s
      ) 
      tag_pat_pro_l
;;

(* Path from External up to Current *)
  (* let tag_pro_ptc_l =  *)
  (*   path_from_external_to_target_of_tag_ptc tag_ptc *)
  (* in   *)
  

(** {6 Building} *)
 
let build (bna_tar_opd, bna_var_ope, bna_ibo) =  
  let nam_fun = "build" in

  Basicname_v.check_is_basicname_target_operand_of_basicname bna_tar_opd;
  Basicname_v.check_is_basicname_variable_operator_of_basicname bna_var_ope;
  Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;

(* Operation *)
  let bna_opt =
    Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in

(* Ondomain *)
  (* let bna_ond = *)
  (*   Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide *)
  (*   (bna_var_ope, bna_ibo) *)
  (* in *)

  let nam_opt = Basicname_v.string_off bna_opt in
  match nam_opt with
  | "translation" ->

(* Cofactor_entity *)
      let bna_cof_ent =
	Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
	  (bna_var_ope, bna_ibo)
      in
      
      let mea_hom_cof_tl =
	Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v.provide
	  (bna_cof_ent, bna_ibo)
      in
      
(* Check case external or not  *)
      let bna_var_cof = Basicname_v.basicname_variable_of_basicname_cofactor_entity bna_cof_ent in
      let kin_var_cof = 
	Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
	  (bna_var_cof, bna_ibo)
      in
      begin
	match kin_var_cof with 
	| w when Localinput_set_fence_variable_kind_symbol_v.is_localinput_set_fence_variable_kind_entity_external_constructor w ->
	    
(* Measured_float_tuple_list of Operand *)
	    let bna_var_opd = Basicname_v.basicname_variable_of_basicname_target_operand bna_tar_opd in
	    let kin_var_opd = 
	      Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
		(bna_var_opd, bna_ibo)
	    in

	    begin
	      match kin_var_opd with 
	      | w when Localinput_set_fence_variable_kind_symbol_v.is_localinput_set_fence_variable_kind_entity_external_constructor w ->

		  let nam_tar_opd = Basicname_v.string_off bna_tar_opd in		  
		  let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_tar_opd in
		  
		  let mea_hom_opd_tl =
		    Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
		      (bna_var_ext, bna_ibo)
		  in
		  
		  Coordinate_operation_measured_float_tuple_v.translation mea_hom_opd_tl mea_hom_cof_tl

(*
  get recursively  mea_hom_opd_tl from previous calculation
  
 *)
	      | _ ->
		  Error_messages_v.print_fatal_error __LOC__ nam_fun
		    "Variable Kind were entity_external"
		    (Format.sprintf "Check Inputfile %s.loc" 
		       (Localinput_set_fence_variable_kind_symbol_v.fullname kin_var_opd)
		    )
		    (Format.sprintf "Check Inputfile %s.loc" (Basicname_v.string_off bna_ibo))
		    
	    end
	      
	| _ ->
	    Error_messages_v.print_fatal_error __LOC__ nam_fun
	      "Variable Kind were entity_external"
	      (Format.sprintf "Check Inputfile %s.loc" 
		 (Localinput_set_fence_variable_kind_symbol_v.fullname kin_var_cof)
	      )
	      (Format.sprintf "Check Inputfile %s.loc" (Basicname_v.string_off bna_ibo))
	      
      end
	
  | "homothety" ->
      
      Utilities_v.not_yet_implemented nam_mod nam_opt
	
  | _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Operation were a Measure i.e. one of translation | homothety"
	nam_opt
	"Check"
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Measure_by_basicname_operation_n_measured_float_tuple_list_provider_v.ml  on jeudi 27 avril 2017, 08:49:27 (UTC+0200) *)
