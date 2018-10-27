(** {3 Property_tag_by_basicname_n_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_by_basicname_n_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_symbol_by_basicname_provider_v"; 
   "Needed-by :"; 
   "What-is-it : the Property Tag for any Basicname if any";
   "Author : François Colonna 29 mai 2017 at 08:30:01+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna, bna_ibo, bna_iba) =
  let nam_fun = "build" in
  
  let sym_pro = Property_symbol_by_basicname_provider_v.provide bna in
  
  let tag_pro_l =
    Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba)
  in
  
  try List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> s = sym_pro)
      tag_pro_l
  with 
  | Failure "Not_only_element:List_v.only_element_of_predicate_off_list" ->
      let tag_pro_l = List.filter (fun (s, i) -> s = sym_pro) tag_pro_l in
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Basicname %s defined a UNIQUE Property Tag" (Basicname_v.fullname bna))
	(Format.sprintf "list of suitable Tags is:@.    %s"
	   (List_v.name_in_column Property_tag_v.fullname tag_pro_l)
	)
	"Check"
  | Failure _ ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Basicname %s defined SOME Property Tag" (Basicname_v.fullname bna))
	"NO such Tag"
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
(* done with do_provider_without_register.sh Basicname_inputbox_by_property_context_inputbox_tag_provider_v.ml force on mardi 15 novembre 2016, 16:37:09 (UTC+0100) *)
