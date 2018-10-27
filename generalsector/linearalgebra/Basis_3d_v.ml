(* $Id: Exp $ *)

let nam_mod = "Basis_3d";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

let axis_x = Vector_3d_v.unity_x
;;

let axis_y = Vector_3d_v.unity_y
;;

let axis_z = Vector_3d_v.unity_z
;;

let canonical = [| axis_x;  axis_y; axis_z |]
;;

let print ppf  basis = 
  Array.iter (fun vct ->
    Format.fprintf ppf "@[%a @]@." Vector_3d_v.print vct)  basis
;;

let read ib =
  not_yet_implemented nam_mod "read"
;;
