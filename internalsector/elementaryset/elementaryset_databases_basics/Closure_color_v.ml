(** {3 Closure_color_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Closure_color_v";
   "Needs : VELE:Readee_v";
   "Needed-by :";
   "What-is-it : Closure_color type is a list of Elementary_fence_color_symbol";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name clo =
  List_v.name Elementary_fence_color_symbol_v.name clo
;;

let string_off clo =
  List_v.name Elementary_fence_color_symbol_v.string_off clo
;;

let longname clo =
  List_v.name Elementary_fence_color_symbol_v.longname clo
;;

let fullname clo =
  List_v.name Elementary_fence_color_symbol_v.fullname clo
;;

(** {6 Making} *)

let make nam =
  let sym_eco = Elementary_fence_color_symbol_v.make nam "" in
  [sym_eco]
;;

let elementary_fence_color_symbol_list_off_closure_color clo =
  clo
;;

let elementary_fence_color_symbol_off_closure_color clo =
  List_v.element_off_one_element_list clo
;;
