(** {3 A Logical Formula} *)

(** {6 Aliasing} *)

module Lst_v = List_v
module Str_v = String_v

(*

let str =" False (Imply (And (p, q), p))";;


                False
                  |
                Imply 
                 /   \
               And     p 
               / \
              p   q

val signed_formula_of_string : string -> signed_formula
*)

(** {6 Typing} *)

type formula =
   | T
   | F
   | NT                                (* Not true *)
   | NF                                (* Not false or Potentially true *)
   | Variable of string
   | Not of formula
   | Imply of formula * formula
   | Or of formula * formula
   | And of formula * formula
   | Equiv of formula * formula
;;

type turnstile = 
   | TRUE 
   | FALSE 
   | NTRUE 
   | NFALSE 
;;

type signed_formula = 
   | True of formula 
   | False of formula 
   | Ntrue of formula 
   | Nfalse of formula 
;;

