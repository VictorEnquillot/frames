(** {3 Property_operand_body_target_measured_value_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : FPRO:Property_operand_body_target_measured_value_v";
   "Needs : CPRO:Property_operand_body_target_measured_container_v";
   "Needs : VARLOI:Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : IPRO:Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : VPRO:Measure_by_basicname_operation_n_measured_float_tuple_list_provider_v";
   "Needed-by : ";
   "What-is-it : the length of a Segment (a Bipoint)";
   "To-be-done : the length of a Circle, Ellipse";
   "To-be-done : the surface of a Triangle, Sphere, Ellipsoïd";
   "To-be-done : the volume of a Pyramid, Sphere, Ellipsoïd";
   "How-is-it-done : by applying an Operator_set_body_creation_tomeasure";
   "How-is-it-done : through a Property_operator_fence_creation_tomeasure";
   "How-is-it-done : on a Figure_tag";
   "How-is-it-done : through a Property_operand_fence_external";
   "Author : François Colonna 20 mars 2017 at 10:26:19+01:00";
   "Author : François Colonna 11 mai 2017 at 11:29:03+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* Tree :                 target_body_implicit_tounit                          *)
(* Tree :                 /                  \                                 *)
(* Tree :  operator_fence_tounit_print        \                                *)
(* Tree :                                      \                               *)
(* Tree :  -------------------------------------\----------------------------- *)
(* Tree :                           operand_body_target_measured               *)
(* Tree :                                   (ptm Len_bc)                       *)
(* Tree :                                  /            \                      *)
(* Tree :           operator_fence_creation_tomeasure   operand_fence_external *)
(* Tree :                     (Ope_len)                       (Seg_bc)         *)
(* Tree :                                                                      *)
(* Tree :                     "length"                  measure_tuple_list     *)
(* Tree :  -------------------------------------|----------------------------- *)
(* Tree :                                       v                              *)
(* Tree :                     property_operand_body_target_measured_value_t    *)
(* Tree :                                  ( measure )                         *)      
           

let nam_mod = Management_v.current_module_name (documentation ());;

let value_of_tag tag_ptm =
  let soi_ptm = Tag_v.sole_index_off_tag tag_ptm in
  let bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptm in

(* Containee Operator *)
  let tag_pct = 
    Property_operand_body_target_measured_container_v.property_operator_fence_creation_tomeasure_tag_of_tag 
      tag_ptm 
  in

  let nam_var_ope = Property_operator_fence_creation_tomeasure_tag_v.string_off tag_pct in
  let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope in

(* Operation *)  
  let bna_opt = 
    Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in

(* Ondomain *)  
  let bna_ond = 
    Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in

(* Containee Operand *)
  let tag_pod = 
    Property_operand_body_target_measured_container_v.property_operand_tag_of_tag 
      tag_ptm 
  in
  
  let nam_var_pod = Property_operand_tag_v.string_off tag_pod in
  let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_pod in
  let bna_dom_ext = 
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

(* Measure *)
  if (Basicname_v.string_off bna_ond <> Basicname_v.string_off bna_dom_ext)
  then
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Ondomain name >%s< were equal to Context domain name >%s<" 
	 (Basicname_v.string_off bna_ond) (Basicname_v.string_off bna_dom_ext)
      )
      "They are NOT"
      "Check"
  else
    begin
(* Measured_float_tuple_list of Operand *)
      let mea_tl = 
	Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
          (bna_var_ext, bna_ibo)
      in
      
(* Calculation *)
      Measure_by_basicname_operation_n_measured_float_tuple_list_provider_v.provide 
	(bna_opt, mea_tl)
    end
;;
