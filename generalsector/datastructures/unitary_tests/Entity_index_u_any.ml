open Make_test_v;;

testing "Entity_index_v";;

(* toplevel 
   #use "entity_index_u_any.ml";; 
*)

test_number 1 (true);;
(**      
let e_idx = Entity_index_v.s;;
let f_idx = Entity_index_t.Sequential_index (Sequential_index_t.Ordinal Ordinal_p.two);;

test_number 2 (
Entity_index_v.name e_idx
=
"S"
);;

test_number 3 (
Entity_index_v.name f_idx
=
"2"
);;

*)
