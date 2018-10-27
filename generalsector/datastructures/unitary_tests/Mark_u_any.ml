open Make_test_v;;

testing "Mark_v";;

(* toplevel 
   #use "mark_u_any.ml";; 

*)

let vin_tpl_c = Vsepr_index_v.tpl_c;;
let mar_tpl_c = Mark_v.make "sym" vin_tpl_c;;
let sym_tpl_c = Mark_v.entity_off_mark mar_tpl_c ;;

let vin_lin_i = Vsepr_index_v.lin_i;;
let mar_lin_i = Mark_v.make "sym" vin_lin_i;;
let sym_lin_i = Mark_v.entity_off_mark mar_lin_i ;;

test_number 1 (
mar_tpl_c
(* : string Mark_t.mark *)
= 
("sym", Vsepr_index_t.Trigonalplanar_index Vsepr_index_t.Tpl_c)
);;

test_number 2 (
Mark_v.name (fun s -> s) mar_tpl_c
(* : string *)
= 
"(sym, tpl_c)"
);;

test_number 3 (
Mark_v.entity_off_mark mar_tpl_c 
(* : string *)
= 
"sym"
);;

test_number 4 (
Mark_v.vsepr_index_off_mark mar_tpl_c 
(* : Vsepr_index_t.vsepr_index *)
= 
Vsepr_index_t.Trigonalplanar_index Vsepr_index_t.Tpl_c
);;

test_number 5 (
 mar_lin_i
(* : string Mark_t.mark *)
=
("sym", Vsepr_index_t.Linear_index Vsepr_index_t.Lin_i)
);;

test_number 6 (
Vsepr_index_v.int_off_vsepr_index vin_lin_i
=
2
);;

test_number 7 (
Mark_v.map_left (fun s -> s ^ "_") mar_lin_i
=
("sym_", 
 Vsepr_index_t.Linear_index Vsepr_index_t.Lin_i)
);;

test_number 8 (
Mark_v.entity_n_int_off_mark mar_lin_i
=
("sym", 2)
);;

test_number 9 (
Mark_v.tag_of_sole_index_off_mark [4; 1] mar_lin_i 
=
("sym", [2; 4; 1])
);;

(******
let add_int vin i =
  Vsepr_index_v.vsepr_index_of_string_of_int p
;;

test_number 10 (
Mark_v.map (fun s -> s ^ "_") (fun vin -> (add_int vin 5)) mar_lin_i
=
("sym_",
 Vsepr_index_t.Sequential_index
  (Vsepr_index_t.Ordinal (Ordinal_p.ordinal 7)))
);;

test_number 11 (
Mark_v.map_right (fun vin -> (add_int vin 5)) mar_lin_i
=
("sym",
 Vsepr_index_t.Sequential_index
  (Vsepr_index_t.Ordinal (Ordinal_p.ordinal 7)))
);;

*)
