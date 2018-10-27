open Make_test_v;;

testing "Brunk_v";;

(* toplevel 
   #use "Brunk_u_any.ml";; 

*)


(**      

  s--t--u--v 

     a
    / \
   b   c
      /|\
     d e f

*)

let s ="s";;
let t ="t";;
let u ="u";;
let v ="v";;

let t_l = [s; t; u; v];;

let b = Tree_v.make "b" [];;
let d = Tree_v.make "d" [];;
let e = Tree_v.make "e" [];;
let f = Tree_v.make "f" [];;

let c = Tree_v.make "e" [d; e; f];;

let b_t = Tree_v.make "a" [b; c];;

let brk = Brunk_v.make t_l b_t;;
let brk_2 = Brunk_v.map String.uppercase brk;;

test_number 1 ( 
t_l (* : string list *)
  =
["s"; "t"; "u"; "v"]
);;

test_number 2 (
 b_t (* : string Tree_t.tree *)
   =
 Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e", [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])])
);;

test_number 3 (
brk (* : (string list, string Tree_t.tree) Doublet_t.doublet *)
= 
(t_l, b_t)
);;

test_number 4 (
 brk_2 (* : (string list, string Tree_t.tree) Doublet_t.doublet  *)
=
(["S"; "T"; "U"; "V"],
 Tree_t.Inner ("A",
  [Tree_t.Leaf "B";
   Tree_t.Inner ("E", [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]))
);;

test_number 5 (
Brunk_v.trunk_off_brunk brk
=
t_l
);;

test_number 6 (
Brunk_v.branch_off_brunk brk
=
b_t
);;

test_number 7 (
Brunk_v.list_off_brunk brk
=
["s"; "t"; "u"; "v"; "a"; "b"; "e"; "d"; "e"; "f"]
);;

test_number 8 (
Brunk_v.map2 (fun s t -> s^":"^t) brk brk_2
=
(["s:S"; "t:T"; "u:U"; "v:V"],
 Tree_t.Inner ("a:A",
  [Tree_t.Leaf "b:B";
   Tree_t.Inner ("e:E",
    [Tree_t.Leaf "d:D"; Tree_t.Leaf "e:E"; Tree_t.Leaf "f:F"])]))
);;

let nam = Brunk_v.name (fun s -> s ) brk;;

test_number 9 (
nam
=
"([ s;t;u;v ], {a,\n[ b {e,\n[ d e f ]} ]})"
);;
