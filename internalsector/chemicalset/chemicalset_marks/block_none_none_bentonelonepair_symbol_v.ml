(** {3 The functionalities for a Symbol for a Block_none_none_bentonelonepair.} *)

let nam_cod = "block_none_none_bentonelonepair_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_bentonelonepair_symbol_t.N_no2m1_n -> "n_no2m1_n"
  | Block_none_none_bentonelonepair_symbol_t.N_no2_n -> "n_no2_n"
  | Block_none_none_bentonelonepair_symbol_t.N_so2_n -> "n_so2_n"
  | Block_none_none_bentonelonepair_symbol_t.N_o3_n -> "n_o3_n"
  | Block_none_none_bentonelonepair_symbol_t.N_ccl2_n -> "n_ccl2_n"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let n_no2m1_n = Block_none_none_bentonelonepair_symbol_t.N_no2m1_n;;

let n_no2_n = Block_none_none_bentonelonepair_symbol_t.N_no2_n;;

let n_so2_n = Block_none_none_bentonelonepair_symbol_t.N_so2_n;;

let n_o3_n = Block_none_none_bentonelonepair_symbol_t.N_o3_n;;

let n_ccl2_n = Block_none_none_bentonelonepair_symbol_t.N_ccl2_n;;


(** {6 Making} *)


let make = function
  | "n_no2m1_n" -> n_no2m1_n
  | "n_no2_n" -> n_no2_n
  | "n_so2_n" -> n_so2_n
  | "n_o3_n" -> n_o3_n
  | "n_ccl2_n" -> n_ccl2_n
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_bentonelonepair implementation symbol at 14:23 25 Feb 2012. *)



