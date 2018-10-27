(** {3 Scanf_to_list_v.} *)

open Make_test_v;;

testing "Scanf_to_list_v";;
 
(* toplevel 
   #use "scanf_to_list_u_any.ml";; 
*)

open Scanf;;


(***
let seq = "agc";;
let ib = Scanf.Scanning.from_string seq;;
 
let read_a_char ib =
      Scanf.bscanf ib "%c" (fun c -> c)
;;

let read_a_string ib =
  let rec acc =
    let c = Scanf.bscanf ib "%c" (fun c -> c) in
    c :: acc
  in
acc
;;

let x = read_a_char ib ;;

let scan_list ib =
 let rec loop accu =
   Scanf.bscanf ib "%c"
    (fun e ->
       Scanf.kscanf ib
         (fun ib exc ->
           if Scanning.end_of_input ib then e :: accu else raise exc)
         (fun s -> if s = "" then (e :: accu) else loop (e :: accu))) 
 in
 List.rev (loop [])
;;
***)

(* Using kscanf only. *)
let rec scan_elems ib scan_elem accu =
 kscanf ib (fun ib exc -> accu)
  scan_elem
  (fun i ->
     let accu = i :: accu in
     kscanf ib (fun ib exc -> accu)
      " %1[;] "
      (fun s -> if s = "" then accu else scan_elems ib scan_elem accu));;

let scan_list scan_elem ib =
 bscanf ib "[ " ();
 let accu = scan_elems ib scan_elem [] in
 bscanf ib " ]" ();
 List.rev accu;;

let scan_list elem sep ib =
 let rec loop accu =
   Scanf.bscanf ib elem
    (fun e ->
       Scanf.kscanf ib
         (fun ib exc ->
           if Scanning.end_of_input ib then e :: accu else raise exc)
         sep
         (fun s -> if s = "" then (e :: accu) else loop (e :: accu))) in
 List.rev (loop []);;

let f = scan_list " %[^#]" " %1[#] ";;       
let ibf = Scanning.from_string "asda#asd#asc";;

test_number 1 (
 f ibf
=
["asda"; "asd"; "asc"]

);;

(*
Aos_v.aminoacid_olc_symbol_of_char
let read ib =
  let rec loop ib =
    Scanf.bscanf ib " %0c" (function
    | 'E' ->
      Scanf.bscanf ib "Eps %_1[;]" Eps
    | '0'..'9' ->
      Scanf.bscanf ib "%d " (fun i -> let p = loop ib in Son (i, p))
    | ';' -> Scanf.bscanf ib "%_c" loop ib
    | c ->
      failwith (Printf.sprintf "Path.read: spurious character ``%c''." c)) in
  Scanf.bscanf ib "[ %r ]" loop (fun p -> p)
;;

read (Scanf.Scanning.from_string "[1;2;Eps]") 
*)

