open Make_test_v;;

testing "Factorial_value_propagator_v with
   Factorial_value_propagator_u_any.ml";;

(* toplevel 
   #use "Factorial_value_propagator_u_any.ml";; 

*)

let val_fac = Factorial_value_propagator_v.propagate ();;

test_number 1 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
Factorial_value_t.Factorial_basic 1
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 2 (
nam_fac 
(* : string *)
= 
"1"
);;

let str = Factorial_value_provider_v.dump ();;

test_number 3 (
str
(* : string *)
=
"[ ((factorial, [ 1; 1 ]), 1) ]"
);; 

let val_fac = Factorial_value_propagator_v.propagate ();;

test_number 4 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
  Factorial_value_t.Factorial_recursive
   (Singlet_t.Singlet (Factorial_value_t.Factorial_basic 1))
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 5 (
nam_fac 
(* : string *)
= 
"1.2"
);;

let val_fac = Factorial_value_propagator_v.propagate ();;

test_number 6 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
Factorial_value_t.Factorial_recursive
  (Singlet_t.Singlet
     (Factorial_value_t.Factorial_recursive
	(Singlet_t.Singlet (Factorial_value_t.Factorial_basic 1))))
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 7 (
nam_fac 
(* : string *)
=
"1.2.3"
);;

let val_fac = Factorial_value_propagator_v.propagate ();;

test_number 8 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
Factorial_value_t.Factorial_recursive
  (Singlet_t.Singlet
     (Factorial_value_t.Factorial_recursive
        (Singlet_t.Singlet
	   (Factorial_value_t.Factorial_recursive
	      (Singlet_t.Singlet (Factorial_value_t.Factorial_basic 1))))))
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 9 (
nam_fac 
(* : string *)
= 
"1.2.3.4"
);;

let val_fac = Factorial_value_propagator_v.propagate ();;

test_number 10 (
val_fac 
(* : Factorial_value_t.factorial_value *)
  =
Factorial_value_t.Factorial_recursive
  (Singlet_t.Singlet
     (Factorial_value_t.Factorial_recursive
	(Singlet_t.Singlet
           (Factorial_value_t.Factorial_recursive
              (Singlet_t.Singlet
		 (Factorial_value_t.Factorial_recursive
		    (Singlet_t.Singlet (Factorial_value_t.Factorial_basic 1))))))))
);;

let nam_fac = Factorial_value_provider_v.name val_fac;;

test_number 11 (
nam_fac 
(* : string *)
= 
"1.2.3.4.5"
);;

Factorial_value_provider_v.dump ();;
