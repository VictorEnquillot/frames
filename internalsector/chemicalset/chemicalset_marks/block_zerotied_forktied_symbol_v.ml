(** {3 The functionalities for a Symbol for a Block_zerotied_forktied.} *)

let nam_cod = "block_zerotied_forktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_biforktied_symbol sym_b0b ->
      Block_zerotied_biforktied_symbol_v.name sym_b0b
  | Block_zerotied_forktied_symbol_t.Block_zerotied_triforktied_symbol sym_b0t ->
      Block_zerotied_triforktied_symbol_v.name sym_b0t
  | Block_zerotied_forktied_symbol_t.Block_zerotied_quadriforktied_symbol sym_b0q ->
      Block_zerotied_quadriforktied_symbol_v.name sym_b0q
;;


(** {6 Upgrading} *)


let block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b = 
  Block_zerotied_forktied_symbol_t.Block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singlesingle_symbol sym_bns = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singlesingle_symbol sym_bns in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singlesingle_benttwolonepair_symbol sym_nsb = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singlesingle_benttwolonepair_symbol sym_nsb in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singledouble_symbol sym_bns = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singledouble_symbol sym_bns in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singledouble_trigonalplanar_symbol sym_nst = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singledouble_trigonalplanar_symbol sym_nst in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singletriple_symbol sym_bns = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singletriple_symbol sym_bns in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_singletriple_monoatomic_symbol sym_nsm = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_singletriple_monoatomic_symbol sym_nsm in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_doublesingle_symbol sym_bnd = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_doublesingle_symbol sym_bnd in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_none_doublesingle_trigonalplanar_symbol sym_ndt = 
  let sym_b0b = Block_zerotied_biforktied_symbol_v.block_zerotied_biforktied_symbol_of_block_none_doublesingle_trigonalplanar_symbol sym_ndt in
    block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol sym_b0t = 
  Block_zerotied_forktied_symbol_t.Block_zerotied_triforktied_symbol sym_b0t
;;

let block_zerotied_forktied_symbol_of_block_none_singlesinglesingle_symbol sym_bns = 
  let sym_b0t = Block_zerotied_triforktied_symbol_v.block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol sym_bns in
    block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol sym_b0t
;;

let block_zerotied_forktied_symbol_of_block_none_singlesinglesingle_diatomic_symbol sym_nsd = 
  let sym_b0t = Block_zerotied_triforktied_symbol_v.block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_diatomic_symbol sym_nsd in
    block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol sym_b0t
;;

let block_zerotied_forktied_symbol_of_block_none_singlesinglesingle_monoatomic_symbol sym_nsm = 
  let sym_b0t = Block_zerotied_triforktied_symbol_v.block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_monoatomic_symbol sym_nsm in
    block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol sym_b0t
;;

let block_zerotied_forktied_symbol_of_block_zerotied_quadriforktied_symbol sym_b0q = 
  Block_zerotied_forktied_symbol_t.Block_zerotied_quadriforktied_symbol sym_b0q
;;

let block_zerotied_forktied_symbol_of_block_none_singlesinglesinglesingle_symbol sym_bns = 
  let sym_b0q = Block_zerotied_quadriforktied_symbol_v.block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_symbol sym_bns in
    block_zerotied_forktied_symbol_of_block_zerotied_quadriforktied_symbol sym_b0q
;;

let block_zerotied_forktied_symbol_of_block_none_singlesinglesinglesingle_tetrahedral_symbol sym_nst = 
  let sym_b0q = Block_zerotied_quadriforktied_symbol_v.block_zerotied_quadriforktied_symbol_of_block_none_singlesinglesinglesingle_tetrahedral_symbol sym_nst in
    block_zerotied_forktied_symbol_of_block_zerotied_quadriforktied_symbol sym_b0q
;;


(** {6 Abbreviating} *)


let n_o_ss = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.n_o_ss;;

let block_none_singleconjugated = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.block_none_singleconjugated;;

let n_ch_sd = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.n_ch_sd;;

let n_c_st = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.n_c_st;;

let n_ch_ds = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.n_ch_ds;;

let block_none_doubleconjugated = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.block_none_doubleconjugated;;

let block_none_doubledouble = block_zerotied_forktied_symbol_of_block_zerotied_biforktied_symbol Block_zerotied_biforktied_symbol_v.block_none_doubledouble;;

let n_ch_sss = block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol Block_zerotied_triforktied_symbol_v.n_ch_sss;;

let n_n_sss = block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol Block_zerotied_triforktied_symbol_v.n_n_sss;;

let block_none_singlesingledouble = block_zerotied_forktied_symbol_of_block_zerotied_triforktied_symbol Block_zerotied_triforktied_symbol_v.block_none_singlesingledouble;;

let n_c_ssss = block_zerotied_forktied_symbol_of_block_zerotied_quadriforktied_symbol Block_zerotied_quadriforktied_symbol_v.n_c_ssss;;

let n_np4_ssss = block_zerotied_forktied_symbol_of_block_zerotied_quadriforktied_symbol Block_zerotied_quadriforktied_symbol_v.n_np4_ssss;;


(** {6 Making} *)


let make = function
  | "n_o_ss" -> n_o_ss
  | "block_none_singleconjugated" -> block_none_singleconjugated
  | "n_ch_sd" -> n_ch_sd
  | "n_c_st" -> n_c_st
  | "n_ch_ds" -> n_ch_ds
  | "block_none_doubleconjugated" -> block_none_doubleconjugated
  | "block_none_doubledouble" -> block_none_doubledouble
  | "n_ch_sss" -> n_ch_sss
  | "n_n_sss" -> n_n_sss
  | "block_none_singlesingledouble" -> block_none_singlesingledouble
  | "n_c_ssss" -> n_c_ssss
  | "n_np4_ssss" -> n_np4_ssss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_biforktied_symbol sym_b0b -> sym_b0b
  | sym_b0f -> Error_messages_v.print_fatal_error
      nam_cod "block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol"
      "Block_zerotied_biforktied_symbol"
      (name sym_b0f) "check"
;;

let block_none_singlesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_singledouble_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_singletriple_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_singletriple_monoatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_singletriple_monoatomic_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_doublesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_biforktied_symbol_v.block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b
;;

let block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_triforktied_symbol sym_b0t -> sym_b0t
  | sym_b0f -> Error_messages_v.print_fatal_error
      nam_cod "block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol"
      "Block_zerotied_triforktied_symbol"
      (name sym_b0f) "check"
;;

let block_none_singlesinglesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_triforktied_symbol_v.block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t
;;

let block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_triforktied_symbol_v.block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t
;;

let block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_triforktied_symbol_v.block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t
;;

let block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_quadriforktied_symbol sym_b0q -> sym_b0q
  | sym_b0f -> Error_messages_v.print_fatal_error
      nam_cod "block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol"
      "Block_zerotied_quadriforktied_symbol"
      (name sym_b0f) "check"
;;

let block_none_singlesinglesinglesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0q = block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_quadriforktied_symbol_v.block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q
;;

let block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_forktied_symbol sym_b0f = 
  let sym_b0q = block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
    Block_zerotied_quadriforktied_symbol_v.block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q
;;


(** {6 Querying} *)


let is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_biforktied_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_singledouble_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_singletriple_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_singletriple_monoatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_singletriple_monoatomic_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_doublesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0b = block_zerotied_biforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_biforktied_symbol_v.is_block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b
    end
;;

let is_block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_triforktied_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesinglesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_triforktied_symbol_v.is_block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t
    end
;;

let is_block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_triforktied_symbol_v.is_block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t
    end
;;

let is_block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0t = block_zerotied_triforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_triforktied_symbol_v.is_block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t
    end
;;

let is_block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol = function
  | Block_zerotied_forktied_symbol_t.Block_zerotied_quadriforktied_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesinglesinglesingle_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0q = block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_quadriforktied_symbol_v.is_block_none_singlesinglesinglesingle_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q
    end
;;

let is_block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_forktied_symbol sym_b0f =
  if not (is_block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f)
  then false
  else
    begin
     let sym_b0q = block_zerotied_quadriforktied_symbol_off_block_zerotied_forktied_symbol sym_b0f in 
     Block_zerotied_quadriforktied_symbol_v.is_block_none_singlesinglesinglesingle_tetrahedral_symbol_off_block_zerotied_quadriforktied_symbol sym_b0q
    end
;;


(** created by ./generator block_zerotied_forktied implementation symbol at 14:23 25 Feb 2012. *)



