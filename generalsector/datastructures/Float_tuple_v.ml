let nam_mod = "Float_tuple_v.ml";;

let sigma_of_float_tuple = function
  | Tuple_t.Singlet s -> Singlet_v.element_off_singlet s
  | Tuple_t.Uno (f1) -> f1
  | Tuple_t.Duo (f1, f2) -> f1 +. f2
  | Tuple_t.Trio (f1, f2, f3) -> f1 +. f2 +. f3
  | Tuple_t.Quatuor (f1, f2, f3, f4) -> f1 +. f2 +. f3 +. f4
  | _ -> failwith "Unkown_tuple:Float_tuple_v.sigma_of_float_tuple"
;;

let are_equal_of_epsilon_of_float_tuple_of_float_tuple eps f_t g_t =
  match (f_t, g_t) with
  | (Tuple_t.Singlet f, Tuple_t.Singlet g) -> 
      Float_value_v.are_equal_of_epsilon eps (Singlet_v.element_off_singlet f) (Singlet_v.element_off_singlet g)
  | (Tuple_t.Uno (f), Tuple_t.Uno (g)) ->
      Float_value_v.are_equal_of_epsilon eps f g
  | (Tuple_t.Duo (f1, f2), Tuple_t.Duo (g1, g2)) ->
      (Float_value_v.are_equal_of_epsilon eps f1 g1)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f2 g2)

  | (Tuple_t.Trio (f1, f2, f3), Tuple_t.Trio (g1, g2, g3)) -> 
      (Float_value_v.are_equal_of_epsilon eps f1 g1)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f2 g2)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f3 g3)

  | (Tuple_t.Quatuor (f1, f2, f3, f4), Tuple_t.Quatuor (g1, g2, g3, g4)) ->

      (Float_value_v.are_equal_of_epsilon eps f1 g1)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f2 g2)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f3 g3)
	&& 
      (Float_value_v.are_equal_of_epsilon eps f4 g4)

  | _ -> failwith "Unkown_tuple_couple:Float_tuple_v.are_equal_of_epsilon_of_float_tuple_of_float_tuple eps"
;;

let are_equal_at_epsilon_float_of_float_tuple_of_float_tuple f_t g_t =
  are_equal_of_epsilon_of_float_tuple_of_float_tuple epsilon_float f_t g_t
;;

let norm2_of_float_tuple flo_t =
  let fl2_t = Tuple_v.map (fun f -> f *. f) flo_t in
  sigma_of_float_tuple fl2_t
;;

let norm_of_float_tuple flo_t =
  sqrt (norm2_of_float_tuple flo_t)
;;

let addition_of_float_tuple_of_float_tuple flo_t1 flo_t2 =
  Tuple_v.map2 (fun f g -> f +. g ) flo_t1 flo_t2
;;

let addition_of_float_tuple_duo flo_td =
  let (flo_t1, flo_t2) = flo_td in
  addition_of_float_tuple_of_float_tuple flo_t1 flo_t2
;;

let addition_of_float_tuple_trio flo_tt =
  let (flo_t1, flo_t2, flo_t3) = flo_tt in 
  let flo_t = addition_of_float_tuple_of_float_tuple flo_t1 flo_t2 in
  addition_of_float_tuple_of_float_tuple flo_t flo_t3
;;

let difference_of_float_tuple_of_float_tuple flo_t g_l =
  Tuple_v.map2 (fun f g -> f -. g ) flo_t g_l
;;

let difference_of_float_tuple_duo flo_td =
  let (flo_t1, flo_t2) = flo_td in
  difference_of_float_tuple_of_float_tuple flo_t1 flo_t2
;;

let product_of_float_tuple_of_float_tuple flo_t g_l =
  Tuple_v.map2 (fun f g -> f *. g ) flo_t g_l
;;

let product_of_float_tuple_duo flo_td =
  let (flo_t1, flo_t2) = flo_td in
  product_of_float_tuple_of_float_tuple flo_t1 flo_t2
;;

let product_of_float_tuple_trio flo_tt =
  let (flo_t1, flo_t2, flo_t3) = flo_tt in
  let flo_t = product_of_float_tuple_of_float_tuple flo_t1 flo_t2 in
  product_of_float_tuple_of_float_tuple flo_t flo_t3
;;

let division_of_float_tuple_of_float_tuple flo_t g_l =
  Tuple_v.map2 (fun f g -> f /. g ) flo_t g_l
;;

let division_of_float_tuple_duo flo_td =
  let (flo_t1, flo_t2) = flo_td in
  division_of_float_tuple_of_float_tuple flo_t1 flo_t2
;;

let multiply_of_float_tuple_of_float flo_t flo =
  Tuple_v.map (fun f -> f *. flo) flo_t
;; 

let divide_of_float_tuple_of_float flo_t flo =
  if abs_float flo > epsilon_float
  then
    Tuple_v.map (fun f -> f /. flo) flo_t
  else
    failwith "Float_close_to_zero:Float_tuple_v.divide_of_float_tuple_of_float"
;; 

let name = function
  | Tuple_t.Empty -> ""
  | Tuple_t.Singlet a -> Singlet_v.name String_v.string_of_float a
  | Tuple_t.Uno u -> Uno_v.name String_v.string_of_float u
  | Tuple_t.Duo d -> Duo_v.name String_v.string_of_float d
  | Tuple_t.Trio t -> Trio_v.name String_v.string_of_float t
  | Tuple_t.Quatuor t -> Quatuor_v.name String_v.string_of_float t
  | Tuple_t.Trio_duo (t1, t2) -> Duo_v.name (Trio_v.name String_v.string_of_float) (t1, t2) 
  | Tuple_t.Duo_trio (d1, d2, d3) -> Trio_v.name (Duo_v.name String_v.string_of_float) (d1, d2, d3)
;;

let shortname = function
  | Tuple_t.Empty -> ""
  | Tuple_t.Singlet a -> Singlet_v.name String_v.shortname_of_float a
  | Tuple_t.Uno u -> Uno_v.name String_v.shortname_of_float u
  | Tuple_t.Duo d -> Duo_v.name String_v.shortname_of_float d
  | Tuple_t.Trio t -> Trio_v.name String_v.shortname_of_float t
  | Tuple_t.Quatuor t -> Quatuor_v.name String_v.shortname_of_float t
  | Tuple_t.Trio_duo (t1, t2) -> Duo_v.name (Trio_v.name String_v.shortname_of_float) (t1, t2) 
  | Tuple_t.Duo_trio (d1, d2, d3) -> Trio_v.name (Duo_v.name String_v.shortname_of_float) (d1, d2, d3)
;;



