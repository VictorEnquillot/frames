(** {3 The Symbol for a Camlline_datastructure_function.}  *)

(** {6 Naming} *)

let name = function
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_for_at s ->
      "das_vdot_name_nam_a_for_at"     (* Ex.: Tree_v.name A_v.name t *)
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_for_at s ->
      "das_vdot_name_nam_a_nam_b_for_at"   (* Ex.: Dbt_v.name A_v.name B_v.name t *)
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_nam_c_for_at s ->
      "das_vdot_name_nam_a_nam_b_nam_c_for_at" (* Ex.: Trp_v.name A_v.name B_v.name C_v.name t *)
;;

let longname sym_cdf = 
  Format.sprintf "Entity_external_datastructure_symbol_t.%s" 
    (String.capitalize_ascii (name sym_cdf))
;;

let string_off = function
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_for_at s -> s
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_for_at s -> s
  | Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_nam_c_for_at s -> s
;;

let fullname sym_cdf =
  Format.sprintf "%s \"%s\"" (longname sym_cdf) (string_off sym_cdf)
;;

(** {6 Abbreviating} *)

let das_vdot_name_nam_a_for_at s = Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_for_at s;;
let das_vdot_name_nam_a_nam_b_for_at s = Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_for_at s;;
let das_vdot_name_nam_a_nam_b_nam_c_for_at s = Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_nam_c_for_at s;;

(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [
   Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_for_at str;
   Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_for_at str;
   Camlline_datastructure_function_name_symbol_t.Das_vdot_name_nam_a_nam_b_nam_c_for_at str;
 ]
;;

(** {6 Indexing} *)

let list_index_of_camlline_datastructure_function_name_symbol sym_cdf =
  let str = string_off sym_cdf in
  1 + (List_v.index_of_element_of_list sym_cdf (symbol_list str))
;;

let hash_index_of_camlline_datastructure_function_name_symbol sym_cdf =
  let str = string_off sym_cdf in
  Hashtbl.hash str
;;
