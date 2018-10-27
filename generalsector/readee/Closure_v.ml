(** {3 Closure_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : REA:Closure_v";
   "Needs : REA:Readee_v";
   "Needed-by :";
   "What-is-it : a Closure is a list of Readee";
   "Author : François Colonna 29 novembre 2016 at 17:21:48+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name clo =
  List_v.name Readee_v.name clo
;;

(** {6 Making} *)

let make bou_l =
  bou_l
;;

