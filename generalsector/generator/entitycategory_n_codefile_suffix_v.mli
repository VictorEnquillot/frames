(** {3 The functionalities for an Entitycategory_n_codefile_suffix Doublet.}  *)

(** {6 Making.} *)

val make :
    Entitycategory_t.entitycategory ->
      Codefile_suffix_t.codefile_suffix ->
	Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix
;;

(** {6 Extracting} *)

val entitycategory_off_entitycategory_n_codefile_suffix :
    Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix ->
      Entitycategory_t.entitycategory
;;

val codefile_suffix_off_entitycategory_n_codefile_suffix :
    Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix ->
      Codefile_suffix_t.codefile_suffix
;;

(** {6 Displaying.} *)

val name :
    Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix ->
      string
;;

val abbreviation_module :
    Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix ->
      string
;;

val abbreviation_argument :
    Entitycategory_n_codefile_suffix_t.entitycategory_n_codefile_suffix ->
      string
;;
