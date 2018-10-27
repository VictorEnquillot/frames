(** {3 The functionalities for a Symbol for a Block_zerotied_quadriforktied.} *)

let nam_cod = "block_zerotied_quadriforktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_zerotied_quadriforktied_symbol_t.Block_none_singlesinglesinglesingle_symbol sym_bns ->
      Block_none_singlesinglesinglesingle_symbol_v.name sym_bns
;;


(** {6 Upgrading} *)


let block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_symbol sym_bns = 
  Block_zerotied_quadriforktied_symbol_t.Block_none_singlesinglesinglesingle_symbol sym_bns
;;

let block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_tetrahedral_symbol sym_nst = 
  let sym_bns = Block_none_singlesinglesinglesingle_symbol_v.block_none_singlesinglesinglesingle_symbol_of_block_none_singlesinglesinglesingle_tetrahedral_symbol sym_nst in
    block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_symbol sym_bns
;;


(** {6 Abbreviating} *)


let n_c_ssss = block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_symbol Block_none_singlesinglesinglesingle_symbol_v.n_c_ssss;;

let n_np4_ssss = block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_symbol Block_none_singlesinglesinglesingle_symbol_v.n_np4_ssss;;


(** {6 Making} *)


let make = function
  | "n_c_ssss" -> n_c_ssss
  | "n_np4_ssss" -> n_np4_ssss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol = function
  | Block_zerotied_quadriforktied_symbol_t.Block_none_singlesinglesinglesingle_symbol sym_bns -> sym_bns
;;

let block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q = 
  let sym_bns = block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q in 
    Block_none_singlesinglesinglesingle_symbol_v.block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_none_singlesinglesinglesingle_symbol sym_bns
;;


(** {6 Querying} *)


let is_block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol = function
  | Block_zerotied_quadriforktied_symbol_t.Block_none_singlesinglesinglesingle_symbol _ -> true
;;

let is_block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q =
  if not (is_block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q)
  then false
  else
    begin
     let sym_bns = block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q in 
     Block_none_singlesinglesinglesingle_symbol_v.is_block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_none_singlesinglesinglesingle_symbol sym_bns
    end
;;


(** created by ./generator block_zerotied_quadriforktied implementation symbol at 14:23 25 Feb 2012. *)



