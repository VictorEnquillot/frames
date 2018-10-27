(** {3 The Provider for the Scope for some Entitycategory.} *)

(** {6 Register.} *)

val store :
    Entitycategory_t.entitycategory ->
      Scope_t.scope -> 
	unit
;;

val is_stored :
    Entitycategory_t.entitycategory ->
      bool
;;

val provide :
    Entitycategory_t.entitycategory ->
      Scope_t.scope
;;
