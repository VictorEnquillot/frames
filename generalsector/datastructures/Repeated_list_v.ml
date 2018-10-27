(** {The functionalities for a repeated List of the same value.} *)


let make_of_element_of_count x idx =
  let i = Index_p.int_of_index idx in
  let rec apply x = function
    | 0 -> []
    | 1 -> [x]
    | k -> x :: apply x (k-1) 
  in 
  apply x i
;;

let rec is_repeated_list_of_list = function
  | [] -> true
  | h :: [] -> true 
  | h :: t -> (h = List.hd t) && (is_repeated_list_of_list t) 
;;

let make lst =
  if (List_v.is_repeated_list_of_list lst) then lst
  else failwith "Not_repeated_list:Repeated_list_v.make"
;;

let list_of_repeated_list rpl =
  rpl
;;

let append rpl_1 rpl_2 =
let l_1 = list_of_repeated_list rpl_1 in
let l_2 = list_of_repeated_list rpl_2 in
if (List.hd l_1 = List.hd l_2) 
then make (List.append l_1 l_2)
else failwith "lists_differ:Repeated_list_v.append"
;;
