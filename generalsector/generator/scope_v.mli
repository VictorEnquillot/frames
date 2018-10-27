(** {3 The functionalities for the Scope for an Entity.}  *)

(** {6 Making.} *)

val make :
    string ->
      Scope_t.scope
;;

(** {6 Displaying.} *)

val name :
    Scope_t.scope ->
      string
;;

val scope_empty : Scope_t.scope;;
val scope_public : Scope_t.scope;;
val scope_private : Scope_t.scope;;
val scope_filename : Filename_p.filename;;

val entitycategory_private_scope_off_string :
    string ->
      Entitycategory_t.entitycategory
;;

val entitycategory_private_scope_list :
    unit ->
      Entitycategory_t.entitycategory list
;;


