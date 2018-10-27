(** {3 Skeleton_symbol_from_nwchem_tag_translations_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Skeleton_symbol_from_nwchem_tag_translations_v";
   "Author : François Colonna 12h April 2016 corrected onecenter -> anycenter";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

let tag_nwchem_all_list_of_databox_name nam_dbo =
  let nam_fun = "tag_nwchem_all_list_of_databox_name" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_nbo = 
    Nwchem_context_databox_tag_by_databox_name_provider_v.provide 
      nam_dbo 
  in

  let tag_nwc_l = 
    Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide 
      tag_nbo 
  in 

  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  tag_nwc_l
;;

let son_skeleton_symbol_list_of_skeleton_as_context_databox_symbol sym_ske_sbo =
  let nam_fun = "son_skeleton_symbol_list_of_skeleton_as_context_databox_symbol" in

  Management_v.debug_what_string "sym_ske_sbo" nam_mod nam_fun (Skeleton_symbol_v.fullname sym_ske_sbo);

  let nam_dbo = Skeleton_symbol_v.string_off sym_ske_sbo in
  [
   Skeleton_symbol_v.skeleton_body_centered_aopefset_anycenter_constructor nam_dbo;
   Skeleton_symbol_v.skeleton_body_centered_ecppefset_constructor nam_dbo;
 ]
;;

let nwchem_center_block_string_off_list_of_tag_nwchem_all_list tag_nwc_l =
  let tag_nwc_any_cen = List.find
      (fun (s, i) -> 
	(Nwchem_symbol_v.is_nwchem_body_node_aoset_anycenter_block s)
      )
      tag_nwc_l
  in
  let tag_nwc_cen_l = Son_nwchem_tag_list_by_father_nwchem_tag_provider_v.provide tag_nwc_any_cen in
  
  List.map Nwchem_tag_v.string_off tag_nwc_cen_l 
;;

let skeleton_as_center_symbol_list_of_tag_nwchem_all_list tag_nwc_l =
  let nam_fun = "skeleton_as_center_symbol_list_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let sof_nwc_cen_l = nwchem_center_block_string_off_list_of_tag_nwchem_all_list tag_nwc_l in
  let sof_ske_cen_l = List.map String.lowercase sof_nwc_cen_l in
  let result = List.map 
    Skeleton_symbol_v.skeleton_body_centered_aopefset_onecenter_constructor 
    sof_ske_cen_l
  in

  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchem_all_list nam_cen tag_nwc_l =
  let nam_fun = "nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let tag_nwc_any_she = try List_v.only_element_of_predicate_off_list
      (fun (s, i) -> 
	(Nwchem_symbol_v.is_nwchem_body_node_aoset_anyshell_block s)
	  && 
	(String.lowercase (Nwchem_symbol_v.string_off s) = nam_cen)
      )
      tag_nwc_l
  with Failure _ ->
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "Nwchem_body_node_aoset_anyshell_block_symbol \"%s\" exists in Nwchem_tag_all_list"
	 nam_cen
      )
      (Format.sprintf "Nwchem Tag list is:@  %s" 
	 (List_v.name_in_column Nwchem_tag_v.fullname tag_nwc_l)
      )
      "Check"

  in

  let tag_nwc_she_l = 
    Son_nwchem_tag_list_by_father_nwchem_tag_provider_v.provide
      tag_nwc_any_she 
  in

  let result = List.map Nwchem_tag_v.string_off tag_nwc_she_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l =
  let nam_fun = "nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list" in 
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nam_cen = Skeleton_symbol_v.string_off sym_ske_cen in
  let sof_nwc_she_l = 
    nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchem_all_list 
      nam_cen 
      tag_nwc_l 
  in
  let s_l = List.map String_v.second_word_off_string sof_nwc_she_l in

  let result = List_v.right_once_list_off_list s_l in    
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l =
  let nam_fun = "shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let she_sym_nwc_l = 
    nwchem_shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list
      sym_ske_cen 
      tag_nwc_l
  in
  let result = List.map String.lowercase she_sym_nwc_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let skeleton_as_shell_symmetry_string_off_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l
 =
  let nam_fun = "skeleton_as_shell_symmetry_string_off_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nam_cen = Skeleton_symbol_v.string_off sym_ske_cen in
  let she_sym_l = shell_symmetry_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l in

  let result = List.map (Format.sprintf "%s %s" nam_cen) she_sym_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
    
;;

let skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list sym_ske_cen tag_nwc_l =
  let nam_fun = "skeleton_as_shell_symmetry_symbol_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let sof_ske_ssy_l = 
    skeleton_as_shell_symmetry_string_off_list_of_skeleton_as_center_symbol_of_tag_nwchem_all_list
      sym_ske_cen 
      tag_nwc_l
  in
  let result = List.map 
      Skeleton_symbol_v.skeleton_body_centered_aopefset_shellsymmetry_constructor 
    sof_ske_ssy_l
  in 
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l =
  let nam_fun = "nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nwc_sof_she_l = 
    nwchem_shell_block_string_off_list_of_center_name_of_tag_nwchem_all_list 
      nam_cen 
      tag_nwc_l 
  in

  let nam_cns = Format.sprintf "%s %s" nam_cen nam_ssy in
  let result = List.filter 
    (fun s -> 
      (List_v.is_substring_of_string_of_string 
	 (String.lowercase nam_cns)
	 (String.lowercase s)
      )
    ) nwc_sof_she_l
  in

  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l =
  let nam_fun = "skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nwc_sof_ssy_l = 
    nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list
      nam_cen 
      nam_ssy 
      tag_nwc_l
  in
  
  let count = List.length nwc_sof_ssy_l in
  
  let fir_ior = Shell_symmetry_v.first_int_ordinal_of_shell_symmetry_name nam_ssy in
  let ord_l = List_v.int_list_of_first_of_length fir_ior count in
  
  let result = List.map (Format.sprintf "%s %s %i" nam_cen nam_ssy) ord_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let skeleton_as_shell_ordinal_symbol_list_of_skeleton_as_one_shell_symmetry_symbol_of_tag_nwchem_all_list sym_ske_ssy tag_nwc_l =
  let nam_fun = "skeleton_as_shell_ordinal_symbol_list_of_skeleton_as_one_shell_symmetry_symbol_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  Management_v.debug_what_string "sym_ske_ssy" nam_mod nam_fun (Skeleton_symbol_v.fullname sym_ske_ssy); 

  let sof_ssy = Skeleton_symbol_v.string_off sym_ske_ssy in
  let nam_cen = String_v.first_word_off_string sof_ssy in
  let nam_ssy = String_v.second_word_off_string sof_ssy in

  let ske_sof_ssy_l = 
    skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list 
      nam_cen 
      nam_ssy 
      tag_nwc_l
  in
  let result = List.map 
      Skeleton_symbol_v.skeleton_body_centered_aopefset_shellordinal_constructor 
      ske_sof_ssy_l
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list nam_cen nam_ssy tag_nwc_l = 
 let nwc_sof_ssy_l = 
   nwchem_shell_block_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list 
     nam_cen 
     nam_ssy 
     tag_nwc_l
 in
 let ske_sof_ssy_l = 
   skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list 
     nam_cen 
     nam_ssy 
     tag_nwc_l
 in

 Duo_list_v.make nwc_sof_ssy_l ske_sof_ssy_l
;;
 
let nwchem_numerical_value_string_off_list_of_shell_ordinal_string_off_of_tag_nwchem_all_list sof_sso tag_nwc_l =
  let nam_fun = "nwchem_numerical_value_string_off_list_of_shell_ordinal_string_off_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in

  let nam_cen = String_v.first_word_off_string sof_sso in
  let nam_ssy = String_v.second_word_off_string sof_sso in
  
  let nwc_n_ske_sof_l = 
    nwchem_shell_string_off_n_skeleton_shell_ordinal_string_off_list_of_center_name_of_shell_symmetry_name_of_tag_nwchem_all_list 
      nam_cen 
      nam_ssy
      tag_nwc_l
  in
  let sof_nwc = try 
    Duo_list_v.left_of_right_off_duo_list sof_sso nwc_n_ske_sof_l 
  with Failure _ ->
    Error_messages_v.print_fatal_error nam_mod nam_fun 
      (Format.sprintf "Skeleton_shell_ordinal_string_off >%s< were defined in Duo_list right side" sof_sso)
      (Format.sprintf "Duo_list is :@.    %s"
	 (Duo_list_v.name (fun s->s) nwc_n_ske_sof_l)
      )
      "Check. May be Skeleton_shell_ordinal_string_off is not valid"
  in

  let tag_nwc_nvb = try List.find 
      (fun (s, i) -> 
	(Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values_block s)
	  && 
	(Nwchem_symbol_v.string_off s = sof_nwc)
      )
      tag_nwc_l

  with Not_found ->
    Error_messages_v.print_fatal_error nam_mod nam_fun 
      (Format.sprintf "Skeleton_shell_ordinal_string_off >%s< were defined in Tag_nwchem_all_list" sof_sso)
      "it is NOT"
      "Add it"
  in
  let tag_nwc_nva_l = Son_nwchem_tag_list_by_father_nwchem_tag_provider_v.provide tag_nwc_nvb in

  let result = List.map (fun s -> Nwchem_tag_v.string_off s) tag_nwc_nva_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

let skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol_of_tag_nwchem_all_list sym_ske_sso tag_nwc_l =
  let nam_fun = "skeleton_as_aopef_symbol_list_of_skeleton_as_one_shell_ordinal_symbol_of_tag_nwchem_all_list" in
  let pre_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  
  Management_v.debug_what_string "sym_ske_sso" nam_mod nam_fun (Skeleton_symbol_v.fullname sym_ske_sso); 

  let sof_sso = Skeleton_symbol_v.string_off sym_ske_sso in

  let nwc_sof_nva_l = 
    nwchem_numerical_value_string_off_list_of_shell_ordinal_string_off_of_tag_nwchem_all_list 
      sof_sso 
      tag_nwc_l
  in
  let count = List.length nwc_sof_nva_l in
  let ord_l = List_v.int_list_of_first_of_length 1 count in

  let sof_l = List.map (Format.sprintf "%s %i" sof_sso) ord_l in

  let result = List.map Skeleton_symbol_v.skeleton_fence_centered_aopef_constructor sof_l in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pre_cpu nam_mod nam_fun;
  result
;;

(* done by hand on mercredi 20 avril 2016, 17:07:06 (UTC+0200) *)
