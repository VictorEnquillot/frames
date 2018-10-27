(** {3 An Index functionalities for an Entity.} *)

(** {6 Making.} *)

(** {6 Converting.} *)

val name_linear_index :
    Entity_index_t.linear_index ->
      string
;;
	
val name_spherical_index :
    Entity_index_t.spherical_index ->
      string
;;
 
val name_entity_index :
    Entity_index_t.entity_index ->
      string
;;

val name :
    Entity_index_t.entity_index ->
      string
;;

val print_linear_index : Format.formatter ->
  Entity_index_t.linear_index ->
    unit
;;
	
val print_spherical_index : Format.formatter ->
  Entity_index_t.spherical_index ->
    unit
;;
 
val print_entity_index : Format.formatter ->
    Entity_index_t.entity_index ->
      unit
;;

val print : Format.formatter ->
  Entity_index_t.entity_index ->
    unit
;;

(** {6 Abbreviating.} *)

val c : Entity_index_t.entity_index;;
val u : Entity_index_t.entity_index;;
val d : Entity_index_t.entity_index;;
val t : Entity_index_t.entity_index;;
val q : Entity_index_t.entity_index;;
val z : Entity_index_t.entity_index;;
val a : Entity_index_t.entity_index;;
val n : Entity_index_t.entity_index;;
val w : Entity_index_t.entity_index;;
val e : Entity_index_t.entity_index;;
val s : Entity_index_t.entity_index;;
val l : Entity_index_t.entity_index;;
val r : Entity_index_t.entity_index;;
val i : Entity_index_t.entity_index;;
val j : Entity_index_t.entity_index;;

val lnu : Entity_index_t.linear_index;; (* uno *)
val lnd : Entity_index_t.linear_index;; (* duo *)
val lnt : Entity_index_t.linear_index;; (* trio *)
val lnq : Entity_index_t.linear_index;; (* quatro *)

val spc : Entity_index_t.spherical_index;; (* center *)
val spz : Entity_index_t.spherical_index;; (* zenith *)
val spa : Entity_index_t.spherical_index;; (* nadir *)
val spn : Entity_index_t.spherical_index;;
val spw : Entity_index_t.spherical_index;;
val spe : Entity_index_t.spherical_index;;
val sps : Entity_index_t.spherical_index;;
val spl : Entity_index_t.spherical_index;;
val spr : Entity_index_t.spherical_index;;
val spi : Entity_index_t.spherical_index;;
val spj : Entity_index_t.spherical_index;;
