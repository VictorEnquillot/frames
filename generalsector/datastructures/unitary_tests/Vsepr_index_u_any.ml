open Make_test_v;;

testing "Vsepr_index_v";;

(* toplevel 
   #use "vsepr_index_u_any.ml";; 

*)

let lst = ["a"; "b"; "b"; "c"; "d"];;
let bol = Booted_list_v.make lst 10.;;
let cal = Capped_list_v.make 5 lst;;
let cbl = Capped_booted_list_v.make 5 lst 10.;;

test_number 1 (
Vsepr_index_v.dia_r
=
Vsepr_index_t.Diatomic_index Vsepr_index_t.Dia_r
);;

test_number 2 (
Vsepr_index_v.name Vsepr_index_v.dia_r
=
"dia_r"
);;

test_number 3 (
Vsepr_index_v.int_off_vsepr_index Vsepr_index_v.dia_r
=
2
);;

test_number 4 (
Vsepr_index_v.char_off_vsepr_index Vsepr_index_v.dia_r
=
'b'
);;
