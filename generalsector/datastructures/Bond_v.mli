(** {3 functionalities for all kind of Bond_state.} *)

(** {6 Making.} *)

val make_orond_extended : 'a -> 'b list ->
  ('a, 'b) Bond_t.bond_extended
;;

val make_orond_pair : 'a -> 'b -> 'b -> 
  ('a, 'b) Bond_t.bond_pair
;;

val characteristic_off_bond : ('a, 'b) Bond_t.bond -> 
  'a
;;

val characteristic_off_bond_extended : ('a, 'b) Bond_t.bond_extended -> 
  'a
;;

val characteristic_off_bond_pair : ('a, 'b) Bond_t.bond_pair -> 
  'a
;;

val element_list_off_bond_extended : ('a, 'b) Bond_t.bond_extended ->
  'b list
;;

val pair_off_bond_pair : ('a, 'b) Bond_t.bond_pair ->
  'b * 'b
;;

val bond_pair_off_bond : ('a, 'b) Bond_t.bond ->
  ('a, 'b) Bond_t.bond_pair 
;;

val left_off_bond_pair : ('a, 'b) Bond_t.bond_pair ->
 'b
;;
 
val right_off_bond_pair : ('a, 'b) Bond_t.bond_pair ->
 'b
;;
 
(** {6 Converting.} *)

val name_bond_extended : ('a -> string) ->
  ('b -> string) ->
    ('a, 'b) Bond_t.bond_extended ->
      string
;;

val name_bond_pair : ('a -> string) ->
  ('b -> string) ->
    ('a, 'b) Bond_t.bond_pair ->
      string
;;

val name : ('a -> string) ->
  ('b -> string) ->
    ('a, 'b) Bond_t.bond ->
      string
;;
