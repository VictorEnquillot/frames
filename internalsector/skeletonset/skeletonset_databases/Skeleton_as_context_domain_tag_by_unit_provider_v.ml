(** {3 Skeleton_as_context_domain_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_as_context_domain_tag_by_unit_provider_v";
   "Needs: CON:Global_domainset_sole_index_by_domain_name_provider_v";
   "Needs: SSKE:Skeleton_symbol_v";
   "Needed-by :"; 
   "What-is-it : Skeleton_tag as Skeleton_context_domain_tag from Context";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nam_dom = String.lowercase (String_v.first_word_of_char_off_string '_' __FILE__ ) in
  let soi_dom = Global_domainset_sole_index_by_domain_name_provider_v.provide nam_dom in
  let sym_ske_dom = Skeleton_symbol_v.skeleton_context_domain_constructor nam_dom in
  Tag_v.make sym_ske_dom soi_dom 
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Skeleton_as_context_domain_tag_by_unit_provider_v.ml on jeudi 19 mai 2016, 18:29:51 (UTC+0200) *)
