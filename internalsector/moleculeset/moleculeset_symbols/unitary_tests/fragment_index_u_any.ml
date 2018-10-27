open Make_test_v;;

testing "Web_state_v";;

(* toplevel 
   #use "tweb_state_u_any.ml";; 
*)


(**      
     a
    / \
   b   c
      / \
     d   e
        /|\
       f g h

*)

let b = Tree_v.make "b" [];;
let d = Tree_v.make "d" [];;
let f = Tree_v.make "f" [];;
let g = Tree_v.make "g" [];;
let h = Tree_v.make "h" [];;

let e = Tree_v.make "e" [f; g; h];;
let c = Tree_v.make "c" [d; e];;
let a_t = Tree_v.make "a" [b; c];;

let e_l = Tree_v.list_off_tree e;;
let wbi_e_l = Web_state_v.web_state_list_off_list e_l;;

let wbi_a_t = Web_state_v.web_state_tree_off_tree Web_state_t.Forth a_t;;

let s ="s";;
let s_b = Tree_bunch_v.make s a_t;;
let idx_frg = Fragment_state_t.Sequence_index (Sequence_index_t.Ordinal Ordinal_p.four);; 
let idx_frg_s_b = Fragment_state_v.fragment_state_tree_bunch_off_tree_bunch idx_frg s_b;;

test_number 0 (
a_t 
  =
  Tree_t.Tree ("a",
   [Tree_t.Leaf "b";
    Tree_t.Tree ("c",
     [Tree_t.Leaf "d";
      Tree_t.Tree ("e", [Tree_t.Leaf "f"; Tree_t.Leaf "g"; Tree_t.Leaf "h"])])])
);;

test_number 1 (
Web_state_v.web_state_list_off_list e_l (* : Web_state_t.web_state list *)
=
[Web_state_t.Forth; Web_state_t.Up; Web_state_t.Left; Web_state_t.Down]
);;

test_number 2 (
List_v.name Web_state_v.name wbi_e_l
=
"FULD"
);;

test_number 3 (
wbi_a_t
=
Tree_t.Node (Web_state_t.Forth,
 [Tree_t.Leaf Web_state_t.Forth;
  Tree_t.Node (Web_state_t.Up,
   [Tree_t.Leaf Web_state_t.Forth;
    Tree_t.Node (Web_state_t.Up,
     [Tree_t.Leaf Web_state_t.Forth; Tree_t.Leaf Web_state_t.Up; Tree_t.Leaf Web_state_t.Left])])])
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

test_number 4 (
Tree_v.name Web_state_v.name wbi_a_t
=
"{F[F {U[F {U[F U L]}]}]}"
);;

test_number 5 (
idx_frg_s_b (* : Fragment_state_t.fragment_state Tree_bunch_t.tree_bunch *)
=
(Fragment_state_t.Sequence_index
  (Fragment_state_t.Sequence_index_t.Ordinal (Fragment_state_t.Sequence_index_t.Ordinal_p.Ordinal 4)),
 Tree_bunch_t.Tree_t.Node (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Forth,
  [Tree_bunch_t.Tree_t.Leaf
    (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Forth);
   Tree_bunch_t.Tree_t.Node (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Up,
    [Tree_bunch_t.Tree_t.Leaf
      (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Forth);
     Tree_bunch_t.Tree_t.Node
      (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Up,
      [Tree_bunch_t.Tree_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Forth);
       Tree_bunch_t.Tree_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Up);
       Tree_bunch_t.Tree_t.Leaf
        (Fragment_state_t.Web_state Fragment_state_t.Web_state_t.Left)])])]))
);;

test_number 6 (
Tree_bunch_v.name Fragment_state_v.name idx_frg_s_b 
=
"(S_4,{W_F[W_F {W_U[W_F {W_U[W_F W_U W_L]}]}]})"
);;

