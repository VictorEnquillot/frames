(** {3 The Symbol for a Camlline_datastructure_function.}  *)

(** {6 Naming} *)

let name = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_map_equal_Das_vdot_map ->            (* let map = Doublet_v.map;; *)
      "let_map_equal_das_vdot_map"

  | Camlline_datastructure_function_iterating_symbol_t.Let_map2_equal_Das_vdot_map2 ->          (* let map2 = Doublet_v.map2;; *)
      "let_map2_equal_das_vdot_map2"

  | Camlline_datastructure_function_iterating_symbol_t.Let_iter_equal_Das_vdot_iter ->          (* let iter = Doublet_v.iter;; *)
      "let_iter_equal_das_vdot_iter"

  | Camlline_datastructure_function_iterating_symbol_t.Let_iter2_equal_Das_vdot_iter2 ->        (* let iter2 = Doublet_v.iter2;; *)
      "let_iter2_equal_das_vdot_iter2"
;;

let longname sym_cdf = 
  Format.sprintf "Entity_external_datastructure_symbol_t.%s" 
    (String.capitalize (name sym_cdf))
;;

let string_off = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_map_equal_Das_vdot_map  -> ""         (* let map = Doublet_v.map;; *)
  | Camlline_datastructure_function_iterating_symbol_t.Let_map2_equal_Das_vdot_map2 -> ""        (* let map2 = Doublet_v.map2;; *)
  | Camlline_datastructure_function_iterating_symbol_t.Let_iter_equal_Das_vdot_iter -> ""        (* let iter = Doublet_v.iter;; *)
  | Camlline_datastructure_function_iterating_symbol_t.Let_iter2_equal_Das_vdot_iter2 -> ""      (* let iter2 = Doublet_v.iter2;; *)
;;

let fullname sym_cdf =
  Format.sprintf "%s \"%s\"" (longname sym_cdf) (string_off sym_cdf)
;;

(** {6 Abbreviating} *)

let let_map_equal_das_vdot_map = Camlline_datastructure_function_iterating_symbol_t.Let_map_equal_Das_vdot_map;;
let let_map2_equal_das_vdot_map2 = Camlline_datastructure_function_iterating_symbol_t.Let_map2_equal_Das_vdot_map2;;
let let_iter_equal_das_vdot_iter = Camlline_datastructure_function_iterating_symbol_t.Let_iter_equal_Das_vdot_iter;;
let let_iter2_equal_das_vdot_iter2 = Camlline_datastructure_function_iterating_symbol_t.Let_iter2_equal_Das_vdot_iter2;;

(** {6 Querying} *)

let is_let_map_equal_das_vdot_map = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_map_equal_Das_vdot_map _ -> true
  | _ -> false
;;

let is_let_map2_equal_das_vdot_map2 = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_map2_equal_Das_vdot_map2 _ -> true
  | _ -> false
;;

let is_let_iter_equal_das_vdot_iter = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_iter_equal_Das_vdot_iter _ -> true
  | _ -> false
;;

let is_let_iter2_equal_das_vdot_iter2 = function
  | Camlline_datastructure_function_iterating_symbol_t.Let_iter2_equal_Das_vdot_iter2 _ -> true
  | _ -> false
;;


(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [
   Camlline_datastructure_function_iterating_symbol_t.Let_map_equal_Das_vdot_map;
   Camlline_datastructure_function_iterating_symbol_t.Let_map2_equal_Das_vdot_map2;
   Camlline_datastructure_function_iterating_symbol_t.Let_iter_equal_Das_vdot_iter;
   Camlline_datastructure_function_iterating_symbol_t.Let_iter2_equal_Das_vdot_iter2;
 ]
;;

(** {6 Indexing} *)

let list_index_of_camlline_datastructure_function_iterating_symbol sym_cdf =
  let str = string_off sym_cdf in
  1 + (List_v.index_of_element_of_list sym_cdf (symbol_list str))
;;

let hash_index_of_camlline_datastructure_function_iterating_symbol sym_cdf =
  let str = string_off sym_cdf in
  Hashtbl.hash str
;;
