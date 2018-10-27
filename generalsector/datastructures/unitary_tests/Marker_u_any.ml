open Make_test_v;;

testing "Marker_v";;

(* toplevel 
   #use "marker_u_any.ml";; 
 *)


let mrk = Marker_v.make "smb" 4;;
let cpl = Marker_v.doublet_off_marker mrk;;
let smb = Marker_v.entity_off_marker mrk ;;
let idx = Marker_v.index_off_marker mrk ;; 
let smb_l = ["a"; "b"; "c"];;
test_number 1 (
mrk
= 
("smb", 4)
);;

test_number 2 (
Marker_v.entity_off_marker mrk
= 
"smb"
);;

test_number 3 (
Marker_v.index_off_marker mrk
= 
4
);;

test_number 4 (
Marker_v.name (fun s -> s) (fun i -> Format.sprintf "%i" i) mrk
=
"(smb,4)"
);;

test_number 5 (
Marker_v.ordinal_marker_list_of_entity_list smb_l
(* : (string, Ordinal_p.ordinal) Marker_t.marker list *)
 =
[("a", Ordinal_p.make 1); ("b", Ordinal_p.make 2); ("c", Ordinal_p.make 3)]
);;
