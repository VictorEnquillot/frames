(* {3 A Function (Fonction) on R+ functionalities .} *)

let mod_nam = "Radial_fonction_v";;

module Fnc_t = Fonction_t
module Fnc_v = Fonction_v

let rec float_off_radial_fonction = function 
    | Radial_fonction_t.Gaussian f 
    | Radial_fonction_t.Slater f  
    | Radial_fonction_t.Planewave f  
    | Radial_fonction_t.Scaled (f, _) -> f
    | Radial_fonction_t.Product (rdf1, rdf2) ->
	let f1 = float_off_radial_fonction rdf1 in
	let f2 = float_off_radial_fonction rdf2 in
	f1 *. f2
    | Radial_fonction_t.Monomial _ 
    | Radial_fonction_t.Wavelet _ 
    | Radial_fonction_t.Polynomial _ -> 
	failwith ("No_float:Radial_fonction_v.float_off_radial_fonction")
;;

let rec fonction_of_radial_fonction = function 
    | Radial_fonction_t.Monomial i -> Fnc_t.Monomial i
    | Radial_fonction_t.Gaussian f -> 
	Fnc_t.Rond 
	  (Fnc_t.Exponential, 
	   Fnc_t.Scaled ((-. f), Fnc_t.Monomial 2) )
    | Radial_fonction_t.Slater f -> 
	Fnc_t.Rond 
	  (Fnc_t.Exponential, 
	   Fnc_t.Scaled ((-. f), Fnc_t.Monomial 1) )
    | Radial_fonction_t.Planewave k ->  (* *** TODO  needs Complex *)
	Fnc_t.Rond 
	  (Fnc_t.Sin, 
	   Fnc_t.Scaled (k, Fnc_t.Monomial 1) )
    | Radial_fonction_t.Wavelet f_a ->
	Utils_v.not_yet_implemented mod_nam "fonction_of_radial_fonction: Wavelet"
    | Radial_fonction_t.Product (rdf1, rdf2) ->
	let fon1 = fonction_of_radial_fonction rdf1 in
	let fon2 = fonction_of_radial_fonction rdf2 in
        Fnc_t.Product (fon1, fon2)
    | Radial_fonction_t.Polynomial f_i_a -> 
        Fnc_t.Polynomial f_i_a
    | Radial_fonction_t.Scaled (f, rdf) -> 
	let fon = fonction_of_radial_fonction rdf in
	Fnc_t.Scaled (f, fon)
;;

let rec value_on_r rdf r =
  match rdf with
    | Radial_fonction_t.Monomial i ->
	Fnc_v.value_on_r (Fnc_t.Monomial i) r
    | Radial_fonction_t.Gaussian f -> 
	let arg = (-.f) *. r *. r in
	Fnc_v.value_on_r Fnc_t.Exponential arg
    | Radial_fonction_t.Slater f -> 
	let arg = (-.f) *. r in
	Fnc_v.value_on_r Fnc_t.Exponential arg
    | Radial_fonction_t.Planewave k ->  (* *** TODO  needs Complex *)
        let arg = k *. r in
	Fnc_v.value_on_r Fnc_t.Sin arg
    | Radial_fonction_t.Wavelet f_a ->
	Utils_v.not_yet_implemented mod_nam "value_on_r: Wavelet"
    | Radial_fonction_t.Product (rdf1, rdf2) -> 
	(value_on_r rdf1 r) *. (value_on_r rdf2 r)
    | Radial_fonction_t.Polynomial f_i_a -> 
	let fon = fonction_of_radial_fonction rdf in 
        Fnc_v.value_on_r fon r
    | Radial_fonction_t.Scaled (f, rdf) -> 
	let fon = fonction_of_radial_fonction rdf in 
        Fnc_v.value_on_r fon r
;;

let rec derivative_on_r rdf =
  let fon = fonction_of_radial_fonction rdf in 
  Fnc_v.derivative fon
;;

(*
let rec derivative_on_x rdf =
  let drdf_dr = derivative_on_r rdf in 
  let dr_dx = Fnc_t.Fraction (
    (Fnc_t.Monomial 1),
    (Fnc_t.Monomial 1)
   )
;;
*)

let rec print ppf rdf =
  let fon = fonction_of_radial_fonction rdf in
  Fnc_v.print ppf fon
;; 

let rec name rdf =
  let fon = fonction_of_radial_fonction rdf in
  Fnc_v.name fon
;; 
