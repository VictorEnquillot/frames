(* {3 An index for Any Entity} *)


type data_index = 
  | Ln_c  (* center *)
  | Ln_o  (* output *)
  | St_c  (* center *)
  | St_l  (* left side of plane sti-stc, stc-sto *)
  | St_r  (* right side of plane sti-stc, stc-sto *)
  | St_o  (* output *)

and spherical_pyramidal_index =
  | Sp_c  (* center *)
  | Sp_i  (* input *)
  | Sp_l  (* left side of bissector plane containing spi-spc *)
  | Sp_r  (* right side of bissector plane containing spi-spc *)

and planar_trigonal_index =
  | Pt_c  (* center *)
  | Pt_i  (* input *)
  | Pt_b  (* bissector of angle (pti-ptc, ptc-pto) *)
  | Pt_o  (* output *)

and planar_bent_index =
  | Pb_c  (* center *)
  | Pb_i  (* input *)
  | Pb_o  (* output *)
;;
(** Example : Ch4 is 
[(H, sti); (H, stl); (H, str); (H, sto)] *)

