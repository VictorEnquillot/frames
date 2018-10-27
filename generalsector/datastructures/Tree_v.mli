(** {3 A Tree data structure.} *)

(** {6 Making.} *)

val empty : 
    'a Tree_t.tree
;;

val make_of_leaf : 
    'a -> 
      'a Tree_t.tree
;;

val make_of_node : 
    'a -> 
      ('a Tree_t.tree) list -> 
	'a Tree_t.tree
;;

val make : 
    'a -> 
      ('a Tree_t.tree) list -> 
	'a Tree_t.tree
;;

val tree_off_list : 
    'a list -> 
      'a Tree_t.tree
;;

(*
val tree_off_wheel : 
    'a Wheel_t.wheel -> 
      'a Tree_t.tree
;;
*)

(** {6 Querying.} *)

val is_inner :
    'a Tree_t.tree -> 
      bool
;;

val is_leaf :
    'a Tree_t.tree -> 
      bool
;;

val is_inner_of_node_off_tree :
    'a ->
      'a Tree_t.tree -> 
	bool
;;

val is_leaf_of_node_off_tree :
    'a ->
      'a Tree_t.tree -> 
	bool
;;

val is_empty : 'a Tree_t.tree -> bool;;

val first_inhomogeneous_node_off_tree :
    'a Tree_t.tree ->
      'a
;;

val first_inhomogeneous_node_n_son_node_off_tree :
    'a Tree_t.tree ->
      'a * 'a
;;

(** {6 Extracting.} *)

val root_off_tree : 'a Tree_t.tree -> 'a;;

val root_node_off_tree : 
    'a Tree_t.tree -> 
      'a
;;

val element_off_leaf : 'a Tree_t.tree -> 'a;;

val root_notleaf_off_tree :
    'a Tree_t.tree -> 
      'a
;;

val topson_tree_list_off_tree : 
    'a Tree_t.tree -> 
      ('a Tree_t.tree) list
;;

val topson_node_list_of_topson_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a list;;

val topson_tree_list_of_topson_tree_predicate_off_tree : 
    ('a Tree_t.tree -> bool) ->
      'a Tree_t.tree -> 
	('a Tree_t.tree) list
;; 

val topson_tree_list_of_topson_node_predicate_off_tree : 
    ('a -> bool) ->
      'a Tree_t.tree -> 
	('a Tree_t.tree) list
;; (** predicate on sontree roots *)

val topson_node_list_off_tree :
    'a Tree_t.tree -> 
      'a list
;;
(** [let l = topson_node_list_off_tree t] 
    is the list of all nodes connected to the root of t.*)

val topson_node_list_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a list
;;
(** [let l = son_list_off_tree p t] 
    is the list of all son nodes where p is true in t.*)

val topson_leaf_node_list_off_tree : 'a Tree_t.tree -> 'a list;; (* [Root; topson list]*)

val root_topson_node_list_off_tree : 'a Tree_t.tree -> 'a list;; (* [Root; topson notleaf list]*)

val root_topson_notleaf_node_list_off_tree : 'a Tree_t.tree -> 'a list;;

val only_topson_leaf_node_off_tree : 'a Tree_t.tree -> 'a;;

val only_topson_leaf_node_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a;;

val left_add_tree_of_topson_tree_of_tree :
    'a Tree_t.tree -> 
      'a Tree_t.tree -> 
	'a Tree_t.tree 
;;

val right_add_tree_of_topson_tree_of_tree :
    'a Tree_t.tree -> 
      'a Tree_t.tree -> 
	'a Tree_t.tree 
;;

val node_list_off_tree : 
    'a Tree_t.tree ->
      'a list
;;
(** [let l = list_off_tree t] 
    is the list of all nodes inside t.*)

val leaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val inner_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val noleaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val topson_notleaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val noroot_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val noroot_noleaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val noroot_notopson_noleaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val core_node_list :
    'a Tree_t.tree ->
      'a list
;;
(** same as noroot_noleaf_node_list_off_tree *)

val middle_node_list : 
    'a Tree_t.tree ->
      'a list
;;
(** same as noroot_notopson_noleaf_node_list_off_tree *)

val grandson_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val grandson_leaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val grandson_notleaf_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val path_tree_off_tree :
    'a Tree_t.tree ->
      'a list Tree_t.tree
;;

val path_list_of_node_off_tree :
    'a ->
      'a Tree_t.tree ->
	'a list list
;;

val path_list_of_node_predicate_off_tree :
    ('a -> bool) ->
      'a Tree_t.tree ->
	'a list list
;;

val leaf_path_list_off_tree : 'a Tree_t.tree -> 'a list list;;

val leaf_of_leaf_predicate_of_node_predicate_off_tree : ('a -> bool) -> ('a -> bool) -> 'a Tree_t.tree -> 'a;;
(** a leaf defined by leaf_predicate of node defined by node_predicate of tree *)

val is_sequential_of_node_n_depth_list :
    ('a * int) list ->
      bool
;;

(** {6 Iterating.} *)

val map :
    ('a -> 'b) -> 
      'a Tree_t.tree ->
	'b Tree_t.tree
;;

val iter : 
    ('a -> unit) -> 
      'a Tree_t.tree ->
	unit
;;

val map2 : 
    ('a -> 'b -> 'c ) -> 
      'a Tree_t.tree -> 
	'b Tree_t.tree ->
	  'c Tree_t.tree 
;;

val first_inhomogeneous_subtree_off_tree : 'a Tree_t.tree -> 'a Tree_t.tree ;;

val root_topson_node_list_of_subtree_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a list;;

val subtree_filter_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> ('a Tree_t.tree) list;;

val subtree_filter_of_tree_predicate_off_tree : ('a Tree_t.tree -> bool) -> 'a Tree_t.tree -> ('a Tree_t.tree) list;;

val subtree_find_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val subtree_find_of_tree_predicate_off_tree : ('a Tree_t.tree -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val subtree_list_off_tree : 'a Tree_t.tree -> 'a Tree_t.tree list;;

val root_n_subtree_doublet_list_off_tree : 'a Tree_t.tree -> ('a * 'a Tree_t.tree) list;;

val node_filter_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a list;;

val node_list_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a list;;

val node_find_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a;;

val only_node_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a;;

val node_count_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> int;;

val is_unique_of_node_off_tree :
    'a ->
      'a Tree_t.tree ->
	bool
;;

val is_unique_of_node_predicate_off_tree :
    ('a -> bool) -> 
      'a Tree_t.tree ->
	bool
;;

val non_unique_node_list_off_tree :
    'a Tree_t.tree ->
      'a list
;;

val subtree_list_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree ->	'a Tree_t.tree list;;
(** All independent subtrees the root of which meets p *)

val remove_empty_subtree_off_tree : 'a Tree_t.tree -> 'a Tree_t.tree;;

val subtree_remove_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;
(** In tree t remove the subtree, the root of which meets predicate p 
    let s = subtree_remove p t *)

val subtree_add : 
    ('a -> bool) -> 
      'a Tree_t.tree -> 
	'a Tree_t.tree ->
	  'a Tree_t.tree
;;
(** In tree t add a new son s to the node which meets predicate p 
    let a = subtree_add p t s *)

val first_subtree_of_node_off_tree : 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;
(** [let s = first_subtree_of_node_off_tree v t. s is the first subtree of t having v as root.*)

val subtree_of_node_off_tree : 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;
(** [let s = subtree_of_node_off_tree v t. s is the only subtree of t having v as root.*)

val first_subtree_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;
(** The first subtree the root of which meets predicate *)

val subtree_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;
(** The only subtree the root of which meets predicate *)

val only_subtree_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val index_tree_off_tree : 
    'i -> ('a Tree_t.tree list -> 'i list) -> 
      'a Tree_t.tree -> 
	'i Tree_t.tree 
;;
(** 'i is some index defined by a tree list mapping. *)

val father_list_off_tree : 'a Tree_t.tree -> 'a list;;

val topson_node_list_off_tree : 'a Tree_t.tree -> 'a list;;

val is_topson_of_node_off_tree : 'a ->  'a Tree_t.tree -> bool;;
(** [let b = is_topson_of_node_off_tree v t] 
    is true if v is a son the root of t.*)

val is_topson_leaf_of_node_off_tree : 'a ->  'a Tree_t.tree -> bool;;

val is_father_of_node_of_sonnode_off_tree : 
 'a -> 'a -> 'a Tree_t.tree ->
    bool
;;
(** [let b = is_father_of_node_of_topson_node_off_tree v s t] 
    is true if v is the father of node s in t.*)

val depth_tree_off_tree :
  'a Tree_t.tree -> 
    int Tree_t.tree 
;;

val subtree_list_of_depth_off_tree :
    int ->
      'a Tree_t.tree ->
	'a Tree_t.tree list
;;

val only_subtree_of_tree_predicate_of_depth_off_tree : ('a Tree_t.tree -> bool) -> int -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val first_subtree_of_tree_predicate_of_depth_off_tree : ('a Tree_t.tree -> bool) -> int -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val node_n_depth_tree_off_tree : 'a Tree_t.tree -> ('a * int) Tree_t.tree;;

val node_n_depth_list_of_node_predicate_off_tree :
    ('a -> bool) -> 
      'a Tree_t.tree -> 
	('a * int) list 
;;

val node_n_depth_list_of_node_of_depth_off_tree :
    'a ->
      int -> 
      'a Tree_t.tree ->
	('a * int) list 
;;

val find_of_node_of_depth_off_tree :
    'a ->
      int -> 
      'a Tree_t.tree ->
	'a 
;;
(** [let v = find_of_node_of_depth_off_tree n d t] 
    
    v is the vertex equal to n and beeing at depth d in tree t

    Fails with "No_element:Tree_v.find_of_node_of_depth_off_tree"
    Fails with "Too_many_elements:find_of_node_of_depth_off_tree"
*)

(** {6 Modifying.} *)

val replace_node : 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val replace_root : 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val replace_leaf : 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val replace_of_vertex_of_value_of_tree : 'a -> 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val replace_of_node_predicate_of_value_of_tree : ('a -> bool) -> 'a -> 'a Tree_t.tree -> 'a Tree_t.tree;;

val replace_subtree_of_node_predicate_of_subtree_of_tree : ('a -> bool) -> 'a Tree_t.tree -> 'a Tree_t.tree -> 'a Tree_t.tree;;

(** {6 Converting.} *)

val name_with_separator : ('a -> string) -> string -> string -> 'a Tree_t.tree -> string;;

val name_in_column : ('a -> string) -> string -> 'a Tree_t.tree -> string;;

val name_linear : ('a -> string) -> string -> 'a Tree_t.tree -> string;;

val name : ('a -> string) -> 'a Tree_t.tree -> string;;

val path_of_node_off_tree :
    'a ->
      'a Tree_t.tree ->
	'a list
;;

val path_of_node_predicate_off_tree :
    ('a -> bool) ->
      'a Tree_t.tree ->
	'a list
;;

val father_of_node_of_tree : 'a -> 'a Tree_t.tree -> 'a;;

val is_complete : 'a Tree_t.tree -> bool;;

val string_of_completeness : 'a Tree_t.tree -> string;;

(** {6 Predicates of Tree} *)

val has_a_topson_leaf_and_a_topson_node_of_leaf_predicate_of_node_predicate_off_tree : ('a -> bool) -> ('a -> bool) -> 'a Tree_t.tree -> bool;;
(** Tree has a topson leaf defined by leaf_predicate and a topson node defined by node_predicate of tree *)

val has_two_nodes_of_node_predicate_of_node_predicate_off_tree : ('a -> bool) -> ('a -> bool) -> 'a Tree_t.tree -> bool;;

val has_all_node_unique_of_tree : 'a Tree_t.tree -> bool;;

val has_homogeneous_son_tree_list_of_tree : 'a Tree_t.tree -> bool;;

val has_homogeneous_topson_tree_list_of_node_of_tree : 'a -> 'a Tree_t.tree -> bool;;

val has_homogeneous_topson_tree_list_of_tree : 'a Tree_t.tree -> bool;;

val has_no_topson_inner_of_tree : 'a Tree_t.tree -> bool;;

val has_no_topson_leaf_of_tree : 'a Tree_t.tree -> bool;;

val has_node_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> bool;;

val has_some_topson_inner_of_tree : 'a Tree_t.tree -> bool;;

val has_some_topson_leaf_of_tree : 'a Tree_t.tree -> bool;;

val has_topson_of_leaf_predicate_of_tree : ('a -> bool) -> 'a Tree_t.tree -> bool;;

val has_topson_of_node_predicate_off_tree : ('a -> bool) -> 'a Tree_t.tree -> bool;;

val has_unique_leaf_son_of_node_of_tree : 'a -> 'a Tree_t.tree ->	bool;;

val has_unique_leaf_son_of_tree : 'a Tree_t.tree -> bool;;

val has_unique_son_of_node_of_tree : 'a -> 'a Tree_t.tree -> bool;;

val has_unique_son_of_tree : 'a Tree_t.tree -> bool;;

(** {6 Predicates of Tree list} *)

val has_some_leaf_of_tree_list : 'a Tree_t.tree list -> bool;;




