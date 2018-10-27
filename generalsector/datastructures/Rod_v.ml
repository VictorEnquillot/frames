(** {3 A Rod data structure.} *)

let nam_mod = "Rod_v";;


let make a b_a c = {
  Rod_t.head = a;
  Rod_t.body = b_a;
  Rod_t.tail = c;
}
;;

let head_off_rod rod =
  rod.Rod_t.head
;;

let body_off_rod rod =
  rod.Rod_t.body
;;

let tail_off_rod rod =
  rod.Rod_t.tail
;;

let body_count_of_rod rod =
  Array.length (body_off_rod rod)
;;

(*
let rod_off_array elt_a =
  let cnt = Array.length elt_a in
  let hed = elt_a.(0) in
  let bdy_cnt = 
    try Index_p.int_of_index (Index_p.make (cnt -2)) 
    with Failure ("Index_is_non_negative:make") ->
      failwith "No_array:rod_off_array"
  in            
  let bdy_a = 
    Array_v.array_extract_of_array 1 bdy_cnt 
      elt_a in
  let tal = elt_a.(cnt-1) in
  make hed bdy_a tal
;;

let rec array_off_rod rod =
  let hed = head_off_rod rod in
  let bdy = body_off_rod rod in
  let tal = tail_off_rod rod in
  Array.append (Array.append [|hed|] bdy) [|tal|] 
;;

let array_off_inhomogeneous_rod f_h f_b f_t rod =
  let hed = head_off_rod rod in
  let tal = tail_off_rod rod in
  let bdy = body_off_rod rod in
  let h = f_h hed in
  let b_a = 
    Array.map (fun s -> f_b s) bdy in
  let t = f_t tal in
    Array.append (Array.append [|h|] b_a) [|t|] 
 ;;
*)
let apply_on_rod_tail f_t rod =
  let hed = head_off_rod rod in
  let tal = tail_off_rod rod in
  let new_tal = (fun s -> f_t s) tal in
  let bdy = body_off_rod rod in
  make hed bdy new_tal
;;

(*
let print prt_a prt_b prt_c ppf rod =
  let hed = head_off_rod rod in
  let tal = tail_off_rod rod in
  let bdy = body_off_rod rod in
  Format.fprintf ppf "{head = %a;@ body =[|%a|];@ tail =%a}" 
    prt_a hed 
    (Array_v.print prt_b) bdy
    prt_c tal 
;;
*)
