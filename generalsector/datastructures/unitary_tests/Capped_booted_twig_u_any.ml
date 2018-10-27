open Make_test_v;;

testing "Capped_booted_twig_v";;

(* toplevel 
   #use "capped_booted_twig_u_any.ml";; 

 *)

(*
          C
          |
         "a"--1
          |
         "b"--2
          |
         "c"--3
          |
         10.
*)


type ('b, 'i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
  | Bool of 'b
;;

let cap = true;;

let twg_r = Booted_twig_v.make_oroot 10.;;
let twg_c = Booted_twig_v.make "c" 3 twg_r;;
let twg_b = Booted_twig_v.make "b" 2 twg_c;;
let twg_a = Booted_twig_v.make "a" 1 twg_b;;

let ctw_a = Capped_booted_twig_v.make cap twg_a;;

test_number 1 (
twg_a (* : (string, int, float) Booted_twig_t.booted_twig *)
  =
Booted_twig_t.Inner
("a", 1, Booted_twig_t.Inner ("b", 2, Booted_twig_t.Inner ("c", 3, Booted_twig_t.Boot 10.)))
);;

test_number 2 (
Capped_booted_twig_v.name 
  (fun b -> Format.sprintf "%B" b) 
  (fun s -> s) 
  (fun i -> Format.sprintf "%i" i) 
  (fun f -> Format.sprintf "%f" f) 
  ctw_a 
(* : string *)
= 
"(true, {a:1:{b:2:{c:3:10.000000}}})"
);;

