open Make_test_v;;

testing "Wheel_v";;

(* toplevel 
   #use "wheel_u_any.ml";; 
*)


(**       
  
        c  
         \ 
          a--
         / 
        b  
       
      
*)

let a = "a";;
let b = "b";;
let c = "c";;

let elt_w = Whl_v.make "a" [|b; c;|];;

let elt_a = Whl_v.array_off_wheel elt_w;;

test_number 1 (
elt_a 
=
[|"a"; "b"; "c"|]
);;

test_number 2 (
Whl_v.apply_on_wheel_axis (fun s -> (s^"Y") ) elt_w
  =
{Wheel_t.axis = "aY"; Wheel_t.radii = [|"b"; "c"|]}
);;


