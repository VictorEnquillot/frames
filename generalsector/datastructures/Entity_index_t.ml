(* {3 An index for Any Entity} *)


type entity_index =
  | Sequential_index of Sequential_index_t.sequential_index 
  | Vsepr_index of Vsepr_index_t.vsepr_index
;;
