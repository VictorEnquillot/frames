open Make_test_v;;

testing "Doublet_tree_v";;

(* toplevel 
   #use "doublet_tree_u_any.ml";; 
*)


(**      
----------------------
      1.         nabc
      0
     / \
  21.  22. nbc
   1    2
                         a node has no index in nabc tree
                         v leaf has index 1 in nabc tree
                         nbc sub-tree has index 2 in nabc tree         
---------------------
       22.       nbc
        2
       / \
     221. 222. nc
      1    2
                         b node has no index in nbc tree
                         w leaf has index 1 in nbc tree
                         nc sub-tree has index 2 in nbc tree         
---------------------
          222.     nc     c node has no index in nc tree
           2
          /|\
         / | \
   2221. 2222. 2223.
    1      2    3
                         x leaf has index 1 in nc tree         
                         y leaf has index 2 in nc tree         
                         z leaf has index 3 in nc tree         
*)

let v = Dtr_v.make_of_leaf (21., 1);;
let w = Dtr_v.make_of_leaf (221., 1);;
let x = Dtr_v.make_of_leaf (2221., 1);;
let y = Dtr_v.make_of_leaf (2222., 2);;
let z = Dtr_v.make_of_leaf (2223., 3);;

let nc = Dtr_v.make_of_node (222., 2) [ x; y; z];;
let nbc = Dtr_v.make_of_node (22., 2) [ w; nc];;
let nabc = Dtr_v.make_of_node (1., 0) [ v; nbc];;

test_number 1 ( 
v 
(* : (float, int) Doublet_tree_t.doublet_tree *)
= 
Tree_t.Leaf (21., 1)
);;

test_number 2 ( 
nc 
(* : (float, int) Doublet_tree_t.doublet_tree *)
=
Tree_t.Inner ((222., 2),
	     [Tree_t.Leaf (2221., 1); 
	      Tree_t.Leaf (2222., 2); 
	      Tree_t.Leaf (2223., 3)])
);;

test_number 3 (
nbc  
(* : (float, int) Doublet_tree_t.doublet_tree *)
=
Tree_t.Inner ((22., 2),
	     [Tree_t.Leaf (221., 1);
	      Tree_t.Inner ((222., 2),
			   [Tree_t.Leaf (2221., 1); 
			    Tree_t.Leaf (2222., 2); 
			    Tree_t.Leaf (2223., 3)
			  ])
	    ])
);;

test_number 4 ( 
nabc
(* : (float, int) Doublet_tree_t.doublet_tree *)
  =
Tree_t.Inner ((1., 0),
	     [Tree_t.Leaf (21., 1);
	      Tree_t.Inner ((22., 2),
			   [Tree_t.Leaf (221., 1);
			    Tree_t.Inner ((222., 2),
					 [Tree_t.Leaf (2221., 1); 
					  Tree_t.Leaf (2222., 2); 
					  Tree_t.Leaf (2223., 3)
					])
			  ])
	    ])
);;

test_number 5 ( 
Dtr_v.map (fun f -> f *. (-1.) ) (fun i -> i * 10) nabc 
(* : (float, int) Doublet_tree_t.doublet_tree *)
=
  Tree_t.Inner ((-1., 0),
	       [Tree_t.Leaf (-21., 10);
		Tree_t.Inner ((-22., 20),
			     [Tree_t.Leaf (-221., 10);
			      Tree_t.Inner ((-222., 20),
					   [Tree_t.Leaf (-2221., 10); 
					    Tree_t.Leaf (-2222., 20);
					    Tree_t.Leaf (-2223., 30)
					  ])
			    ])
	      ])
);;

test_number 6 ( 
Dtr_v.root_doublet_off_doublet_tree nc 
(*: string *)
= 
(222., 2)
);;

test_number 7 ( 
Dtr_v.son_doublet_tree_list_off_doublet_tree nabc
(* : (float, int) Doublet_tree_t.doublet_tree list *)
=
[Tree_t.Leaf (21., 1);
 Tree_t.Inner ((22., 2),
	      [Tree_t.Leaf (221., 1);
	       Tree_t.Inner ((222., 2),
			    [Tree_t.Leaf (2221., 1); 
			     Tree_t.Leaf (2222., 2); 
			     Tree_t.Leaf (2223., 3)])])]
);;

test_number 8 (
Dtr_v.son_doublet_tree_list_of_predicate_of_doublet_tree (fun (n, i) -> i = 1) nabc
(* : (float, int) Doublet_tree_t.doublet_tree list *)
=
[]
);;

test_number 9 (
Dtr_v.son_doublet_node_list_off_doublet_tree nabc
(* : (float, int) Doublet_t.doublet list *)
= 
[(21., 1); (22., 2)]
);;

test_number 10 (
Dtr_v.son_doublet_node_list_of_predicate_of_doublet_tree (fun (n, i) -> i = 1) nabc
=
[]
);;

test_number 11 (
Dtr_v.doublet_list_off_doublet_tree nabc
(* : (float, int) Doublet_list_t.doublet_list *)
=
[(1., 0); (21., 1); (22., 2); (221., 1); (222., 2); (2221., 1); (2222., 2);
 (2223., 3)]
);;

test_number 12 (
Dtr_v.left_tree_off_doublet_tree nabc
(* : float Tree_t.tree *) =
Tree_t.Inner (1.,
	     [Tree_t.Leaf 21.;
	      Tree_t.Inner (22.,
			   [Tree_t.Leaf 221.;
			    Tree_t.Inner (222.,
					 [Tree_t.Leaf 2221.; 
					  Tree_t.Leaf 2222.; 
					  Tree_t.Leaf 2223.])
			  ])
	    ])
);;

test_number 13 (
Dtr_v.right_tree_off_doublet_tree nabc
(* : int Tree_t.tree *)
  =
Tree_t.Inner (0,
	     [Tree_t.Leaf 1;
	      Tree_t.Inner (2,
			   [Tree_t.Leaf 1;
			    Tree_t.Inner (2, 
					 [Tree_t.Leaf 1; 
					  Tree_t.Leaf 2; 
					  Tree_t.Leaf 3])
			  ])
	    ])
);;  


test_number 14 (
Dtr_v.replace_doublet_root (5., 5) nabc 
(* : (float, int) Doublet_tree_t.doublet_tree *) 
  =
Tree_t.Inner ((5., 5),
	     [Tree_t.Leaf (21., 1);
	      Tree_t.Inner ((22., 2),
			   [Tree_t.Leaf (221., 1);
			    Tree_t.Inner ((222., 2),
					 [Tree_t.Leaf (2221., 1); 
					  Tree_t.Leaf (2222., 2); 
					  Tree_t.Leaf (2223., 3)])
			  ])
	    ])
);;

test_number 15 ( 
Dtr_v.name (fun f -> Format.sprintf "%f" f) (fun i -> Format.sprintf "%i" i) nabc 
(*: string *)
= 
"{(1.000000,0)[(21.000000,1) {(22.000000,2)[(221.000000,1) {(222.000000,2)[(2221.000000,1) (2222.000000,2) (2223.000000,3)]}]}]}"
);;

