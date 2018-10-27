(** {3 Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_string_off_list_by_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v";
   "Needs : ";
   "Needs : ";
   "Needed-by :"; 
   "What-is-it : the list of Elementary String_off translated from Nwchem_body_node_aoset_numerical_values String_ff";
   "How-is-it-done : by extracting each five elements :";
   "How-is-it-done : (nam_center nam_shell shell_ordinal ao_kind ao_ordinal)";
   "How-is-it-done : by skipping ao_kind (gaussian, slater, ...)";
   "How-is-it-done : by transforming shell_ordinal as nwchem_shell_ordinal - first_int_ordinal_of_shell_symmetry";
  ]
;;

(*    Elementary_body_parameter_tuple   Nwchem_body_node_aoset_numerical_values        *)
(*           String_off                                   String_off                   *)                       
(*           "ne p 3 1"               <=              "ne p 5 gaussian 1"              *)

let center_name_of_nwchem_string_off sof_nwc_anv =
  Scanf.sscanf sof_nwc_anv "%s %s %i %s %i" (fun s t i v j -> s) 
;;

let quadruplet_of_nwchem_string_off sof_nwc_anv =
  Scanf.sscanf sof_nwc_anv "%s %s %i %s %i" (fun s t i v j -> (s, t, i, j) )
;;

let quadruplet_of_elementary_string_off sof_ele_anv =
  Scanf.sscanf sof_ele_anv "%s %s %i %i" (fun s t i j -> (s, t, i, j) )
;;

let new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem sof_nwc_pre sof_ele_pre sof_nwc_cur =

  let (pre_cen, pre_she, pre_ord_nwc, pre_iao) = quadruplet_of_nwchem_string_off sof_nwc_pre in
  let (pre_cen, pre_she, pre_ord_ele, _) = quadruplet_of_elementary_string_off sof_ele_pre in
  let (cur_cen, cur_she, cur_ord_nwc, cur_iao) = quadruplet_of_nwchem_string_off sof_nwc_cur in
  
  let new_ord_ele =
    if cur_she = pre_she
    then 
      begin
	if pre_ord_nwc = cur_ord_nwc
	then pre_ord_ele
	else pre_ord_ele + 1
      end
    else (Shell_symmetry_v.first_int_ordinal_of_shell_symmetry_name cur_she)
  in

  Format.sprintf "%s %s %i %i" cur_cen cur_she new_ord_ele cur_iao
;;

let elementary_string_off_list_of_nwchem_string_off_list sof_nwc_anv_l =

  let rec apply sof_nwc_pre sof_ele_pre acc = function
    | [] -> acc
    | sof_nwc_cur :: tl ->
  
	let sof_ele = 
	  new_elementary_string_off_of_previous_nwchem_of_previous_elementary_of_current_newchem
	    sof_nwc_pre 
	    sof_ele_pre 
	    sof_nwc_cur
	in  

	apply sof_nwc_cur sof_ele (sof_ele::acc) tl  
    in
    
    List.rev (apply "ne s 0 gaussian 0" "ne s 0 0" [] sof_nwc_anv_l)
;;

let build sof_nwc_anv_l =
  elementary_string_off_list_of_nwchem_string_off_list sof_nwc_anv_l
;;

let build_n_store sof_nwc_anv_l =
  build sof_nwc_anv_l 
;;

let translate_without_trace sof_nwc_anv_l =
  build sof_nwc_anv_l
;;

let translate_with_trace sof_nwc_anv_l =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = translate_without_trace sof_nwc_anv_l in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let translate sof_nwc_anv_l =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace sof_nwc_anv_l
  else translate_without_trace sof_nwc_anv_l
;;


