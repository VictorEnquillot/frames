(** {3 The functionalities for a Symbol for a Block_none_none_ax1en_diatomic.} *)

let nam_cod = "block_none_none_ax1en_diatomic_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_none_ax1en_diatomic_symbol_t.Z_co_z -> "z_co_z"
  | Block_none_none_ax1en_diatomic_symbol_t.Z_cs_z -> "z_cs_z"
  | Block_none_none_ax1en_diatomic_symbol_t.Z_fh_z -> "z_fh_z"
  | Block_none_none_ax1en_diatomic_symbol_t.Z_no_z -> "z_no_z"
  | Block_none_none_ax1en_diatomic_symbol_t.Z_ohm1_z -> "z_ohm1_z"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_co_z = Block_none_none_ax1en_diatomic_symbol_t.Z_co_z;;

let z_cs_z = Block_none_none_ax1en_diatomic_symbol_t.Z_cs_z;;

let z_fh_z = Block_none_none_ax1en_diatomic_symbol_t.Z_fh_z;;

let z_no_z = Block_none_none_ax1en_diatomic_symbol_t.Z_no_z;;

let z_ohm1_z = Block_none_none_ax1en_diatomic_symbol_t.Z_ohm1_z;;


(** {6 Making} *)


let make s = function
  | "z_co_z" -> z_co_z
  | "z_cs_z" -> z_cs_z
  | "z_fh_z" -> z_fh_z
  | "z_no_z" -> z_no_z
  | "z_ohm1_z" -> z_ohm1_z
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_none_ax1en_diatomic implementation symbol at 15:3 13 Mar 2012. *)



