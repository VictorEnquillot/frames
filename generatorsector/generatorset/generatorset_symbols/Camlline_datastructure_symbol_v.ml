(** {3 The Symbol for a Camlline Datastructure.}  *)

(** {6 Aliasing} *)


(** {6 Naming} *)

let name = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym ->
      Camlline_datastructure_camltype_symbol_v.name sym

  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym ->
      Camlline_datastructure_function_symbol_v.name sym
;;

let longname = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym ->
      Camlline_datastructure_camltype_symbol_v.longname sym

  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym ->
      Camlline_datastructure_function_symbol_v.longname sym
;;

let string_off = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym ->
      Camlline_datastructure_camltype_symbol_v.string_off sym

  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym ->
      Camlline_datastructure_function_symbol_v.string_off sym
;;

let fullname sym_cds =
  Format.sprintf "%s \"%s\"" (longname sym_cds) (string_off sym_cds)
;;

(** {6 Upgrading} *)

let camlline_datastructure_symbol_of_camlline_datastructure_camltype_symbol sym_cdc =
  Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym_cdc
;;

let camlline_datastructure_symbol_of_camlline_datastructure_function_symbol sym_cdf =
  Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym_cdf
;;

let camlline_datastructure_symbol_of_camlline_datastructure_function_make_symbol sym_cfm =
  let sym_cdf =
    Camlline_datastructure_function_symbol_v.camlline_datastructure_function_symbol_of_camlline_datastructure_function_make_symbol sym_cfm
  in
  camlline_datastructure_symbol_of_camlline_datastructure_function_symbol sym_cdf 
;;

let camlline_datastructure_symbol_of_camlline_datastructure_function_name_symbol sym_cfn =
  let sym_cdf =
    Camlline_datastructure_function_symbol_v.camlline_datastructure_function_symbol_of_camlline_datastructure_function_name_symbol sym_cfn
  in
  camlline_datastructure_symbol_of_camlline_datastructure_function_symbol sym_cdf 
;;

let camlline_datastructure_symbol_of_camlline_datastructure_function_iterating_symbol sym_cfi =
  let sym_cdf =
    Camlline_datastructure_function_symbol_v.camlline_datastructure_function_symbol_of_camlline_datastructure_function_iterating_symbol sym_cfi
  in
  camlline_datastructure_symbol_of_camlline_datastructure_function_symbol sym_cdf 
;;

(** {6 Abbreviating} *)

let lpar_a_tag_rpar s = camlline_datastructure_symbol_of_camlline_datastructure_camltype_symbol (Camlline_datastructure_camltype_symbol_v.lpar_a_tag_rpar s);;

let lpar_a_b_tag_rpar s = camlline_datastructure_symbol_of_camlline_datastructure_camltype_symbol (Camlline_datastructure_camltype_symbol_v.lpar_a_b_tag_rpar s);;

let lpar_a_b_c_tag_rpar s = camlline_datastructure_symbol_of_camlline_datastructure_camltype_symbol (Camlline_datastructure_camltype_symbol_v.lpar_a_b_c_tag_rpar s);;

let das_vdot_make_tag_a s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_make_tag_a s);;
let das_vdot_make_tag_a_tag_b s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_make_tag_a_tag_b s);;
let das_vdot_make_tag_a_tag_b_tag_c s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_make_tag_a_tag_b_tag_c s);;

let das_vdot_name_nam_a_for_at s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_name_nam_a_for_at s);;
let das_vdot_name_nam_a_nam_b_for_at s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_name_nam_a_nam_b_for_at s);;
let das_vdot_name_nam_a_nam_b_nam_c_for_at s = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol (Camlline_datastructure_function_symbol_v.das_vdot_name_nam_a_nam_b_nam_c_for_at s);;

let let_map_equal_das_vdot_map = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol Camlline_datastructure_function_symbol_v.let_map_equal_das_vdot_map;;
let let_map2_equal_das_vdot_map2 = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol Camlline_datastructure_function_symbol_v.let_map2_equal_das_vdot_map2;;
let let_iter_equal_das_vdot_iter = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol Camlline_datastructure_function_symbol_v.let_iter_equal_das_vdot_iter;;
let let_iter2_equal_das_vdot_iter2 = camlline_datastructure_symbol_of_camlline_datastructure_function_symbol Camlline_datastructure_function_symbol_v.let_iter2_equal_das_vdot_iter2;;


(** {6 Extracting} *)

let camlline_datastructure_camltype_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol sym_cdc -> sym_cdc
  | _ -> failwith "Not_Camlline_datastructure_camltype_symbol:camlline_datstructure_symbol_v.ml:camlline_datastructure_camltype_symbol_off_camlline_datastructure_symbol"
;;

let camlline_datastructure_function_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol sym_cdf -> sym_cdf
  | _ -> failwith "Not_Camlline_datastructure_function_symbol:camlline_datstructure_symbol_v.ml:camlline_datastructure_function_symbol_off_camlline_datastructure_symbol"
;;

let camlline_datastructure_function_make_symbol_off_camlline_datastructure_symbol sym_cld =
  let sym_cdf = camlline_datastructure_function_symbol_off_camlline_datastructure_symbol sym_cld in
  Camlline_datastructure_function_symbol_v.camlline_datastructure_function_make_symbol_off_camlline_datastructure_function_symbol sym_cdf
;;

(** {6 Querying_topsons} *)

let is_camlline_datastructure_camltype_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol _ -> true
  | _ -> false
;;

let is_camlline_datastructure_function_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol _ -> true
  | _ -> false
;;

(** {6 Querying_grandsons} *)

(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  let sym_cdc_l = Camlline_datastructure_camltype_symbol_v.symbol_list str in
  let sym_cdf_l = Camlline_datastructure_function_symbol_v.symbol_list str in
  
  (List.map camlline_datastructure_symbol_of_camlline_datastructure_camltype_symbol sym_cdc_l)
  @
    (List.map camlline_datastructure_symbol_of_camlline_datastructure_function_symbol sym_cdf_l)
;;

(** {6 Indexing} *)

let list_index_of_camlline_datastructure_symbol sym_cld =
  let str = string_off sym_cld in
  1 + (List_v.index_of_element_of_list sym_cld (symbol_list str))
;;

let hash_index_of_camlline_datastructure_symbol sym_cld =
  let str = string_off sym_cld in
  Hashtbl.hash str
;;


