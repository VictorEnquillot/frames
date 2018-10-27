(** {3 Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_variable_type_string_list_by_localinput_set_body_list_variable_type_tag_provider_v";
   "Needs : VARLOI:Localinput_tag_subtree_by_localinput_tag_provider_v";
   "Needs : SINP:Localinput_symbol_v";
   "Needed-by :"; 
   "What-is-it : the string argument (provided by list_variable_type) for the make function for any entity";
   "How-is-it-done : by concatenating all string_off defined in List_variable_type subtree";
   "Example : type [ \"property\" \"target\" \"explicit\" \"created\" \"constructor\" ]";
   "Example : gives \"property_target_explicit_created_constructor\"";
   "Improve : use Symbol tree";
   "Author : François Colonna 28 février 2017 at 09:47:48+01:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lvt =
  let tag_loi_lvt = (* Coerce Up *)
    Localinput_set_body_list_variable_type_tag_v.localinput_tag_of_localinput_set_body_list_variable_type_tag 
      tag_lvt 
  in

  let tag_loi_lvt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_lvt in

  let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor s in

  let tag_loi_bwl_l = 
    Tree_v.node_list_of_node_predicate_off_tree  
      pre_tag_bwl 
      tag_loi_lvt_st 
  in

  List.map Localinput_tag_v.string_off tag_loi_bwl_l
;; 

let build_n_store tag_lvt =
  build tag_lvt 
;;

(** {6 Providing} *)

let provide_without_trace tag_lvt =
  build_n_store tag_lvt
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
