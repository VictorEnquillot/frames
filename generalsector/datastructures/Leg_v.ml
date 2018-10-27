(** {3 A Leg data structure.} *)

let nam_mod = "Leg_v";;


let make b_a c = {
  Leg_t.body = b_a;
  Leg_t.tail = c;
}
;;

let body_off_leg leg =
  leg.Leg_t.body
;;

let tail_off_leg leg =
  leg.Leg_t.tail
;;

let body_count_of_leg leg =
  Array.length (body_off_leg leg)
;;

let leg_off_array elt_a =
  let cnt = Array.length elt_a in
  let bdy_cnt = 
    try Index_p.int_of_index (Index_p.make (cnt -1)) 
    with  Failure ("Index_is_non_negative:make") ->
      failwith "No_array:leg_off_array"
  in            
  let bdy_a = 
    Array_v.array_extract_of_array 0 bdy_cnt 
      elt_a in
  let tal = elt_a.(cnt-1) in
  make bdy_a tal
;;

let rec array_off_leg leg =
  let bdy = body_off_leg leg in
  let tal = tail_off_leg leg in
  Array.append bdy [|tal|] 
;;

let array_off_inhomogeneous_leg f_b f_t leg =
  let bdy = body_off_leg leg in
  let b_a = 
    Array.map (fun s -> f_b s) bdy in
  let tal = tail_off_leg leg in
  let t = f_t tal in
  Array.append b_a [|t|]
 ;;

let apply_on_leg_tail f_t leg =
  let tal = tail_off_leg leg in
  let new_tal = (fun s -> f_t s) tal in
  let bdy = body_off_leg leg in
  make bdy new_tal
;;

let print prt_a prt_b ppf leg =
  let bdy = body_off_leg leg in
  let tal = tail_off_leg leg in
  Format.fprintf ppf "{body = %a;@ tail = %a}" 
    (Array_v.print prt_a) bdy
    prt_b tal
;;
