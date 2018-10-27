open Make_test_v;;

testing "Version_v with
   version_u_any.ml";;

(* toplevel 
   #use "Version_u_any.ml";; 

 *)

test_number 1 (
Version_v.name
  =
"v1.14"
);;

test_number 2 (
Version_v.attributes
    = 
  [
   "3rd of June 2013";
   "Symbols works";
   "Formulas works only with List as Datastructures";
   "Generation of one Entity modules not yet implemented";
 ]
);;    
    
