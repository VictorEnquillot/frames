(** {3 Camlline_datastructure_camltype_duo_symbol_v}  *)

(** {6 Typing} *)

let name = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_list ->
      "lpar_a_b_tag_rpar"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree ->
      "lpar_a_b_tag_rpar_capped_tree"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar ->
      "lpar_a_b_tag_rpar"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet ->
      "lpar_a_b_tag_rpar_doublet"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_list ->
      "lpar_a_b_tag_rpar_doublet_list"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_tree ->
      "lpar_a_b_tag_rpar_doublet_tree"
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed ->
      "lpar_a_b_tag_rpar_tree_leafed"
  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure ->
      "pipe_a_b_datastructure_of_a_b_datastructure"
  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_constructor_of_a_b_doublet ->
      "pipe_constructor_of_a_b_doublet"
;;

let longname sym_cdc = 
  "Camlline_datastructure_camltype_duo_symbol_t." ^ (String.capitalize (name sym_cdc));;

let string_off sym_cdc = "";;

(** {6 Abbreviating} *)

let lpar_a_b_tag_rpar = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar;;
let lpar_a_b_tag_rpar_capped_list = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_list;; 
let lpar_a_b_tag_rpar_capped_tree = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree;;
let lpar_a_b_tag_rpar_doublet = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet;;
let lpar_a_b_tag_rpar_doublet_list = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_list;;
let lpar_a_b_tag_rpar_doublet_tree = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_tree;;
let lpar_a_b_tag_rpar_tree_leafed = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed;;
let lpar_a_b_tag_rpar_tree_leafed = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed;;
let pipe_a_b_datastructure_of_a_b_datastructure = Camlline_datastructure_camltype_duo_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure;;
let pipe_constructor_of_a_b_doublet = Camlline_datastructure_camltype_duo_symbol_t.Pipe_constructor_of_a_b_doublet;;


(** {6 Extracting} *)

let is_lpar_a_b_tag_rpar_capped_list = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_list -> true
  | _ -> false
;;

let is_lpar_a_b_tag_rpar_capped_tree = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree -> true
  | _ -> false
;;

let is_lpar_a_b_tag_rpar = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar -> true
  | _ -> false
;;

let is_pipe_constructor_of_a_b_doublet = function
  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_constructor_of_a_b_doublet -> true
  | _ -> false
;;

let is_pipe_constructor_of_a_b_c_triplet = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_list -> true
  | _ -> false
;;
	    
let is_pipe_constructor_of_a_list = function
  | Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed -> true
  | _ -> false
;;

let is_pipe_constructor_of_a_tree = function
  | Camlline_datastructure_camltype_duo_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure -> true
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

let lpar_a_b_tag_rpar_capped_tree = Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree;;


(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [ 
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_list;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_capped_tree;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_list;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_doublet_tree;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed;
    Camlline_datastructure_camltype_duo_symbol_t.Pipe_constructor_of_a_b_doublet;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar_tree_leafed;
    Camlline_datastructure_camltype_duo_symbol_t.Lpar_A_B_tag_rpar;
    Camlline_datastructure_camltype_duo_symbol_t.Pipe_A_b_datastructure_of_a_b_datastructure;
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


