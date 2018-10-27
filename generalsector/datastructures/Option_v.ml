(** {3 Option Entity.} *)

let some_entity_of_entity ent = Some ent;;

let entity_of_some_entity = function 
  | Some ent -> ent
  | None -> failwith "None_entity:entity_of_some_entity" 
;;

let is_none_of_option_type = function
  | None -> true 
  | Some t -> false
;;

let is_some_of_option_type = function
  | None -> false 
  | Some t -> true
;;

let some_list_of_option_list lst =
  List.map some_entity_of_entity lst
;;

let entity_list_of_option_list opt_l =
  let som_l = List.filter is_some_of_option_type opt_l in
  List.map entity_of_some_entity som_l
;;

let none_list_of_option_list opt_l =
  List.filter is_none_of_option_type opt_l 
;;

let none_number_of_option_list opt_l =
  List.length (none_list_of_option_list opt_l)
;;

let has_none_element_of_option_list opt_l =
  none_number_of_option_list opt_l > 0
;;

let name f = function
  | None -> "None"
  | Some t -> f t
;;


