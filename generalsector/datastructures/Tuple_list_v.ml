let nam_mod = "Tuple_list_v";;

let name f tup_l =
  let nam_l = List.map (Tuple_v.name f) tup_l in
  List_v.name (fun s->s) nam_l
;;

let name_in_column f tup_l =
  let nam_l = List.map (Tuple_v.name f) tup_l in
  List_v.name_in_column (fun s->s) nam_l
;;

let tuple_list_of_list lis =
  try 
    let tri_l = Trio_list_v.trio_list_of_list lis in
    List.map Tuple_v.tuple_of_trio tri_l 
  with Failure _ ->
  try 
    let duo_l = Duo_list_v.duo_list_of_list lis in
    List.map Tuple_v.tuple_of_duo duo_l 
  with Failure _ ->
    List.map Tuple_v.tuple_of_uno lis 
;;

let list_list_of_tuple_list tup_l =
  List.map Tuple_v.list_of_tuple tup_l 
;;

let list_of_tuple_list tup_l =
  List.flatten (list_list_of_tuple_list tup_l)
;;

let first_list_off_tuple_list tup_l =
  List.map Tuple_v.first_off_tuple tup_l
;;

let second_list_off_tuple_list tup_l =
  List.map Tuple_v.second_off_tuple tup_l
;;

let third_list_off_tuple_list tup_l =
  List.map Tuple_v.third_off_tuple tup_l
;;

let is_repeated_tuple_list_of_tuple_list tup_l =
  let lis = list_of_tuple_list tup_l in
  List_v.is_repeated_list_of_list lis
;;

let only_element_of_repeated_tuple_list tup_l =
  let lis = list_of_tuple_list tup_l in
  List_v.only_element_of_repeated_list lis
;;

let make lis = tuple_list_of_list lis;;

let map f tup_l =
  List.map (Tuple_v.map f) tup_l
;;

let map2 f tu1_l tu2_l =
  List.map2 (Tuple_v.map2 f) tu1_l tu2_l
;;

let are_equal_at_epsilon_float_of_float_tuple_list_of_float_tuple_list f1_tl f2_tl =
  let boo_tl = map2 Float_value_v.are_equal_at_epsilon_float f1_tl f2_tl in 
  only_element_of_repeated_tuple_list boo_tl
;;
