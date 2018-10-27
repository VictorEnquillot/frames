(** {3 The functionalities for a Symbol for a Block_onetied_endtied.} *)

let nam_cod = "block_onetied_endtied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_onetied_endtied_symbol_t.Block_onetied_zerotied -> "block_onetied_zerotied"
  | Block_onetied_endtied_symbol_t.Block_onetied_forktied_symbol sym_b1f ->
      Block_onetied_forktied_symbol_v.name sym_b1f
;;


(** {6 Upgrading} *)


let block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  Block_onetied_endtied_symbol_t.Block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_symbol sym_bss in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singlesingle_trigonalpyramidal_symbol sym_sst = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_trigonalpyramidal_symbol sym_sst in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_symbol sym_bss in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singledouble_trigonalplanar_symbol sym_sst = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_trigonalplanar_symbol sym_sst in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_endtied_symbol_of_block_single_singlesinglesingle_tetrahedral_symbol sym_sst = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_tetrahedral_symbol sym_sst in
    block_onetied_endtied_symbol_of_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Abbreviating} *)


let block_onetied_zerotied = Block_onetied_endtied_symbol_t.Block_onetied_zerotied;;

let s_n_ss = block_onetied_endtied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_n_ss;;

let s_c_sd = block_onetied_endtied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sd;;

let s_c_sss = block_onetied_endtied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sss;;

let s_nhp1_sss = block_onetied_endtied_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_nhp1_sss;;


(** {6 Making} *)


let make = function
  | "block_onetied_zerotied" -> block_onetied_zerotied
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_onetied_forktied_symbol_off_block_onetied_endtied_symbol = function
  | Block_onetied_endtied_symbol_t.Block_onetied_forktied_symbol sym_b1f -> sym_b1f
  | sym_b1e -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_forktied_symbol_off_block_onetied_endtied_symbol"
      "Block_onetied_forktied_symbol"
      (name sym_b1e) "check"
;;

let block_onetied_biforktied_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_trigonalpyramidal_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_trigonalplanar_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_triforktied_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_tetrahedral_symbol_off_block_onetied_endtied_symbol sym_b1e = 
  let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Querying} *)


let is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol = function
  | Block_onetied_endtied_symbol_t.Block_onetied_forktied_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_biforktied_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_trigonalpyramidal_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_trigonalplanar_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_onetied_triforktied_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_tetrahedral_symbol_off_block_onetied_endtied_symbol sym_b1e =
  if not (is_block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_block_onetied_endtied_symbol sym_b1e in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;


(** created by ./generator block_onetied_endtied implementation symbol at 16:40 23 Feb 2012. *)



