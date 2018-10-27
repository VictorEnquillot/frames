(** {3 The functionalities for a Symbol for a Block_none_triple.} *)

let nam_cod = "block_none_triple_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_triple_symbol_t.Block_none_triple_ax2_symbol sym_nta ->
      Block_none_triple_ax2_symbol_v.name sym_nta
;;


(** {6 Upgrading} *)


let block_none_triple_symbol_of_block_none_triple_ax2_symbol sym_nta = 
  Block_none_triple_symbol_t.Block_none_triple_ax2_symbol sym_nta
;;

let block_none_triple_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal = 
  let sym_nta = Block_none_triple_ax2_symbol_v.block_none_triple_ax2_symbol_of_block_none_triple_ax2e0_linear_symbol sym_tal in
    block_none_triple_symbol_of_block_none_triple_ax2_symbol sym_nta
;;


(** {6 Abbreviating} *)


let z_ch_t = block_none_triple_symbol_of_block_none_triple_ax2_symbol Block_none_triple_ax2_symbol_v.z_ch_t;;


(** {6 Making} *)


let make s = function
  | "z_ch_t" -> z_ch_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_triple_ax2_symbol_off_block_none_triple_symbol = function
  | Block_none_triple_symbol_t.Block_none_triple_ax2_symbol sym_nta -> sym_nta
;;

let block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol sym_bnt = 
  let sym_nta = block_none_triple_ax2_symbol_off_block_none_triple_symbol sym_bnt in 
    Block_none_triple_ax2_symbol_v.block_none_triple_ax2e0_linear_symbol_off_block_none_triple_ax2_symbol sym_nta
;;


(** {6 Querying} *)


let is_block_none_triple_ax2_symbol_off_block_none_triple_symbol = function
  | Block_none_triple_symbol_t.Block_none_triple_ax2_symbol _ -> true
;;

let is_block_none_triple_ax2e0_linear_symbol_off_block_none_triple_symbol sym_bnt =
  if not (is_block_none_triple_ax2_symbol_off_block_none_triple_symbol sym_bnt)
  then false
  else
    begin
     let sym_nta = block_none_triple_ax2_symbol_off_block_none_triple_symbol sym_bnt in 
     Block_none_triple_ax2_symbol_v.is_block_none_triple_ax2e0_linear_symbol_off_block_none_triple_ax2_symbol sym_nta
    end
;;


(** created by ./generator block_none_triple implementation symbol at 15:5 13 Mar 2012. *)



