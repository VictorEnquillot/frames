(** {3 Spherical Harmonics Data functionnalities.} *)

let mod_nam = "Spherical_harmonics_data_v";;

(**
 S(l, -m) = (1/(i sqrt (2.)))(Y(l,)(the, phi) - Y(l, -m)(the, phi))
*)

(** {6 Making.} *)

let make qlm =
  Spherical_harmonics_data_t.Spherical qlm
;;

let make_of_int_of_int l m =
  let qlm = Quantum_numbers_p.make_lm_of_int_of_int l m in 
  make qlm
;;

let make_cartesian idx idy idz =
  Spherical_harmonics_data_t.Cartesian (idx, idy, idz)
;;

let make_of_quantum_numbers qns =
  let qlm = Quantum_numbers_p.make_lm_off_quantum_numbers qns in
  make qlm
;;

let spherical_harmonics_data_array_of_quantum_number_l q_l =
  let qlm_a =
  Quantum_numbers_p.make_lm_array_of_quantum_number_l q_l in
  Array.map make qlm_a
;;

(** {6 Extracting.} *)

let make_lm_off_spherical_harmonics_data = function 
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let x = Index_p.int_of_index idx in
      let y = Index_p.int_of_index idy in
      let z = Index_p.int_of_index idz in
      begin
	match (x, y, z) with 
	| (0, 0, 0) -> 
	    (Quantum_numbers_p.make_l_of_int 0, 0)
	| (1, 0, 0) -> 
	    (Quantum_numbers_p.make_l_of_int 1, 1)
	| (0, 1, 0) -> 
	    (Quantum_numbers_p.make_l_of_int 0, 0)
	| (0, 0, 1) -> 
	    (Quantum_numbers_p.make_l_of_int 0, -1)
	| _ -> 
	    failwith ("make_lm_off_spherical_harmonics not found")
      end   
  | Spherical_harmonics_data_t.Spherical (q_l, q_m) -> (q_l, q_m)
;;

let quantum_number_l_of_spherical_harmonics_data = function 
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let x = Index_p.int_of_index idx in
      let y = Index_p.int_of_index idy in
      let z = Index_p.int_of_index idz in
      Quantum_numbers_p.make_l_of_int (x + y + z)
  | Spherical_harmonics_data_t.Spherical (q_l, qnm) -> q_l
;;

let quantum_number_m_of_spherical_harmonics_data sph =
  let (q_l, qnm) = make_lm_off_spherical_harmonics_data sph in
  qnm
;;

let spherical_harmonics_coefficients_of_make_lm (q_l, qnm) = 
  let l = Index_p.int_of_index q_l in
  let m = qnm in
  let _qn_lm = Quantum_numbers_p.make_lm_of_int_of_int l m in 
  match (l, m) with
    | (0,  0) -> Constants_v.y00
    | (1, -1) -> Constants_v.y00 *. sqrt (3.) 
    | (1,  0) -> Constants_v.y00 *. sqrt (3. /. 2.)
    | (1,  1) -> Constants_v.y00 *. (-. sqrt (3.)) 
    | (2, -2) -> Constants_v.y00 *. sqrt (15. /. 8.) 
    | (2, -1) -> Constants_v.y00 *. sqrt (15. /. 2.)
    | (2,  0) -> Constants_v.y00 *. sqrt (5. /. 4.)
    | (2,  1) -> Constants_v.y00 *. (-. sqrt (15. /. 2.))
    | (2,  2) -> Constants_v.y00 *. sqrt (15. /. 8.) 
    | _ -> 
	failwith ("Add_lm:spherical_harmonics_fonction")
;; 

let print ppf = function
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let x = Index_p.int_of_index idx in
      let y = Index_p.int_of_index idy in
      let z = Index_p.int_of_index idz in
      Format.fprintf ppf "x^%i y^%i z^%i" x y z
  | Spherical_harmonics_data_t.Spherical (q_l, q_m) ->
      let l = Index_p.int_of_index q_l in
      Format.fprintf ppf "Sph(%i, %i)" l q_m
;;

let name = function
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let x = Index_p.int_of_index idx in
      let y = Index_p.int_of_index idy in
      let z = Index_p.int_of_index idz in
      Format.sprintf "%i_%i_%i" x y z
  | Spherical_harmonics_data_t.Spherical (q_l, q_m) ->
      let l = Index_p.int_of_index q_l in
      Format.sprintf "Y%i_%i" l q_m
;;

