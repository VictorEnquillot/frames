(* $Id: Exp $ *)

let nam_mod = "Array1_v";;

let pair_array_of_array_of_array arr_1 arr_2 =
  Array.mapi (fun i x -> (x, arr_2.(i)) ) arr_1 
;;

let pair_array2_of_array_of_array arr_1 arr_2 =
  Array.mapi 
    (fun i x -> 
      Array.mapi 
	(fun j y -> (x, y) ) 
	arr_2) 
    arr_1
;;

let print prt_elt ppf arr =
  let rec prt_elt_a ppf arr =
    for i = 0 to Array.length arr - 1 do
      Format.fprintf ppf "%a;@ " prt_elt arr.(i)
    done 
  in
  Format.fprintf ppf "@[[| @[%a@] |]@]" prt_elt_a arr
;;

let read trp =
  Utilities_v.not_yet_implemented nam_mod "read"
;;
