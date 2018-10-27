open Make_test_v;;

testing "Designator_v";;

(* toplevel 
   #use "designator_u_any.ml";; 
 *)


let dsg = Dsg_v.make "smb" "sta";;
let cpl = Dsg_v.doublet_off_designator dsg;;
let smb = Dsg_v.symbol_off_designator dsg ;;
let sta = Dsg_v.state_off_designator dsg ;; 

test_number 1 (
dsg
= 
{Designator_t.symbol = "smb"; Designator_t.state = "sta";}
);;

test_number 2 (
cpl
= 
("smb", "sta")
);;

test_number 3 (
Dsg_v.name (fun s -> s) (fun s -> s) dsg
=
"smb:sta"
);;

