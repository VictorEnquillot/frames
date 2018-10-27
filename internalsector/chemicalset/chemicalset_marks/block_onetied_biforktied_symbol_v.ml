(** {3 The functionalities for a Symbol for a Block_onetied_biforktied.} *)

let nam_cod = "block_onetied_biforktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_onetied_biforktied_symbol_t.Block_single_singlesingle_symbol sym_bss ->
      Block_single_singlesingle_symbol_v.name sym_bss
  | Block_onetied_biforktied_symbol_t.Block_single_singledouble_symbol sym_bss ->
      Block_single_singledouble_symbol_v.name sym_bss
;;


(** {6 Upgrading} *)


let block_onetied_biforktied_symbol_of_block_single_singlesingle_symbol sym_bss = 
  Block_onetied_biforktied_symbol_t.Block_single_singlesingle_symbol sym_bss
;;

let block_onetied_biforktied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_bss = Block_single_singlesingle_symbol_v.block_single_singlesingle_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    block_onetied_biforktied_symbol_of_block_single_singlesingle_symbol sym_bss
;;

let block_onetied_biforktied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_bss = Block_single_singlesingle_symbol_v.block_single_singlesingle_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_onetied_biforktied_symbol_of_block_single_singlesingle_symbol sym_bss
;;

let block_onetied_biforktied_symbol_of_block_single_singledouble_symbol sym_bss = 
  Block_onetied_biforktied_symbol_t.Block_single_singledouble_symbol sym_bss
;;

let block_onetied_biforktied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_bss = Block_single_singledouble_symbol_v.block_single_singledouble_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    block_onetied_biforktied_symbol_of_block_single_singledouble_symbol sym_bss
;;


(** {6 Abbreviating} *)


let s_n_ss = block_onetied_biforktied_symbol_of_block_single_singlesingle_symbol Block_single_singlesingle_symbol_v.s_n_ss;;

let s_c_sd = block_onetied_biforktied_symbol_of_block_single_singledouble_symbol Block_single_singledouble_symbol_v.s_c_sd;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol = function
  | Block_onetied_biforktied_symbol_t.Block_single_singlesingle_symbol sym_bss -> sym_bss
  | sym_b1b -> Error_messages_v.print_fatal_error
      nam_cod "block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol"
      "Block_single_singlesingle_symbol"
      (name sym_b1b) "check"
;;

let block_single_singlesingle_ax3_symbol_off_block_onetied_biforktied_symbol sym_b1b = 
  let sym_bss = block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
    Block_single_singlesingle_symbol_v.block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol sym_bss
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_biforktied_symbol sym_b1b = 
  let sym_bss = block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
    Block_single_singlesingle_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_symbol sym_bss
;;

let block_single_singledouble_symbol_off_block_onetied_biforktied_symbol = function
  | Block_onetied_biforktied_symbol_t.Block_single_singledouble_symbol sym_bss -> sym_bss
  | sym_b1b -> Error_messages_v.print_fatal_error
      nam_cod "block_single_singledouble_symbol_off_block_onetied_biforktied_symbol"
      "Block_single_singledouble_symbol"
      (name sym_b1b) "check"
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_biforktied_symbol sym_b1b = 
  let sym_bss = block_single_singledouble_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
    Block_single_singledouble_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_single_singledouble_symbol sym_bss
;;


(** {6 Querying} *)


let is_block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol = function
  | Block_onetied_biforktied_symbol_t.Block_single_singlesingle_symbol _ -> true
  | _ -> false
;;

let is_block_single_singlesingle_ax3_symbol_off_block_onetied_biforktied_symbol sym_b1b =
  if not (is_block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b)
  then false
  else
    begin
     let sym_bss = block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
     Block_single_singlesingle_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_single_singlesingle_symbol sym_bss
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_biforktied_symbol sym_b1b =
  if not (is_block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b)
  then false
  else
    begin
     let sym_bss = block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
     Block_single_singlesingle_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_single_singlesingle_symbol sym_bss
    end
;;

let is_block_single_singledouble_symbol_off_block_onetied_biforktied_symbol = function
  | Block_onetied_biforktied_symbol_t.Block_single_singledouble_symbol _ -> true
  | _ -> false
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_biforktied_symbol sym_b1b =
  if not (is_block_single_singledouble_symbol_off_block_onetied_biforktied_symbol sym_b1b)
  then false
  else
    begin
     let sym_bss = block_single_singledouble_symbol_off_block_onetied_biforktied_symbol sym_b1b in 
     Block_single_singledouble_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_single_singledouble_symbol sym_bss
    end
;;


(** created by ./generator block_onetied_biforktied implementation symbol at 15:3 13 Mar 2012. *)



