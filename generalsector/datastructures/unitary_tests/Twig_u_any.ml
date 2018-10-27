open Make_test_v;;

testing "Twig_v";;

(* toplevel 
   #use "twig_u_any.ml";; 
 *)

(*
         "a"--1
          |
         "b"--2
          |
         "c"--3
          |
*)


type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let twg_e = Twig_t.Empty;;
let twg_c = Twig_v.make "c" 3 twg_e;;
let twg_b = Twig_v.make "b" 2 twg_c;;
let twg_a = Twig_v.make "a" 1 twg_b;;

test_number 1 (
twg_e (* : ('a, 'b) Twig_t.twig *)
= 
Twig_t.Empty
);;

test_number 2 (
twg_c (* : (string, int) Twig_t.twig *)
  =
Twig_t.Inner ("c", 3, Twig_t.Empty)
);;

test_number 3 (
twg_b (* : (string, int, float) Twig_t.twig *)
  =
Twig_t.Inner ("b", 2, Twig_t.Inner ("c", 3, Twig_t.Empty))
);;

test_number 4 (
twg_a (* : (string, int, float) Twig_t.twig *)
  =
Twig_t.Inner
 ("a", 1, Twig_t.Inner ("b", 2, Twig_t.Inner ("c", 3, Twig_t.Empty)))
);;

test_number 5 (
Twig_v.name (fun s -> s) (fun i -> Format.sprintf "%i" i) twg_a (* : string *)
= 
"{a:1:{b:2:{c:3:}}}"
);;

