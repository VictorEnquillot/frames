open Gentest_v;;

testing "Web_state_v";;

(* toplevel 
   #use "tweb_state_v.ml";; 
*)

module Bch_v = Tree_bunch_v
module Fri_t = Fragment_state_t
module Fri_v = Fragment_state_v
module Lst_v = List_v
module Ord_p = Ordinal_p
module Tre_t = Tree_t
module Tre_v = Tree_v
module Sqi_t = Sequence_index_t
module Wbi_t = Web_state_t
module Wbi_v = Web_state_v

(**      
     a
    / \
   b   c
      / \
     d   e
        /|\
       f g h

*)

let b = Tre_v.make "b" [];;
let d = Tre_v.make "d" [];;
let f = Tre_v.make "f" [];;
let g = Tre_v.make "g" [];;
let h = Tre_v.make "h" [];;

let e = Tre_v.make "e" [f; g; h];;
let c = Tre_v.make "c" [d; e];;
let a_t = Tre_v.make "a" [b; c];;

let e_l = Tre_v.list_off_tree e;;
let wbi_e_l = Wbi_v.web_state_list_off_list e_l;;

let wbi_a_t = Wbi_v.web_state_tree_off_tree Wbi_t.Forth a_t;;

let s ="s";;
let s_b = Bch_v.make s a_t;;
let idx_frg = Fri_t.Sequence_index (Sqi_t.Ordinal Ord_p.four);; 
let idx_frg_s_b = Fri_v.fragment_state_tree_bunch_off_tree_bunch idx_frg s_b;;

testi 0 (
a_t 
  =
  Tree_t.Tree ("a",
   [Tree_t.Leaf "b";
    Tree_t.Tree ("c",
     [Tree_t.Leaf "d";
      Tree_t.Tree ("e", [Tree_t.Leaf "f"; Tree_t.Leaf "g"; Tree_t.Leaf "h"])])])
);;

testi 1 (
Wbi_v.web_state_list_off_list e_l (* : Web_state_t.web_state list *)
=
[Web_state_t.Forth; Web_state_t.Up; Web_state_t.Left; Web_state_t.Down]
);;

testi 2 (
Lst_v.name Wbi_v.name wbi_e_l
=
"FULD"
);;

testi 3 (
wbi_a_t
=
Tre_t.Node (Wbi_t.Forth,
 [Tre_t.Leaf Wbi_t.Forth;
  Tre_t.Node (Wbi_t.Up,
   [Tre_t.Leaf Wbi_t.Forth;
    Tre_t.Node (Wbi_t.Up,
     [Tre_t.Leaf Wbi_t.Forth; Tre_t.Leaf Wbi_t.Up; Tre_t.Leaf Wbi_t.Left])])])
);;

(**      
     F
    / \
   F   U
      / \
     F   U
        /|\
       F U L

*)

testi 4 (
Tre_v.name Wbi_v.name wbi_a_t
=
"{F[F {U[F {U[F U L]}]}]}"
);;

testi 5 (
idx_frg_s_b (* : Fragment_state_t.fragment_state Tree_bunch_t.tree_bunch *)
=
(Fragment_state_t.Sequence_index
  (Fragment_state_t.Sqi_t.Ordinal (Fragment_state_t.Sqi_t.Ord_p.Ordinal 4)),
 Tree_bunch_t.Tre_t.Node (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Forth,
  [Tree_bunch_t.Tre_t.Leaf
    (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Forth);
   Tree_bunch_t.Tre_t.Node (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Up,
    [Tree_bunch_t.Tre_t.Leaf
      (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Forth);
     Tree_bunch_t.Tre_t.Node
      (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Up,
      [Tree_bunch_t.Tre_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Forth);
       Tree_bunch_t.Tre_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Up);
       Tree_bunch_t.Tre_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Wbi_t.Left)])])]))
);;

testi 6 (
Bch_v.name Fri_v.name idx_frg_s_b 
=
"(S_4,{W_F[W_F {W_U[W_F {W_U[W_F W_U W_L]}]}]})"
);;

