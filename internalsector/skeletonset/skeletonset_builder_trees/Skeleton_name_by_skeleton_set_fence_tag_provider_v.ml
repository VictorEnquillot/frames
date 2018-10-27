(** {3 Skeleton_name_by_skeleton_set_fence_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VFIG:Skeleton_name_by_skeleton_set_fence_tag_provider_v";
   "Needs : DFIG:Skeleton_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : DFIG:Skeleton_son_tag_list_by_skeleton_father_tag_provider_v";
   "What-is-it : the Name of the Current Skeleton";
   "How-is-it-done : by getting the String_off the Son of the Skeleton_context_databox_tag";
   "Author : François Colonna 10 janvier 2017 at 17:01:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Build *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_fsf =
  let soi_fsf = Tag_v.sole_index_off_tag tag_fsf in
  let tag_dbo = 
    Skeleton_context_databox_tag_by_any_sole_index_provider_v.provide
      soi_fsf
  in
  let tag_fig_dbo = 
    Skeleton_context_databox_tag_v.skeleton_tag_of_skeleton_context_databox_tag 
      tag_dbo
  in
  let tag_fig_son_l = 
    Skeleton_son_tag_list_by_skeleton_father_tag_provider_v.provide 
      tag_fig_dbo
  in   
  
  let tag_fig_son =
    try List_v.element_off_one_element_list tag_fig_son_l 
    with Failure "Several_elements:List_v.element_off_one_element_list" ->
      Error_messages_v.print_fatal_error nam_mod "build"
	"List has only ONE element"
	(Format.sprintf "String_off List is :@.  %s" 
	   (List_v.name_in_column 
	      (fun t -> (Skeleton_tag_v.name t) ^ " \"" ^ (Skeleton_tag_v.string_off t) ^ "\"") 
	      tag_fig_son_l)
	)
	"Check"
  in

  Skeleton_tag_v.string_off tag_fig_son
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
(* done with do_provider_without_register.sh Skeleton_name_by_skeleton_set_fence_tag_provider_v.ml  on mardi 10 janvier 2017, 17:29:32 (UTC+0100) *)
