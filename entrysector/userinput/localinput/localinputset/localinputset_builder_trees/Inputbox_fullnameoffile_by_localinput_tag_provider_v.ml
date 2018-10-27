(** {3 Inputbox_fullnameoffile_by_localinput_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Inputbox_fullnameoffile_by_localinput_tag_provider_v";
   "Needs : BLOI:Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v";
   "Needs : BLOI:Inputbox_fullnameoffile_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needed-by : BLOI:";
   "Author : François Colonna 10 avril 2017 at 14:05:06+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_loi =
  let tag_lse =
    try Localinput_set_tag_v.localinput_set_tag_off_localinput_tag
	tag_loi
    with Failure _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	"Tag Argument were Localinput_as_set_tag"
	(Format.sprintf "%s" (Localinput_tag_v.fullname tag_loi))
	"Check"
  in
  let (bna_ibo, bna_iba) =
    Basicname_inputbox_n_basicname_inputbase_by_localinput_set_tag_provider_v.provide
      tag_lse 
  in 
    Inputbox_fullnameoffile_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba)
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
(* done with do_provider_without_register.sh Inputbox_fullnameoffile_by_localinput_tag_provider_v.ml  on lundi 10 avril 2017, 14:12:36 (UTC+0200) *)
