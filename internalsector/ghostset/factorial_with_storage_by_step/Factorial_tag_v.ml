let make sym_fac soi_fac =
  Tag_v.make sym_fac soi_fac
;;

(** {6 Naming} *)

let name tag_fac =
  let step = Factorial_parameters_v.step_number_of_factorial_tag tag_fac in
  (Format.sprintf "%i!" step)
;;

