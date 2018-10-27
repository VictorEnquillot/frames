(** {3 Figure_field_fence_point_tag_list_by_figure_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DFIG:Figure_field_fence_point_tag_list_by_figure_tag_provider_v";
   "Needs : DFIG:Figure_tag_subtree_by_figure_tag_provider_v";
   "Needs : SFIG:Figure_symbol_v";
   "Needed-by :"; 
   "What-is-it : the Fence as Figure_field_fence_point_tag_list for any Figure_tag";
  ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_fig =
  let tag_fig_l = Figure_fence_by_figure_tag_provider_v.provide tag_fig in
  List.map 
    (fun (s, i) -> Figure_symbol_v.figure_field_fence_point_symbol_off_figure_symbol s)
    tag_fig_l
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Figure_field_fence_point_tag_list_by_figure_tag_provider_v.ml on jeudi 19 mai 2016, 18:35:58 (UTC+0200) *)
