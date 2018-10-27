open Make_test_v;;

testing "Tools_d1fig_1_v
   Tools_d1fig_1_u_any.ml";;

(* toplevel 
   #use "Tools_d1fig_1_u_any.ml";;

*)

let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

let nam_exe = Tools_d1fig_1_v.nameoflocalexecutable () ;;

test_number 1 (
nam_exe
(* : string *)
= 
"db1"
);;

