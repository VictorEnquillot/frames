(** {3 A Cane data structure.} *)

let nam_mod = "Cane_v";;


let make a b_a = {
  Cane_t.head = a;
  Cane_t.body = b_a;
}
;;

let head_off_cane can =
  can.Cane_t.head
;;

let body_off_cane can =
  can.Cane_t.body
;;

let body_count_of_cane can =
  Array.length (body_off_cane can)
;;

let tail_off_cane can =
  let bdy = body_off_cane can in
  Array_v.last_element bdy
;;
(*
let cane_off_array elt_a =
  let cnt = Array.length elt_a in
  let hed = elt_a.(0) in
  let bdy_cnt = 
    try Index_p.int_of_index (Index_p.make (cnt -1)) 
    with  Failure ("Index_is_non_negative:make") ->
      failwith "No_array:cane_off_array"
  in            
  let bdy_a = 
    Array_v.array_extract_of_array 1 bdy_cnt 
      elt_a in
  make hed bdy_a
;;

let array_off_cane can =
  let hed = head_off_cane can in
  let bdy = body_off_cane can in
  Array.append [|hed|] bdy
;;

let array_off_inhomogeneous_cane f_h f_b can =
  let hed = head_off_cane can in
  let h = f_h hed in
  let bdy = body_off_cane can in
  let b_a = 
    Array.map (fun s -> f_b s) bdy in
  Array.append [|h|] b_a
 ;;
*)
let apply_on_cane_tail f_t can =
  let hed = head_off_cane can in
  let tal = tail_off_cane can in
  let new_tal = (fun s -> f_t s) tal in
  let bdy = body_off_cane can in
  let cnt_bdy = Array.length bdy in
  let new_bdy = Array.copy bdy in
  Array.set new_bdy (cnt_bdy-1) new_tal;
  make hed new_bdy
;;
(*
let print prt_a prt_b ppf can =
  let hed = head_off_cane can in
  let bdy = body_off_cane can in
  Format.fprintf ppf "{head= %a;@ body = %a}" 
    prt_a hed
    (Array_v.print prt_b) bdy
;;
*)
