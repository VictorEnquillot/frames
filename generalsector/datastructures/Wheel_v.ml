(** {3 A Wheel data structure.} *)

let nam_mod = "Wheel_v";;


let make a elt_a = {
  Wheel_t.axis = a;
  Wheel_t.radii = elt_a;
}
;;

let wheel_off_list = function
  | [] -> failwith "Empty_list:Wheel_v.wheel_off_list"
  | h::t -> make h (Array.of_list t)
;;

(***
let wheel_off_array elt_a =
  let len = Array.length elt_a in
  match len with 
  | 0 -> failwith "Empty_array:Wheel_v.wheel_off_array"
  | 1 -> make elt_a.(0) [||]
  | _ ->
  let axs = elt_a.(0) in
  let rad_a = 
    Array_v.array_extract_of_array 1 (len-1) 
      elt_a in
  make axs rad_a 
;;
***)

let axis_off_wheel elt_w =
  elt_w.Wheel_t.axis
;;

let radii_off_wheel elt_w =
  elt_w.Wheel_t.radii
;;

let radii_count_of_wheel elt_w =
  Array.length (radii_off_wheel elt_w)
;;

let array_off_wheel elt_w =
  let axs = axis_off_wheel elt_w in
  let rad_a = radii_off_wheel elt_w in
  Array.append [|axs|] rad_a
;;

let list_off_wheel elt_w =
  let axs = axis_off_wheel elt_w in
  let rad_a = radii_off_wheel elt_w in
  axs :: Array.to_list rad_a
;;

let apply_on_wheel_axis f_a elt_w =
  let axs = axis_off_wheel elt_w in
  let new_axs = (fun s -> f_a s) axs in
  let rad = radii_off_wheel elt_w in
  make new_axs rad
;;

(***
let print prt_a ppf elt_w =
  let axs = axis_off_wheel elt_w in
  let rad = radii_off_wheel elt_w in
  Format.fprintf ppf "@.{axis = %a;@ radii = %a}" 
    prt_a axs
    (Array_v.print prt_a) rad
;;
***)
