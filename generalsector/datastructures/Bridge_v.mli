(** {3 The functionalities of a Bridge.} *)

(** {6 Making.} *)

val make : 'a -> 'b -> 'b ->
    ('a, 'b) Bridge_t.bridge
;;

(** {6 Extracting.} *)

val pair_off_bridge : ('a, 'b) Bridge_t.bridge ->
  'b Pair_t.pair
;;

val pair_left_off_bridge : ('a, 'b) Bridge_t.bridge -> 
  'b
;;

val pair_right_off_bridge : ('a, 'b) Bridge_t.bridge -> 
  'b
;;

val characteristic_off_bridge : ('a, 'b) Bridge_t.bridge ->
  'a
;;

(** {6 Comparing.} *)

val compare : ('a, 'b) Bridge_t.bridge ->
  ('a, 'b) Bridge_t.bridge -> 
    int
;;

(** {6 Converting.} *)

val print : (Format.formatter -> 'a -> unit ) -> 
  (Format.formatter -> 'b -> unit ) -> 
    Format.formatter -> ('a, 'b) Bridge_t.bridge ->
      unit
;;

val name : ('a -> string ) -> 
  ('b -> string ) -> 
   ('a, 'b) Bridge_t.bridge ->
      string
;;

val bridge_off_edge_bridged_pair : 'a Tree_edge_t.edge Pair_t.pair -> 
  ('a, 'a) Bridge_t.bridge
;;
(** A Pair of Edges each having a bridge as the right element.
     b_a = ((x_l, b_a), (y_l, b_a)) 
 *)
