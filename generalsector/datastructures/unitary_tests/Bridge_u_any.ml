open Make_test_v;;

testing "Bridge_v";;

(* toplevel 
   #use "bridge_u_any.ml";; 
*)


let chr_bdg = "b12";;
let x = 1;;
let y = 2;;

let bdg = Bridge_v.make chr_bdg x y;;

test_number 1 (
bdg 
  =
{
 Bond_t.p_characteristic = "b12";
 Bond_t.pair = (1, 2)
}
);;

test_number 2 (
 Bridge_v.pair_off_bridge bdg
=
(1, 2)
);;

test_number 3 (
Bridge_v.characteristic_off_bridge bdg
=
"b12"
);;

(** bridge in a tree t
     t
    / \
   x   y
   |   |
   b---b

*)

let chr_bdg = "b";;

let x = Tree_v.make "x" [Tree_t.Leaf chr_bdg];;
let y = Tree_v.make "y" [Tree_t.Leaf chr_bdg];;
let t = Tree_v.make "t" [x; y];;

let bdt = Bridge_v.make "b" x y;;
let bdu = Bridge_v.make "c" x y;;

test_number 4 (
bdt
  =
{Bond_t.p_characteristic = "b";
 Bond_t.pair =
  (Tree_t.Inner ("x", [Tree_t.Leaf "b"]),
   Tree_t.Inner ("y", [Tree_t.Leaf "b"]))}
);;

test_number 5 (
 Bridge_v.pair_off_bridge bdt
=
(Tree_t.Inner ("x", [Tree_t.Leaf "b"]), Tree_t.Inner ("y", [Tree_t.Leaf "b"]))
);;

test_number 6 (
Bridge_v.characteristic_off_bridge bdt
=
"b"
);;

test_number 7 (
Bridge_v.compare bdt bdt
=
0
);;

test_number 8 (
bdu
  =
  {Bond_t.p_characteristic = "c";
   Bond_t.pair =
    (Tree_t.Inner ("x", [Tree_t.Leaf "b"]),
     Tree_t.Inner ("y", [Tree_t.Leaf "b"]))}
);;

test_number 9 (
Bridge_v.compare bdt bdu
=
-1
);;
