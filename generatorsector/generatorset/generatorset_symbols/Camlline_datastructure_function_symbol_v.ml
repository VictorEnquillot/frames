(** {3 The Symbol for a Camlline_datastructure_function.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

let name = function
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol sym_cfm ->
      Camlline_datastructure_function_make_symbol_v.name sym_cfm
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_name_symbol sym_cfn ->
      Camlline_datastructure_function_name_symbol_v.name sym_cfn
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_iterating_symbol sym_cfn ->
      Camlline_datastructure_function_iterating_symbol_v.name sym_cfn
;;

let longname sym_cdf = 
  "Camlline_datastructure_function_symbol_t." ^ (String.capitalize (name sym_cdf))
;;

let string_off sym_cdf = "";;

(** {6 Upgrading} *)

let camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol sym_cfm =
  Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol sym_cfm
;;

let camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol sym_cfn =
  Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_name_symbol sym_cfn
;;

let camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol sym_cfn =
  Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_iterating_symbol sym_cfn
;;

(** {6 Extracting} *)

let camlline_datastructure_function_make_symbol_off_camlline_datastructure_function_symbol = function
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_make_symbol sym_cfm -> sym_cfm
  | _ -> failwith "Not_Camlline_datastructure_function_make_symbol:Camlline_datastructure_function_symbol_v.ml:camlline_datastructure_function_make_symbol_off_camlline_datastructure_function_symbol"
;;

let camlline_datastructure_function_name_symbol_off_camlline_datastructure_function_symbol = function
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_name_symbol sym_cfn -> sym_cfn
  | _ -> failwith "Not_Camlline_datastructure_function_name_symbol:Camlline_datastructure_function_symbol_v.ml:camlline_datastructure_function_name_symbol_off_camlline_datastructure_function_symbol"
;;

let camlline_datastructure_function_iterating_symbol_off_camlline_datastructure_function_symbol = function
  | Camlline_datastructure_function_symbol_t.Camlline_datastructure_function_iterating_symbol sym_cfn -> sym_cfn
  | _ -> failwith "Not_Camlline_datastructure_function_iterating_symbol:Camlline_datastructure_function_symbol_v.ml:camlline_datastructure_function_iterating_symbol_off_camlline_datastructure_function_symbol"
;;

(** {6 Abbreviating} *)

let das_vdot_make_tag_a s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol (Camlline_datastructure_function_make_symbol_v.das_vdot_make_tag_a s);;
let das_vdot_make_tag_a_tag_b s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol (Camlline_datastructure_function_make_symbol_v.das_vdot_make_tag_a_tag_b s);;
let das_vdot_make_tag_a_tag_b_tag_c s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol (Camlline_datastructure_function_make_symbol_v.das_vdot_make_tag_a_tag_b_tag_c s);;

let das_vdot_name_nam_a_for_at s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol (Camlline_datastructure_function_name_symbol_v.das_vdot_name_nam_a_for_at s);;
let das_vdot_name_nam_a_nam_b_for_at s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol (Camlline_datastructure_function_name_symbol_v.das_vdot_name_nam_a_nam_b_for_at s);;
let das_vdot_name_nam_a_nam_b_nam_c_for_at s = camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol (Camlline_datastructure_function_name_symbol_v.das_vdot_name_nam_a_nam_b_nam_c_for_at s);;

let let_map_equal_das_vdot_map = camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol Camlline_datastructure_function_iterating_symbol_v.let_map_equal_das_vdot_map;;
let let_map2_equal_das_vdot_map2 = camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol Camlline_datastructure_function_iterating_symbol_v.let_map2_equal_das_vdot_map2;;
let let_iter_equal_das_vdot_iter = camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol Camlline_datastructure_function_iterating_symbol_v.let_iter_equal_das_vdot_iter;;
let let_iter2_equal_das_vdot_iter2 = camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol Camlline_datastructure_function_iterating_symbol_v.let_iter2_equal_das_vdot_iter2;;

(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  let sym_cfm_l = Camlline_datastructure_function_make_symbol_v.symbol_list str in
  let sym_cfn_l = Camlline_datastructure_function_name_symbol_v.symbol_list str in
  let sym_cfi_l = Camlline_datastructure_function_iterating_symbol_v.symbol_list str in
  (List.map camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol sym_cfm_l)
@
  (List.map camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol sym_cfn_l)
@
  (List.map camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol sym_cfi_l)
;;


(** {6 Indexing} *)

let list_index_of_camlline_datastructure_function_symbol sym_cdf =
  let str = string_off sym_cdf in
  1 + (List_v.index_of_element_of_list sym_cdf (symbol_list str))
;;

let hash_index_of_camlline_datastructure_function_symbol sym_cdf =
  let str = string_off sym_cdf in
  Hashtbl.hash str
;;
