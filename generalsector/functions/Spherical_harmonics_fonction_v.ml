
let mod_nam = "Spherical_harmonics_fonction_v";;

let theta_fonction_of_quantum_numbers_lm qlm =
  let (qnl, qnm) = qlm in
  let l = Index_p.int_of_index qnl in
  let abs_m = abs qnm in
  match (l, abs_m) with
    | (0, 0) -> Fonction_t.Constant 1.
    | (1, 0) -> Fonction_t.Cos 
    | (1, 1) -> Fonction_t.Sin 
    | (2, 2) -> Fonction_t.Square (Fonction_t.Sin) 
    | (2, 1) -> 
	let cs2 = Fonction_t.Square (Fonction_t.Cos) in
        Fonction_t.Difference 
	    (Fonction_t.Scaled (3., cs2), Fonction_t.Constant 1.)
    | (2,  0) -> Fonction_t.Product (Fonction_t.Sin, Fonction_t.Cos)
    | _ -> 
	failwith ("Add_lm:theta_fonction_of_quantum_numbers_lm")
;;

let phi_fonction_of_quantum_number_m qnm =
  let phi = Fonction_t.Monomial 1 in
  let r_m = Fonction_t.Constant (float_of_int qnm) in
  Fonction_t.Product (r_m, phi)
;;

let real_fonction_of_spherical_harmonics_data = function
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let mon_x = Fonction_t.Monomial (Index_p.int_of_index idx) in
      let mon_y = Fonction_t.Monomial (Index_p.int_of_index idy) in
      let mon_z = Fonction_t.Monomial (Index_p.int_of_index idz) in

      Fonction_t.Product (mon_x, Fonction_t.Product (mon_y, mon_z))
  | Spherical_harmonics_data_t.Spherical (qnl, qnm) -> 
      let l = Index_p.int_of_index qnl in
      let m = qnm in
      match (l, m) with
        | (0,  0) -> Fonction_t.Constant 1.0
	| (1, -1) -> Fonction_t.Monomial 1
	| (1,  0) -> Fonction_t.Monomial 1
	| (1,  1) -> Fonction_t.Monomial 1
	| _ -> 
	    failwith ("Add_lm:real_fonction_of_spherical_harmonics_data")
 ;;

let real_data_of_spherical_harmonics_data_of_float_triplet sph trp = 
  let (x, y, z) = trp in
  match sph with
  | Spherical_harmonics_data_t.Cartesian (idx, idy, idz) -> 
      let mon_x = Fonction_t.Monomial (Index_p.int_of_index idx) in
      let mon_y = Fonction_t.Monomial (Index_p.int_of_index idy) in
      let mon_z = Fonction_t.Monomial (Index_p.int_of_index idz) in

      let val_x = Fonction_v.value_on_r mon_x x in 
      let val_y = Fonction_v.value_on_r mon_y y in 
      let val_z = Fonction_v.value_on_r mon_z z in

      val_x *. val_y *. val_z

  | Spherical_harmonics_data_t.Spherical (qnl, qnm) -> 
      let l = Index_p.int_of_index qnl in
      let m = qnm in
      match (l, m) with
        | (0,  0) -> 1.0
	| (1, -1) -> x    (* *** TODO  not true *) 
	| (1,  0) -> y
	| (1,  1) -> z
	| _ -> 
	    failwith ("Add_lm:real_fonction_of_spherical_harmonics_data")
 ;;

(*
let complex_fonction_of_spherical_harmonics = function
  | Spherical_harmonics_data_t.Cartesian (_) -> 
 	failwith ("No_cartesian:complex_fonction_of_spherical_harmonics")
  | Spherical_harmonics_data_t.Spherical (qnl, qnm) ->
      let cfn = spherical_harmonics_coefficients_of_qnlm qnl qnm in
      let fnc_tht = theta_fonction_of_quantum_numbers_lm (qnl, qnm)
      let fnc_phi = phi_fonction_of_quantum_number_m qnm in
  
;;
*)

let value_of_theta_of_phi tht phi =
  Utils_v.not_yet_implemented mod_nam "value"
;;

