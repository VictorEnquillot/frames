(** {3 A Bridge between two Entities.} *)


type ('a, 'b) bridge = ('a, 'b) Bond_t.bond_pair 
;;
(** A bridge is a Bond Pair which is a tree vertex and not a tree edge.
           t

          . .
         .   .
        /     \
       x       y  (x, b) and (y, b) are edge-bridged
       |       |  two tree edges bridged by b
       b ----- b

        bridge b

 It is used to define ring closure, SS bridges ... 

Remind :
 type ('a, 'b) bond_pair = {
    p_characteristic : 'a;
    pair : 'b Pair_t.pair; 
 }
 ;;

*)
