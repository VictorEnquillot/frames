(** {3 The functionalities for a Symbol for a Fragment_buried.} *)

let nam_cod = "fragment_buried_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Fragment_buried_symbol_t.Block_onetied_forktied_symbol sym_b1f ->
      Block_onetied_forktied_symbol_v.name sym_b1f
  | Fragment_buried_symbol_t.Fragment_buried_biforked -> "fragment_buried_biforked"
  | Fragment_buried_symbol_t.Fragment_buried_triforked -> "fragment_buried_triforked"
  | Fragment_buried_symbol_t.Fragment_buried_fromid -> "fragment_buried_fromid"
  | Fragment_buried_symbol_t.Fragment_buried_leftextended_fromid _ -> "fragment_buried_leftextended_fromid"
;;


(** {6 Upgrading} *)


let fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f = 
  Fragment_buried_symbol_t.Block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_onetied_biforktied_symbol sym_b1b = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_biforktied_symbol sym_b1b in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_symbol sym_bss in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_ax3_symbol sym_ssa in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol sym_sat in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singledouble_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_symbol sym_bss in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singledouble_ax3e0_trigonalplanar_symbol sym_sat in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_onetied_triforktied_symbol sym_b1t = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_onetied_triforktied_symbol sym_b1t in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesinglesingle_symbol sym_bss = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_symbol sym_bss in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4_symbol sym_ssa in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;

let fragment_buried_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat = 
  let sym_b1f = Block_onetied_forktied_symbol_v.block_onetied_forktied_symbol_of_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol sym_sat in
    fragment_buried_symbol_of_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Abbreviating} *)


let s_n_ss = fragment_buried_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_n_ss;;

let s_c_sd = fragment_buried_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sd;;

let s_c_sss = fragment_buried_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_c_sss;;

let s_nhp1_sss = fragment_buried_symbol_of_block_onetied_forktied_symbol Block_onetied_forktied_symbol_v.s_nhp1_sss;;

let fragment_buried_biforked = Fragment_buried_symbol_t.Fragment_buried_biforked;;

let fragment_buried_triforked = Fragment_buried_symbol_t.Fragment_buried_triforked;;

let fragment_buried_fromid = Fragment_buried_symbol_t.Fragment_buried_fromid;;

let fragment_buried_leftextended_fromid s = Fragment_buried_symbol_t.Fragment_buried_leftextended_fromid s;;


(** {6 Making} *)


let make s = function
  | "s_n_ss" -> s_n_ss
  | "s_c_sd" -> s_c_sd
  | "s_c_sss" -> s_c_sss
  | "s_nhp1_sss" -> s_nhp1_sss
  | "fragment_buried_biforked" -> fragment_buried_biforked
  | "fragment_buried_triforked" -> fragment_buried_triforked
  | "fragment_buried_fromid" -> fragment_buried_fromid
  | "fragment_buried_leftextended_fromid" -> fragment_buried_leftextended_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_onetied_forktied_symbol_off_fragment_buried_symbol = function
  | Fragment_buried_symbol_t.Block_onetied_forktied_symbol sym_b1f -> sym_b1f
  | sym_frb -> Error_messages_v.print_fatal_error
      nam_cod "block_onetied_forktied_symbol_off_fragment_buried_symbol"
      "Block_onetied_forktied_symbol"
      (name sym_frb) "check"
;;

let block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f
;;

let block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb = 
  let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
    Block_onetied_forktied_symbol_v.block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
;;


(** {6 Querying} *)


let is_block_onetied_forktied_symbol_off_fragment_buried_symbol = function
  | Fragment_buried_symbol_t.Block_onetied_forktied_symbol _ -> true
  | _ -> false
;;

let is_block_onetied_biforktied_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_onetied_biforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_ax3_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_ax3_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesingle_ax3e1_trigonalpyramidal_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singledouble_ax3e0_trigonalplanar_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_onetied_triforktied_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_onetied_triforktied_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_ax4_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_ax4_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;

let is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_fragment_buried_symbol sym_frb =
  if not (is_block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb)
  then false
  else
    begin
     let sym_b1f = block_onetied_forktied_symbol_off_fragment_buried_symbol sym_frb in 
     Block_onetied_forktied_symbol_v.is_block_single_singlesinglesingle_ax4e1_tetrahedral_symbol_off_block_onetied_forktied_symbol sym_b1f
    end
;;


(** created by ./generator fragment_buried implementation symbol at 15:3 13 Mar 2012. *)



