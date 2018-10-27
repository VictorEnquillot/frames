(** {3 A doublet_tree data structure.} *)
(**
{[
                 (n,i)
                 /  \
              (n,i) (n,i) 
              / \
           (n,i)(n,i)

]} *)


type ('n, 'i) doublet_tree = ('n, 'i) Doublet_t.doublet Tree_t.tree
;;
(** All tree nodes may be indexed which differs from Indexed_tree. *)
