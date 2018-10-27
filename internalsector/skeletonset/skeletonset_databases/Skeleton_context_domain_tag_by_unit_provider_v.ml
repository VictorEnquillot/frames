(** {3 Skeleton_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_context_domain_tag_by_unit_provider_v";
   "Needs : DSKE:Skeleton_as_context_domain_tag_by_unit_provider_v";
   "Needed-by :"; 
   "What-is-it : Skeleton_context_domain_tag from Unit (__FILE__)";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let tag_ske_dom = Skeleton_as_context_domain_tag_by_unit_provider_v.provide () in
  Tag_v.map_entity Skeleton_symbol_v.skeleton_context_domain_symbol_off_skeleton_symbol tag_ske_dom
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_context_domain_tag_by_unit_provider_v.ml on jeudi 19 mai 2016, 18:29:51 (UTC+0200) *)
