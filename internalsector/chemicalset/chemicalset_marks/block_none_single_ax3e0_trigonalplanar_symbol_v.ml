(** {3 The functionalities for a Symbol for a Block_none_single_ax3e0_trigonalplanar.} *)

let nam_cod = "block_none_single_ax3e0_trigonalplanar_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_coh_s -> "z_coh_s"
  | Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_co2m1_s -> "z_co2m1_s"
  | Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_no2_s -> "z_no2_s"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let z_coh_s = Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_coh_s;;

let z_co2m1_s = Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_co2m1_s;;

let z_no2_s = Block_none_single_ax3e0_trigonalplanar_symbol_t.Z_no2_s;;


(** {6 Making} *)


let make s = function
  | "z_coh_s" -> z_coh_s
  | "z_co2m1_s" -> z_co2m1_s
  | "z_no2_s" -> z_no2_s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator block_none_single_ax3e0_trigonalplanar implementation symbol at 15:4 13 Mar 2012. *)



