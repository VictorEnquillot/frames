(** {3 A Chunk data structure.} *)

(** It is an element of a fir-tree 
    It is a piece of trunk with one branch
    or a base.

        -------
          | |  a piece of trunk with one branch
          | |
 Brunk    | |______//__
          | |----\\----  <--- branch (a tree)
          | |     \\
        -------
 Clod     | |  a piece of trunk without any branch
          | |
        -------
*)


type 'a chunk = 
  | Clod of 'a
  | Brunk of 'a Brunk_t.brunk
  | Log of 'a chunk list   (* fir ? *)
;;
(** It doublets a tree to a piece of trunk as in a fir-tree
    or it is a Clod or a list of chunk.
*)
