let nam_mod = "Tuple_v.ml";;

let empty = Tuple_t.Empty;;

let tuple_of_tuple a = 
  a
;;

let tuple_of_singlet a = 
  if Singlet_v.is_singlet a 
  then Tuple_t.Singlet a
  else failwith "Not_a_Singlet:Tuple_v.tuple_of_singlet"
;;

let tuple_of_uno (a) = 
  Tuple_t.Uno (a)
;;

let tuple_of_duo (a, b) = 
  Tuple_t.Duo (a, b)
;;

let tuple_of_trio (a, b, c) = 
  Tuple_t.Trio (a, b, c)
;;

let tuple_of_quatuor (a, b, c, d) = 
  Tuple_t.Quatuor (a, b, c, d)
;;

let is_empty = function
  | Tuple_t.Empty -> true
  | _ -> false
;;

let is_singlet = function
  | Tuple_t.Singlet _ -> true
  | _ -> false
;;

let is_uno = function
  | Tuple_t.Uno _ -> true
  | _ -> false
;;

let is_duo = function
  | Tuple_t.Duo _ -> true
  | _ -> false
;;

let is_trio = function
  | Tuple_t.Trio _ -> true
  | _ -> false
;;

let is_quatuor = function
  | Tuple_t.Quatuor _ -> true
  | _ -> false
;;

let singlet_off_tuple = function
  | Tuple_t.Singlet s -> s
  | _ -> failwith ("Not_a_singlet:"^nam_mod^".singlet_off_tuple")
;;

let uno_of_tuple = function
  | Tuple_t.Uno (a) -> (a)
  | _ -> failwith ("Not_a_uno:"^nam_mod^".uno_of_tuple")
;;

let duo_of_tuple = function
  | Tuple_t.Duo (a, b) -> (a, b)
  | _ -> failwith ("Not_a_duo:"^nam_mod^".duo_of_tuple")
;;

let trio_of_tuple = function
  | Tuple_t.Trio (a, b, c) -> (a, b, c)
  | _ -> failwith ("Not_a_trio:"^nam_mod^".trio_of_tuple")
;;

let quatuor_off_tuple = function
  | Tuple_t.Quatuor (a, b, c, d) -> (a, b, c, d)
  | _ -> failwith ("Not_a_quatuor:"^nam_mod^".quatuor_off_tuple")
;;

let duo_trio_of_tuple = function
  | Tuple_t.Duo_trio (d1, d2, d3) -> (d1, d2, d3)
  | _ -> failwith ("Not_a_duo_trio:"^nam_mod^".duo_trio_of_tuple")
;;

let trio_duo_of_tuple = function
  | Tuple_t.Trio_duo (t1, t2) -> (t1, t2)
  | _ -> failwith ("Not_a_trio_duo:"^nam_mod^".trio_duo_of_tuple")
;;

let first_off_tuple = function
  | Tuple_t.Singlet s -> Singlet_v.first_off_singlet s 
  | Tuple_t.Uno u -> Uno_v.first_off_uno u
  | Tuple_t.Duo d -> Duo_v.first_off_duo d
  | Tuple_t.Trio t -> Trio_v.first_off_trio t
  | Tuple_t.Quatuor q -> Quatuor_v.first_off_quatuor q
  | _ -> failwith "Not_a_defined_Tuple:Tuple_v.first_off_tuple"
;;

let second_off_tuple = function
  | Tuple_t.Singlet _ 
  | Tuple_t.Uno _ -> 
      failwith "No_second_element:Tuple_v.second_off_tuple"
  | Tuple_t.Duo d -> Duo_v.second_off_duo d
  | Tuple_t.Trio t -> Trio_v.second_off_trio t
  | Tuple_t.Quatuor q -> Quatuor_v.second_off_quatuor q
  | _ -> 
      failwith "Not_a_defined_Tuple:Tuple_v.second_off_tuple"
;;

let third_off_tuple = function
  | Tuple_t.Singlet _ 
  | Tuple_t.Uno _
  | Tuple_t.Duo _ -> 
      failwith "No_third_element:Tuple_v.third_off_tuple"
  | Tuple_t.Trio t -> Trio_v.third_off_trio t
  | Tuple_t.Quatuor q -> Quatuor_v.third_off_quatuor q
  | _ -> 
      failwith "Not_a_defined_Tuple:Tuple_v.third_off_tuple"
;;

let map f = function
  | Tuple_t.Empty -> Tuple_t.Empty
  | Tuple_t.Singlet s -> tuple_of_singlet (Singlet_v.map f s)
  | Tuple_t.Uno u -> tuple_of_uno (Uno_v.map f u)
  | Tuple_t.Duo d -> tuple_of_duo (Duo_v.map f d)
  | Tuple_t.Trio t -> tuple_of_trio (Trio_v.map f t)
  | Tuple_t.Quatuor q -> tuple_of_quatuor (Quatuor_v.map f q)
  | _ -> failwith ""
;;

let map2 f tup_1 tup_2 =
  match (tup_1, tup_2) with
  | (Tuple_t.Empty, Tuple_t.Empty) -> Tuple_t.Empty
  | (Tuple_t.Singlet a, Tuple_t.Singlet b) -> tuple_of_singlet (Singlet_v.map2 f a b)
  | (Tuple_t.Uno u, Tuple_t.Uno e) -> tuple_of_uno (Uno_v.map2 f u e)
  | (Tuple_t.Duo d, Tuple_t.Duo e) -> tuple_of_duo (Duo_v.map2 f d e)
  | (Tuple_t.Trio t, Tuple_t.Trio u) -> tuple_of_trio (Trio_v.map2 f t u)
  | (Tuple_t.Quatuor t, Tuple_t.Quatuor u) -> tuple_of_quatuor (Quatuor_v.map2 f t u)
  | _ -> failwith "Not_a_valid_couple_of_tuple:Tuple_v.map2"
;;

let iter f = function
  | Tuple_t.Empty -> ();
  | Tuple_t.Singlet a -> Singlet_v.iter f a;
  | Tuple_t.Uno u -> Uno_v.iter f u;
  | Tuple_t.Duo d -> Duo_v.iter f d;
  | Tuple_t.Trio t -> Trio_v.iter f t;
  | Tuple_t.Quatuor t -> Quatuor_v.iter f t;
  | _ -> failwith ""
;;

let name f = function
  | Tuple_t.Empty -> ""
  | Tuple_t.Singlet a -> Singlet_v.name f a
  | Tuple_t.Uno u -> Uno_v.name f u
  | Tuple_t.Duo d -> Duo_v.name f d
  | Tuple_t.Trio t -> Trio_v.name f t
  | Tuple_t.Quatuor t -> Quatuor_v.name f t
  | Tuple_t.Trio_duo (t1, t2) -> Duo_v.name (Trio_v.name f) (t1, t2) 
  | Tuple_t.Duo_trio (d1, d2, d3) -> Trio_v.name (Duo_v.name f) (d1, d2, d3)
;;

let list_of_tuple = function
  | Tuple_t.Empty -> []
  | Tuple_t.Singlet s -> Singlet_v.list_off_singlet s
  | Tuple_t.Uno u -> Uno_v.list_of_uno u
  | Tuple_t.Duo d -> Duo_v.list_of_duo d
  | Tuple_t.Trio t -> Trio_v.list_of_trio t
  | Tuple_t.Quatuor t -> Quatuor_v.list_of_quatuor t
  | Tuple_t.Trio_duo (t1, t2) -> (Trio_v.list_of_trio t1) @ (Trio_v.list_of_trio t2) 
  | Tuple_t.Duo_trio (d1, d2, d3) -> (Duo_v.list_of_duo d1) @ ((Duo_v.list_of_duo d1) @ (Duo_v.list_of_duo d1))  
;;

let tuple_of_list e_l =
  let nam_fun = "tuple_of_list" in
  
  let len = List.length e_l in
  match len with
  | 0 -> empty
  | 1 -> tuple_of_uno (Uno_v.uno_of_list e_l)
  | 2 -> tuple_of_duo (Duo_v.duo_of_list e_l)
  | 3 -> tuple_of_trio (Trio_v.trio_of_list e_l)
  | 4 -> tuple_of_quatuor (Quatuor_v.quatuor_of_list e_l)
  | n -> Error_messages_v.print_fatal_error nam_mod nam_fun
	"List length were smaller than 4 (no Tuple higher than Quatuor)"
	(Format.sprintf "List length is >%i<" len)
	"Check or add it"
;;

let sigma_of_integer_tuple = function
  | Tuple_t.Singlet s -> Singlet_v.element_off_singlet s
  | Tuple_t.Uno i -> i
  | Tuple_t.Duo (i1, i2) -> i1 + i2
  | Tuple_t.Trio (i1, i2, i3) -> i1 + i2 + i3
  | Tuple_t.Quatuor (i1, i2, i3, i4) -> i1 + i2 + i3 + i3
  | _ -> failwith "Unkown_tuple:Tuple_v.sigma_of_integer_tuple"
;;

let is_repeated_tuple_of_tuple tup =
  let lis = list_of_tuple tup in
  List_v.is_repeated_list_of_list lis
;;

let only_element_of_repeated_tuple tup =
  let lis = list_of_tuple tup in
  List_v.only_element_of_repeated_list lis
;;

let is_true_of_predicate_of_tuple pred tup =
  match tup with 
  | Tuple_t.Singlet _ -> true
  | Tuple_t.Uno _ -> true
  | Tuple_t.Duo (d1, d2) -> 
     (pred d1 d2)
  | Tuple_t.Trio (t1, t2, t3) -> 
      (pred t1 t2)
      && 
      (pred t2 t3)
  | _ -> failwith "Unkown_tuple:Tuple_v.is_homogeneous_of_predicate_of_tuple"
;;

