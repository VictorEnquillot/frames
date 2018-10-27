(** {3 Box_nameoffile_by_box_name_n_base_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Box_nameoffile_by_box_name_n_base_name_provider_v";
   "Needs : CONS:Check_is_base_name_by_name_provider_v";
   "Needs : CONS:Check_is_box_name_by_name_provider_v";
   "Needs : CONS:Box_nameoffile_list_by_unit_provider_v";
   "Example : \"point_a.db1\" \"cc_pvtz.nwc\" \"cc_pvtz.g9x\"";
   "Author : François Colonna 07 octobre 2016 at 13:12:59+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (nam_box, nam_bas) =
  Check_is_base_name_by_name_provider_v.provide nam_bas;
  Check_is_box_name_by_name_provider_v.provide nam_box;

  let ext_bas = String_v.substring nam_bas 0 3 in 
  let nof_box = nam_box ^ "." ^ ext_bas in
  let nof_box_l = Box_nameoffile_list_by_unit_provider_v.provide () in
  try List_v.only_element_of_predicate_off_list (fun n -> n = nof_box) nof_box_l 
  with Failure _ -> 
    Error_messages_v.print_fatal_error nam_mod "build"
      (Format.sprintf "Nameoffile >%s< were a Box Nameoffile" nof_box)
      (Format.sprintf "Box Nameoffile list is :@.       %s"
	 (List_v.name_in_column (fun s->s) nof_box_l)
      )
      "Check case"
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
(* done with do_provider_without_register.sh Box_nameoffile_by_box_name_n_base_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:41 (UTC+0200) *)
