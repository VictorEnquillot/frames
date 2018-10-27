open Make_test_v;;

testing "Booted_twig_v";;

(* toplevel 
   #use "booted_twig_u_any.ml";; 
 *)

(*
         "a"--1
          |
         "b"--2
          |
         "c"--3
          |
         10.
*)

type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

let cpl_l = [("a", 1); ("b", 2); ("c", 3)]

let twg_r = Booted_twig_v.make_oroot 10.;;

let twg_c = Booted_twig_v.make "c" 3 twg_r;;
let twg_b = Booted_twig_v.make "b" 2 twg_c;;
let twg_a = Booted_twig_v.make "a" 1 twg_b;;

test_number 1 (
twg_r (* : ('a, 'b, float) Booted_twig_t.booted_twig *)
= 
Booted_twig_t.Boot 10.
);;

test_number 2 (
twg_c (* : (string, int, float) Booted_twig_t.booted_twig *)
  =
Booted_twig_t.Inner ("c", 3, Booted_twig_t.Boot 10.)
);;

test_number 3 (
twg_b (* : (string, int, float) Booted_twig_t.booted_twig *)
  =
Booted_twig_t.Inner ("b", 2, Booted_twig_t.Inner ("c", 3, Booted_twig_t.Boot 10.))
);;

test_number 4 (
twg_a (* : (string, int, float) Booted_twig_t.booted_twig *)
  =
  Booted_twig_t.Inner
("a", 1, Booted_twig_t.Inner ("b", 2, Booted_twig_t.Inner ("c", 3, Booted_twig_t.Boot 10.)))
);;

test_number 5 (
Booted_twig_v.name (fun s -> s) (fun i -> Format.sprintf "%i" i) (fun f -> Format.sprintf "%f" f) twg_a (* : string *)
= 
"{a:1:{b:2:{c:3:10.000000}}}"
);;

test_number 6 (
Booted_twig_v.make_of_doublet_booted_list ([("a", 1); ("b", 2); ("c", 3)], 10.)
(* : (string, int, float) Booted_twig_t.booted_twig *) 
=
Booted_twig_t.Inner
 ("a", 1, Booted_twig_t.Inner ("b", 2, Booted_twig_t.Inner ("c", 3, Booted_twig_t.Boot 10.)))
);;
