(** {3 Camlline_datastructure_camltype_trio_symbol_v.}  *)

(** {6 Typing} *)

let name = function
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped ->
      "lpar_a_b_c_tag_rpar"
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_leafed_capped ->
      "lpar_a_b_c_tag_rpar_tree_leafed_capped"
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet ->
      "lpar_a_b_c_tag_rpar_triplet"
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet_list ->
      "lpar_a_b_c_tag_rpar_triplet_list"
;;

let longname sym_cdc = 
  "Camlline_datastructure_camltype_trio_symbol_t." ^ (String.capitalize (name sym_cdc));;

let string_off sym_cdc = "";;

(** {6 Abbreviating} *)

let lpar_a_b_c_tag_rpar = Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped;;
let lpar_a_b_c_tag_rpar_tree_leafed_capped = Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_leafed_capped;;
let lpar_a_b_c_tag_rpar_triplet = Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet;;
let lpar_a_b_c_tag_rpar_triplet_list = Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet_list;;

(** {6 Extracting} *)

let is_lpar_a_b_c_tag_rpar_tree_footed_capped = function
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_tree_leafed_capped = function
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_leafed_capped -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_triplet = function
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_triplet_list = function
  | Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet_list -> true
  | _ -> false
;;

(** {6 Querying} *)

let is_camlline_datastructure_camltype_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_camltype_symbol _ -> true
  | _ -> false
;;

let is_camlline_datastructure_function_symbol_off_camlline_datastructure_symbol = function
  | Camlline_datastructure_symbol_t.Camlline_datastructure_function_symbol _ -> true
  | _ -> false
;;

let pipe_a_b_datastructure_of_a_b_datastructure = Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped;;


(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [ 
    Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_footed_capped;
    Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_tree_leafed_capped;
    Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet;
    Camlline_datastructure_camltype_trio_symbol_t.Lpar_A_B_C_tag_rpar_triplet_list;
  ]
;;

(** {6 Indexing} *)

let list_index_of_camlline_datastructure_camltype_symbol sym_cdc =
  let str = string_off sym_cdc in
  1 + (List_v.index_of_element_of_list sym_cdc (symbol_list str))
;;

let hash_index_of_camlline_datastructure_camltype_symbol sym_cdc =
  let str = string_off sym_cdc in
  Hashtbl.hash str
;;


