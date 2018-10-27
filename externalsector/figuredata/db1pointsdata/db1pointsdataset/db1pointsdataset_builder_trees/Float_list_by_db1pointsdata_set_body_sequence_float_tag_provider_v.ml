(** {3 Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v";
   "Needs : BDB1:Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v";
   "Author : François Colonna 26 décembre 2016 at 16:23:52+01:00";
   "Author : François Colonna 03 juin 2017 at 12:09:31+02:00 Not_a_float";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_dsf =
  let tag_db1_dsf =
    Db1pointsdata_set_body_sequence_float_tag_v.db1pointsdata_tag_of_db1pointsdata_set_body_sequence_float_tag
      tag_dsf
  in
  
  let tag_db1_nff_l = 
    Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_provider_v.provide 
      tag_db1_dsf 
  in
  
  let str_flo_l = List.map Db1pointsdata_tag_v.string_off tag_db1_nff_l in

  List.map 
    (fun s ->
      try
	String_v.float_of_string s
      with Failure "Not_a_float" -> 
	Error_messages_v.print_fatal_error __LOC__ "build"
	  "String were a float" 
	  s
	  "Check Database file"
    )
    str_flo_l
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
