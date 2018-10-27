(** {3 A Brunk data structure functionalities .} *)

(** {6 Making.} *)

val make : 'a list -> 'a Tree_t.tree ->
 'a Brunk_t.brunk
;;

(** {6 Extracting.} *)

val trunk_off_brunk : 'a Brunk_t.brunk ->
  'a list
;;

val branch_off_brunk : 'a Brunk_t.brunk -> 
  'a Tree_t.tree
;;

val list_off_brunk : 'a Brunk_t.brunk -> 
  'a list
;;

val map : ('a -> 'b) -> 
  'a Brunk_t.brunk ->
    'b Brunk_t.brunk
;; 

val iter : ('a -> unit) -> 
  'a Brunk_t.brunk ->
    unit
;; 

val map2 : ('a -> 'b -> 'c) ->
  'a Brunk_t.brunk -> 
    'b Brunk_t.brunk ->
      'c Brunk_t.brunk
;; 

val name : ('a -> string) -> 
  'a Brunk_t.brunk ->
    string
;;

