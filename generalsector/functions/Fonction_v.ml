(* {3 A Function (Fonction) functionalities.} *)

let mod_nam = "Fonction_v";;

module Fnc_t = Fonction_t

let rec value_on_r fon arg =
  match fon with
    | Fnc_t.Constant f -> f
    | Fnc_t.Monomial i -> arg**(float_of_int i)  
    | Fnc_t.Exponential -> exp arg
    | Fnc_t.Logarithm -> log arg
    | Fnc_t.Cos -> cos arg
    | Fnc_t.Sin -> sin arg
    | Fnc_t.Tan -> tan arg
    | Fnc_t.Minus fon -> -1. *. (value_on_r fon arg)
    | Fnc_t.Addition (fon1, fon2) -> 
	(value_on_r fon1 arg) +. (value_on_r fon2 arg)  	
    | Fnc_t.Difference (fon1, fon2) -> 
	(value_on_r fon1 arg) -. (value_on_r fon2 arg)  	
    | Fnc_t.Fraction (fon1, fon2) -> 
	(value_on_r fon1 arg) /. (value_on_r fon2 arg)	
    | Fnc_t.Product (fon1, fon2) -> 
	(value_on_r fon1 arg) *. (value_on_r fon2 arg)
    | Fnc_t.Rond (fon1, fon2) ->
	let g_on_arg = value_on_r fon2 arg in
        value_on_r fon1 g_on_arg 
    | Fnc_t.Square fon -> 
	let fvl = value_on_r fon arg in
        fvl *. fvl
    | Fnc_t.Sum fon_a -> Array.fold_left 
	  (fun sum fon -> (value_on_r fon arg) +. sum) 0.0 fon_a
    | Fnc_t.Polynomial f_i_a -> 
	let fon_a = 
	  Array.map (fun (f, i) -> 
	    (Fnc_t.Scaled (
	     f, (Fnc_t.Monomial i))
	    ) ) f_i_a
	in 
	value_on_r (Fnc_t.Sum fon_a) arg
    | Fnc_t.Scaled (f, fon) -> (value_on_r fon arg) *. f
    | Fnc_t.Linear_combination scl_fon_a -> 
	let fon_a = 
	  Array.map (fun (f,fon) -> (Fnc_t.Scaled (f, fon) ) ) scl_fon_a 
	in 
	value_on_r (Fnc_t.Sum fon_a) arg
(*
  | Fnc_t.Inverse fon -> 
      begin
	match fon with
      end 
*)
;;

let rec value_on_r3 fon arg =
  Utils_v.not_yet_implemented mod_nam "value_on_r3"
;;

(* http://fr.wikipedia.org/wiki/D%C3%A9riv%C3%A9e *)

let rec derivative = function
  | Fnc_t.Constant f -> Fnc_t.Constant 0. 
  | Fnc_t.Minus fon -> Fnc_t.Minus (derivative fon)
  | Fnc_t.Monomial i -> 
      if i = 0 then Fnc_t.Constant 1. 
      else Fnc_t.Scaled ((float_of_int i), Fnc_t.Monomial (i-1))
  | Fnc_t.Exponential as fon -> fon
  | Fnc_t.Logarithm -> Fnc_t.Monomial (-1)
  | Fnc_t.Cos -> Fnc_t.Minus (Fnc_t.Sin)
  | Fnc_t.Sin -> Fnc_t.Cos
  | Fnc_t.Tan -> 
      Fnc_t.Fraction 
	(
	 Fnc_t.Constant 1.0, Fnc_t.Product 
	   (Fnc_t.Cos, Fnc_t.Cos)
	)
  | Fnc_t.Fraction (fon1, fon2) ->
      Fnc_t.Fraction 
	(
	 Fnc_t.Difference 
	   (
	    Fnc_t.Product (derivative fon1, fon2), 
	    Fnc_t.Product (fon1, derivative fon2)),
	 Fnc_t.Product (fon2, fon2) 
	)
  | Fnc_t.Product (fon1, fon2) -> 
      Fnc_t.Addition 
	(
	 Fnc_t.Product (derivative fon1, fon2), 
	 Fnc_t.Product (fon1, derivative fon2)
	) 
  | Fnc_t.Rond (fon1, fon2) -> 
      Fnc_t.Product 
	(
	 (derivative fon1), (derivative fon2) 
	)
  | Fnc_t.Addition (fon1, fon2) -> 
      Fnc_t.Addition (derivative fon1, derivative fon2)
  | Fnc_t.Sum fon_a -> Fnc_t.Sum (Array.map derivative fon_a)
  | Fnc_t.Difference (fon1, fon2) -> 
      Fnc_t.Difference (derivative fon1, derivative fon2) 
  | Fnc_t.Polynomial f_i_a -> 
      let fon_a = 
	Array.map (fun (f,i) -> 
	  (Fnc_t.Scaled (f, (Fnc_t.Monomial i))) ) 
	  f_i_a
      in 
      derivative (Fnc_t.Sum fon_a)
  | Fnc_t.Scaled (f, fon) -> Fnc_t.Scaled (f, derivative fon)
  | Fnc_t.Square fon -> Fnc_t.Scaled ( 2., derivative fon)
  | Fnc_t.Linear_combination scl_fon_a -> 
      let fon_a = 
	Array.map (fun (f,fon) -> (Fnc_t.Scaled (f, fon) ) )
	  scl_fon_a 
      in 
      derivative (Fnc_t.Sum fon_a) 
;;

let rec print ppf = function
  | Fnc_t.Constant f -> Format.fprintf ppf "%f" f
  | Fnc_t.Minus fon -> Format.fprintf ppf "-%a" print fon
  | Fnc_t.Monomial i -> Format.fprintf ppf "r^%i" i
  | Fnc_t.Exponential -> Format.fprintf ppf "exp"  
  | Fnc_t.Logarithm -> Format.fprintf ppf "log"  
  | Fnc_t.Cos -> Format.fprintf ppf "cos"  
  | Fnc_t.Sin -> Format.fprintf ppf "sin"  
  | Fnc_t.Tan -> Format.fprintf ppf "tan"  
  | Fnc_t.Fraction (fon1, fon2) ->
      Format.fprintf ppf "%a/%a" print fon1 print fon2
  | Fnc_t.Product (fon1, fon2) -> 
      Format.fprintf ppf "%a*%a" print fon1 print fon2
  | Fnc_t.Rond (fon1, fon2) -> 
      Format.fprintf ppf "%a o %a" print fon1 print fon2
  | Fnc_t.Addition (fon1, fon2) -> 
      Format.fprintf ppf "%a+%a" print fon1 print fon2
  | Fnc_t.Difference (fon1, fon2) -> 
      Format.fprintf ppf "%a-%a" print fon1 print fon2
  | Fnc_t.Scaled (f, fon) -> Format.fprintf ppf "%f * %a" f print fon
  | Fnc_t.Square fon -> Format.fprintf ppf "(%a)^2" print fon
  | Fnc_t.Sum fon_a -> 
	Array.iter (fun f -> Format.fprintf ppf "%a " print f) fon_a
  | Fnc_t.Polynomial f_i_a -> 
	Array.iter (fun (f,i) ->
        Format.fprintf ppf "%a" 
	    print (Fnc_t.Scaled (f, (Fnc_t.Monomial i))) ) 
	f_i_a
  | Fnc_t.Linear_combination scl_fon_a -> 
	Array.iter (fun (f,fon) -> 
	  Format.fprintf ppf "%a" 
	    print (Fnc_t.Scaled (f, fon) ) ) 
	scl_fon_a 
;;

let name = function
  | Fnc_t.Constant _ -> Format.sprintf "Ct"
  | Fnc_t.Minus _ -> Format.sprintf "-" 
  | Fnc_t.Monomial _ -> Format.sprintf "Mn" 
  | Fnc_t.Exponential -> Format.sprintf "E"  
  | Fnc_t.Logarithm -> Format.sprintf "L"  
  | Fnc_t.Cos -> Format.sprintf "Cs"  
  | Fnc_t.Sin -> Format.sprintf "Sn"  
  | Fnc_t.Tan -> Format.sprintf "Tn"  
  | Fnc_t.Fraction (_, _) -> Format.sprintf "/" 
  | Fnc_t.Product (_, _) -> Format.sprintf "*"
  | Fnc_t.Rond (_, _) -> Format.sprintf "o" 
  | Fnc_t.Addition (_, _) -> Format.sprintf "+" 
  | Fnc_t.Difference (_, _) -> Format.sprintf "-"
  | Fnc_t.Scaled (_, _) -> Format.sprintf "Sc" 
  | Fnc_t.Square _ -> Format.sprintf "Sq" 
  | Fnc_t.Sum _ -> Format.sprintf "S"
  | Fnc_t.Polynomial _ -> Format.sprintf "Pn" 
  | Fnc_t.Linear_combination _ -> Format.sprintf "Lc" 
;;

let is_elementary_of_fonction = function
  | Fnc_t.Constant _
  | Fnc_t.Monomial _ 
  | Fnc_t.Exponential 
  | Fnc_t.Logarithm 
  | Fnc_t.Cos 
  | Fnc_t.Sin 
  | Fnc_t.Tan -> true
  | fon -> false
;;

let print_lcof ppf lcof =
  Utils_v.not_yet_implemented mod_nam "print_lcof"
;;
