open Make_test_v;;

testing "List_v with
   list_u_debug.ml";;

(* toplevel 
   #use "list_u_debug.ml";; 

 *)

(* ((a + (b + c) ) + d ) + ((e + f) + g) *)
(* ((a + BC) + d ) + ((e + f) + g) *)
(* (ABC + d ) + ((e + f) + g) *)
(* ABCD + ((e + f) + g) *)
(* ABCD + (EF + g) *)
(* ABCD + EFG *)
(*
                 +
            +        +
        +      d   g    +   
    a       +         e   f
          b   c

*)


(* ((a + (b + c) ) + d ) + ((e + f) + g) *)
(* ((a + BC) + d ) + (EF + g) *)
(* ( ABC + d ) + EFG *)
(*  ABCD + EFG *)


let str_l = 
(*1    2              3                   3    2              1         1    2                             2              1 *)
["("; "("; "a"; "+"; "("; "b"; "+"; "c"; ")"; ")"; "+"; "d"; ")"; "+"; "("; "("; "d"; "+"; "e"; "+"; "f"; ")"; "+"; "g"; ")"];;

open List_v;;

let largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l =
  (Format.fprintf Format.std_formatter "@.ref_l > %s < @." (List_v.name (fun s->s) ref_l));
  let rec apply lis =
    match lis with
    | [] -> []
    | cur :: [] -> 
	  if (are_included_of_list_of_list cur ref_l)
	  then [cur]
	  else []
    | cur :: tl ->
	
	let nex = List.hd tl in
        let nex_l = List.tl tl in

	let new_l =
	  if not (are_included_of_list_of_list cur ref_l)
	  then nex :: nex_l
	  else
	    if not (are_included_of_list_of_list nex ref_l)
	    then cur :: nex_l
	    else 
	      begin  (* both including ref *)
		if List.length cur > List.length nex
		then cur :: nex_l
		else nex :: nex_l
	      end
	in
	(Format.fprintf Format.std_formatter "@.new_l > %s < @." (List_v.name (List_v.name (fun s->s)) new_l));
	apply new_l
  in
  apply lis_l
;;

let largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l =
  let rec apply lis =
    match lis with
    | [] -> []
    | cur :: [] -> 
	  if (are_included_of_list_of_list cur ref_l)
	  then [cur]
	  else []
    | cur :: tl ->
	
	let nex = List.hd tl in
        let nex_l = List.tl tl in

	let new_l =
	  if not (are_included_of_list_of_list cur ref_l)
	  then nex :: nex_l
	  else
	    if not (are_included_of_list_of_list nex ref_l)
	    then cur :: nex_l
	    else 
	      begin  (* both including ref *)
		if List.length cur > List.length nex
		then cur :: nex_l
		else nex :: nex_l
	      end
	in
	apply new_l
  in
  apply lis_l
;;



let ref_l = ["x"; "y"];;
let lis_l = [["a"; "b"; "c"; "d"]; ["a"; "b"; "c" ]; ["a"; "b"]];;
let res_l = List_v.largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

let cur = List.hd lis_l;;
let tl =  List.tl lis_l;;
let nex = List.hd tl;;

let boo = are_included_of_small_list_of_big_list ref_l cur;;
let boo = are_included_of_list_of_list ref_l nex;;

let res_l = largest_inclusive_list_of_reference_list_of_list_list ref_l lis_l;;

let lis_l = [["a"; "b"; "c"; "d"]; ["x"; "y"; "z"]; ["A"; "B"; "C" ]; ["X"; "Y"]; ["U"; "V"]];;


let lxyz = List.nth lis_l 1;;

let pre_str s = (s = "y");;
let pre_lis l = pre_str (List.nth l 1);;

let lf = List.find pre_lis lis_l;;

test_number 1 (
lf = lxyz
);;

let f_l = only_element_of_predicate_off_list  pre_lis lis_l;;

let pre_str_sof sof s = (s = sof);;
let pre_lis_sof l = ((List.length l > 1) && (pre_str_sof "y")) (List.nth l 1);;

let f_l = only_element_of_predicate_off_list  pre_lis_sof lis_l;;
