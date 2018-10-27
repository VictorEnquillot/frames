(** {3 The functionalities for a Singlet.} *)

let nam_mod = "Singlet_v";;

(** {6 Making.} *)
  
let make sin = 
  Singlet_t.Singlet sin
;;

let is_singlet = function
  | Singlet_t.Singlet sin -> true
;;

let element_off_singlet = function
  | Singlet_t.Singlet sin -> sin
;;

let first_off_singlet = element_off_singlet;;

let left_off_singlet = element_off_singlet;;

let singlet_off_list lis =
  if List.length lis <> 1
  then failwith "Not_a_one_element_list:List_v.ml.singlet_of_list"
  else
    begin
      let sin = List.hd lis in 
      make sin
    end
;;

(** {6 Iterating} *)

let map f sin =
  let sin = element_off_singlet sin in
  make (f sin)
;;

let map2 f sin_1 sin_2 =
  let e_1 = element_off_singlet sin_1 in
  let e_2 = element_off_singlet sin_2 in
  make (f e_1 e_2)
;;

let iter f sin =
  let sin = element_off_singlet sin in
  f sin
;;

let iter2 f sin_1 sin_2 =
  let e_1 = element_off_singlet sin_1 in
  let e_2 = element_off_singlet sin_2 in
  f e_1 e_2
;;

let list_off_singlet sin =
  let sin = element_off_singlet sin in
  [sin]
;;

let print prt_t ppf sin =
  let sin = element_off_singlet sin in
  Format.fprintf ppf "%a" prt_t sin
;;

(** {6 Naming} *)

let name nam_t sin =
  let sin = element_off_singlet sin in
  Format.sprintf "%s" (nam_t sin)
;;


