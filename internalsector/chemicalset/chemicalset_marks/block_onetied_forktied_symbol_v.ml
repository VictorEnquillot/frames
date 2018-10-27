(** {3 The functionalities for a Symbol for a Block_onetied_forktied.} *)

let nam_cod = "block_onetied_forktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_onetied_forktied_symbol_t.Block_onetied_biforktied_symbol sym_b1b ->
      Block_onetied_biforktied_symbol_v.name sym_b1b
  | Block_onetied_forktied_symbol_t.Block_onetied_triforktied_symbol sym_b1t ->
      Block_onetied_triforktied_symbol_v.name sym_b1t
;;


(** {6 Upgrading} *)


let block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  Block_onetied_forktied_symbol_t.Block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_b1b = Block_onetied_biforktied_symbol_v.block_onetied_biforktied_symbol_of_block_single_singlesingle_symbol sym_bss in
    block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_b1b = Block_onetied_biforktied_symbol_v.block_onetied_biforktied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b1b = Block_onetied_biforktied_symbol_v.block_onetied_biforktied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_b1b = Block_onetied_biforktied_symbol_v.block_onetied_biforktied_symbol_of_block_single_singledouble_symbol sym_bss in
    block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b1b = Block_onetied_biforktied_symbol_v.block_onetied_biforktied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  Block_onetied_forktied_symbol_t.Block_onetied_triforktied_symbol sym_b1t
;;

let block_onetied_forktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_b1t = Block_onetied_triforktied_symbol_v.block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t
;;

let block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_b1t = Block_onetied_triforktied_symbol_v.block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t
;;

let block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_b1t = Block_onetied_triforktied_symbol_v.block_onetied_triforktied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t
;;


(** {6 Abbreviating} *)


let s_n_ss = block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol Block_onetied_biforktied_symbol_v.s_n_ss;;

let s_c_sd = block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol Block_onetied_biforktied_symbol_v.s_c_sd;;

let s_c_sss = block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol Block_onetied_triforktied_symbol_v.s_c_sss;;

let s_nhp1_sss = block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol Block_onetied_triforktied_symbol_v.s_nhp1_sss;;


(** {6 Making} *)


let make s = function
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


let block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol = function
  | Block_onetied_forktied_symbol_t.Block_onetied_biforktied_symbol sym_b1b -> sym_b1b
  | sym_b1f -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol"
      "Block_onetied_biforktied_symbol"
      (name sym_b1f) "check"
;;

let block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_biforktied_symbol_v.block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b
;;

let block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_biforktied_symbol_v.block_single_singlesingle_ax3_symbol_off_block_onetied_biforktied_symbol sym_b1b
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_biforktied_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_biforktied_symbol sym_b1b
;;

let block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_biforktied_symbol_v.block_single_singledouble_symbol_off_block_onetied_biforktied_symbol sym_b1b
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_biforktied_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_biforktied_symbol sym_b1b
;;

let block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol = function
  | Block_onetied_forktied_symbol_t.Block_onetied_triforktied_symbol sym_b1t -> sym_b1t
  | sym_b1f -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol"
      "Block_onetied_triforktied_symbol"
      (name sym_b1f) "check"
;;

let block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_triforktied_symbol_v.block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t
;;

let block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_triforktied_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_onetied_triforktied_symbol sym_b1t
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f = 
  let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
    Block_onetied_triforktied_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_triforktied_symbol sym_b1t
;;


(** {6 Querying} *)


let is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol = function
  | Block_onetied_forktied_symbol_t.Block_onetied_biforktied_symbol _ -> true
  | _ -> false
;;

let is_block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_biforktied_symbol_v.is_block_single_singlesingle_symbol_off_block_onetied_biforktied_symbol sym_b1b
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_biforktied_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_onetied_biforktied_symbol sym_b1b
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_biforktied_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_biforktied_symbol sym_b1b
    end
;;

let is_block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_biforktied_symbol_v.is_block_single_singledouble_symbol_off_block_onetied_biforktied_symbol sym_b1b
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1b = block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_biforktied_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_biforktied_symbol sym_b1b
    end
;;

let is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol = function
  | Block_onetied_forktied_symbol_t.Block_onetied_triforktied_symbol _ -> true
  | _ -> false
;;

let is_block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_triforktied_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_onetied_triforktied_symbol sym_b1t
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_triforktied_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_triforktied_symbol sym_b1t
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f =
  if not (is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f)
  then false
  else
    begin
     let sym_b1t = block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f in 
     Block_onetied_triforktied_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_triforktied_symbol sym_b1t
    end
;;


(** created by ./generator block_onetied_forktied implementation symbol at 15:3 13 Mar 2012. *)



