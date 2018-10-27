open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_naturalset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "natural" [];;

let nam_con_t = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_con_t
(* : string Tree_t.tree *)
  =
 Tree_t.Inner ("natural",
   [Tree_t.Inner ("expression",
     [Tree_t.Inner ("expression_atomic",
       [Tree_t.Inner ("expression_atomic_digit",
         [Tree_t.Leaf "zero";
	  Tree_t.Leaf "one";
	  Tree_t.Leaf "two";
          Tree_t.Leaf "three";
	  Tree_t.Leaf "four";
	  Tree_t.Leaf "five";
          Tree_t.Leaf "six";
	  Tree_t.Leaf "seven";
	  Tree_t.Leaf "eight";
          Tree_t.Leaf "nine"]);
        Tree_t.Leaf "variable:ofstring"]);
      Tree_t.Leaf "expression_composite"]);
    Tree_t.Inner ("token",
		  [Tree_t.Inner ("operation",
				 [Tree_t.Leaf "successor";
				  Tree_t.Leaf "addition";
				  Tree_t.Leaf "multiplication"]);
		   Tree_t.Leaf "leftparenthesis";
		   Tree_t.Leaf "rightparenthesis"])])
);;

let son_tl = Tree_v.topson_tree_list_off_tree nam_con_t;;

let subtree_of_node_name nam tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun n -> n = nam) tre
;;

let son_l = Tree_v.topson_node_list_off_tree nam_con_t;;

test_number 2 (
son_l
(* : string list *)
  = 
["expression"; "token"]
);;

let lea_l = Tree_v.leaf_node_list_off_tree nam_con_t;;

test_number 3 (
lea_l
=
 ["zero"; "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight";
   "nine"; "variable:ofstring"; "expression_composite"; "successor";
   "addition"; "multiplication"; "leftparenthesis"; "rightparenthesis"]
);;
