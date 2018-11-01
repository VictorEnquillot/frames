(** {3 The Functionalities for a Symbol for a Camlline_datastructure_camltype.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

let name = function
  | Camlline_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar ->
      "lpar_a_tag_rpar"
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_list ->
      "A_tag_tdot_a_tag_list"
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_tree ->
      "A_tag_tdot_a_tag_tree"
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_trio ->
      "a_tag_tdot_a_tag_trio"
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_singlet ->
      "a_tag_tdot_a_tag_singlet"
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_list ->
      "pipe_constructor_of_a_list"
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_tree ->
      "pipe_constructor_of_a_tree"
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_singlet ->
      "pipe_constructor_of_a_singlet"
;;

let longname sym_cdc = 
  "Camlline_datastructure_camltype_uno_symbol_t." ^ (String.capitalize_ascii (name sym_cdc));;

let string_off sym_cdc = "";;

(** {6 Abbreviating} *)

let lpar_a_tag_rpar = Camlline_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar;;
let a_tag_tdot_a_tag_list = Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_list;;
let a_tag_tdot_a_tag_singlet = Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_singlet;;
let a_tag_tdot_a_tag_tree = Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_tree;;
let a_tag_tdot_a_tag_trio = Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_trio;;
let pipe_constructor_of_a_list = Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_list;;
let pipe_constructor_of_a_singlet = Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_singlet;;
let pipe_constructor_of_a_tree = Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_tree;;

(** {6 Extracting} *)

let is_a_tag_tdot_a_tag_duo = function
  | Camlline_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar -> true
  | _ -> false
;;

let is_pipe_constructor_of_a_singlet = function
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_singlet -> true
  | _ -> false
;;

let is_A_tag_tdot_a_tag_list = function
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_list -> true
  | _ -> false
;;

let is_A_tag_tdot_a_tag_tree = function
  | Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_tree -> true
  | _ -> false
;;
	    
let is_pipe_constructor_of_a_list = function
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_list -> true
  | _ -> false
;;

let is_pipe_constructor_of_a_tree = function
  | Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_tree -> true
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

let lpar_a_tag_rpar = Camlline_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar;;
let a_tag_tdot_a_tag_trio = Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_trio;;


(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [ 
    Camlline_datastructure_camltype_uno_symbol_t.Lpar_a_tag_rpar;
    Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_list;
    Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_singlet;
    Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_tree;
    Camlline_datastructure_camltype_uno_symbol_t.A_tag_tdot_a_tag_trio;
    Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_list;
    Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_singlet;
    Camlline_datastructure_camltype_uno_symbol_t.Pipe_constructor_of_a_tree;
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


