(** {3 Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_body_box_type_string_list_by_localinput_set_body_box_type_tag_provider_v";
   "Needs : VARLOI:Localinput_tag_subtree_by_localinput_tag_provider_v";
   "Needs : SINP:Localinput_symbol_v";
   "Needed-by :"; 
   "What-is-it : the string argument (provided by box_type) for the make function for any entity";
   "How-is-it-done : by concatenating all string_off defined in Box_type subtree";
   "Example : type [ \"property\" \"target\" \"explicit\" \"created\" \"constructor\" ]";
   "Example : gives \"property_target_explicit_created_constructor\"";
   "Improve : use Symbol tree";
 ]
;;

 
 
 
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_bbt =
  let tag_loi_bbt = (* Coerce Up *)
    Localinput_set_body_box_type_tag_v.localinput_tag_of_localinput_set_body_box_type_tag 
      tag_bbt 
  in

  let tag_loi_bbt_st = Localinput_tag_subtree_by_localinput_tag_provider_v.provide tag_loi_bbt in

  let pre_tag_bwl (s, i) = Localinput_symbol_v.is_localinput_set_fence_basic_word_lowercase_constructor s in

  let tag_loi_bwl_l = 
    Tree_v.node_list_of_node_predicate_off_tree  
      pre_tag_bwl 
      tag_loi_bbt_st 
  in

  List.map Localinput_tag_v.string_off tag_loi_bwl_l
;; 

let build_n_store tag_bbt =
  build tag_bbt 
;;

(** {6 Providing} *)

let provide_without_trace tag_bbt =
  build_n_store tag_bbt
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
