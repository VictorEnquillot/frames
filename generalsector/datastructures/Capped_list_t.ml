(** {3 A Capped List.} *)


type ('c, 'b) capped_list = ('c, 'b list) Doublet_t.doublet
;;
(** 
type ('c, 'b) capped_list_element =
| Cap of 'c
| Buried_list of 'b list


val : make_cap : 'c -> ('c, 'b) capped_list;;
val : make_oruried : 'b list -> ('c, 'b) capped_list;;
val : cap_part_off_capped_list : ('c, 'b) capped_list -> 'c;;
val : buried_list_off_capped_list : ('c, 'b) capped_list -> 'b list;;

*)
