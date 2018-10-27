(** {3 The functionalities for a Symbol for a Block_none_singledouble.} *)

let nam_cod = "block_none_singledouble_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singledouble_symbol_t.Block_none_singledouble_trigonalplanar_symbol sym_nst ->
      Block_none_singledouble_trigonalplanar_symbol_v.name sym_nst
;;


(** {6 Upgrading} *)


let block_none_singledouble_symbol_of_block_none_singledouble_trigonalplanar_symbol sym_nst = 
  Block_none_singledouble_symbol_t.Block_none_singledouble_trigonalplanar_symbol sym_nst
;;


(** {6 Abbreviating} *)


let n_ch_sd = block_none_singledouble_symbol_of_block_none_singledouble_trigonalplanar_symbol Block_none_singledouble_trigonalplanar_symbol_v.n_ch_sd;;


(** {6 Making} *)


let make = function
  | "n_ch_sd" -> n_ch_sd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singledouble_trigonalplanar_symbol_off_block_none_singledouble_symbol = function
  | Block_none_singledouble_symbol_t.Block_none_singledouble_trigonalplanar_symbol sym_nst -> sym_nst
;;


(** {6 Querying} *)


let is_block_none_singledouble_trigonalplanar_symbol_off_block_none_singledouble_symbol = function
  | Block_none_singledouble_symbol_t.Block_none_singledouble_trigonalplanar_symbol _ -> true
;;


(** created by ./generator block_none_singledouble implementation symbol at 14:23 25 Feb 2012. *)



