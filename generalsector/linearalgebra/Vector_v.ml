(** {3 Specific functionalities for a Vector (not Array of float. } *)

let nam_mod = "Vector_v";;

(** {Aliasing} *)


let length = List.length
;;

let zero_of_int len = List_v.same_element_list_of_element_of_length 0. len
;;

let unity_of_int len = List_v.same_element_list_of_element_of_length 1. len
;;

let nonzero_at_int_of_float_of_int pos f len = 
  if pos > (len-1)
  then
    failwith "Vector_v.nonzero_at_int_of_float_of_int : position exceeds length"
  else
    let rec apply = function
      | 0 -> []
      | n -> 
	  let hd =
	    if pos = (len -n) then f else 0.
          in
	  hd :: apply (n-1) 
    in
    apply len
;; 

let unity_at_int_of_int nth len = nonzero_at_int_of_float_of_int nth 1. len  

let rec float_triplet_list_of_list = function
  | [] -> []
  | f::[] -> failwith 
	("Vector_v.float_triplet_list_of_list: need two more elements")
  | f::s::[] -> failwith 
	("Vector_v.float_triplet_list_of_list: need one more element")
  | f::s::t::tail -> (f, s, t) :: (float_triplet_list_of_list tail)  
;;

let sigma vct =
  List_v.sigma_of_list_float vct
;;

let pair_product v_1 v_2 =
  List.map2 (fun x y -> x *. y) v_1 v_2
;;

let dot_product vct_1 vct_2 =
  sigma (pair_product vct_1 vct_2)
;;

let norm2 vct =
  List_v.sigma_of_function_of_list_float (fun x -> x *. x) vct  
;;

let modulus vct =
  sqrt (norm2 vct) 
;;

let norm = modulus;;

let minus vct =
  List.map (fun x -> -1.0 *. x) vct
;;

let addition v_1 v_2 =
  List.map2 (fun x y -> x +. y) v_1 v_2
;;

let difference v_1 v_2 =
  List.map2 (fun x y -> x -. y) v_1 v_2
;;

let is_equal_at_epsilon_float v_1 v_2 =
  modulus (difference v_1 v_2) < epsilon_float
;;

let is_equal_at_epsilon eps v_1 v_2 =
  modulus (difference v_1 v_2) < eps
;;

let scaling vct scl =
  List.map (fun x -> x *. scl) vct
;;

let dividing vct scl =
  if scl < epsilon_float 
  then
    failwith "Fatal_error in Vector_v.dividing: Division by too small a float"
  else
    List.map (fun x -> x /. scl) vct
;;

let tensor_product v_1 v_2 =
  List.map (scaling v_2 ) v_1
;;

let sigma_of_vector_list vct_list =
  let zero_of_int = zero_of_int (List.length (List.hd vct_list))  in
    List.fold_left
      (fun sum vct -> addition sum vct)  
      zero_of_int  vct_list  
;;

let coeffs_of_float_vector_list  fv_l =
  List.map (fun (f, v) -> f)  fv_l 
;;

let vectors_of_float_vector_list  fv_l =
  List.map (fun (f, v) -> v)  fv_l 
;;

let scaled_vectors_of_float_vector_list  fv_l = 
  List.map (fun (f, v) -> scaling v f)  fv_l
;;

let center_of_mass  fv_l =
  let weight =  
    List_v.sigma_of_list_float (coeffs_of_float_vector_list  fv_l) 
  in  
  let scaled_vectors = scaled_vectors_of_float_vector_list  fv_l in
  let vector_sum =  sigma_of_vector_list  scaled_vectors in
  scaling  vector_sum  (1.0 /. weight)
;;

let bifloat_vector_of_bivector (v_1, v_2) =
  List.combine v_1 v_2
;;

let name_of_element e =
  Format.sprintf "%f" e
;;

let name vct =
  List_v.name_with_separator name_of_element "; " vct
;;

