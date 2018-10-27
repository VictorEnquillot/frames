(** {3 A Chunk data structure functionalities .} *)

(** {6 Making.} *)

val make_orrunk : 'a list -> 'a Tree_t.tree ->
 'a Chunk_t.chunk
;;

(** {6 Extracting.} *)

val clod_off_chunk : 'a Chunk_t.chunk ->
  'a 
;;

val brunk_off_chunk : 'a Chunk_t.chunk ->
 'a Brunk_t.brunk
;;

val branch_off_chunk : 'a Chunk_t.chunk -> 
  'a Tree_t.tree
;;

val log_off_chunk : 'a Chunk_t.chunk -> 
  'a Chunk_t.chunk list
;;

val map : ('a -> 'b) -> 'a Chunk_t.chunk ->
  'b Chunk_t.chunk
;; 

val iter : ('a -> unit) -> 'a Chunk_t.chunk ->
  unit
;; 

val map2 : ('a -> 'b -> 'c) ->
  'a Chunk_t.chunk -> 
    'b Chunk_t.chunk ->
      'c Chunk_t.chunk
;; 

val name : ('a -> string) -> 
  'a Chunk_t.chunk ->
    string
;;

