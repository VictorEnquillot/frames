open Make_test_v;;

testing "Builder_node_subtree_by_constructor_leaf_trail_provider_v with
   Builder_node_subtree_by_constructor_leaf_trail_provider_u_figureset_formula_triangle_isoceles_equilateral.ml";; 

(* toplevel 
   #use "Builder_node_subtree_by_constructor_leaf_trail_provider_u_figureset_formula_triangle_isoceles_equilateral.ml";; 

*)

let has_tree_of_node_off_tree nod tre = (fun t -> Tree_v.root_node_off_tree t = nod) tre;;

let subtree_of_node_name nam dat tre =
  Tree_v.subtree_of_node_predicate_off_tree (fun (n,d) -> n = nam && d = dat) tre
;;

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_ent = "triangle_isoceles_equilateral";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let fin = Database_filename_by_category_trail_provider_v.provide tra_cat;;

let tra_ent = Trail_v.make "entity" nam_ent tra_cat;;

let nam_lea_nam_dat_t = Builder_node_subtree_by_constructor_leaf_trail_provider_v.provide tra_ent;;

test_number 1 (
fin
(* Filename_p.filename *) 
=
Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/generator/figureset_formulas.set"
);;

test_number 2 (
Builder_node_subtree_by_constructor_leaf_trail_provider_v.is_constructor_leaf_basename_of_entity_trail tra_ent
);;

test_number 3 (
Tree_v.topson_node_list_off_tree nam_lea_nam_dat_t
(* : string list *)
  =
 [("point_3d", "triplet"); ("vector_3d", "duo")]
);;

test_number 4 (
nam_lea_nam_dat_t
(* : (string * string) Tree_t.tree *)
  =
Tree_t.Inner (("triangle_isoceles_equilateral", "doublet"),
	      [Tree_t.Inner (("point_3d", "triplet"),
			     [Tree_t.Inner (("x_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")]);
			      Tree_t.Inner (("y_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")]);
			      Tree_t.Inner (("z_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")])]);
	       Tree_t.Inner (("vector_3d", "duo"),
			     [Tree_t.Inner (("point_3d", "triplet"),
					    [Tree_t.Inner (("x_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")]);
					     Tree_t.Inner (("y_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")]);
					     Tree_t.Inner (("z_3d", "singlet"), [Tree_t.Leaf ("float", "leaf")])])])])
);;

