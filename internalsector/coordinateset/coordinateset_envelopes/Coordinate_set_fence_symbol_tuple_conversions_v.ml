(** {3 Coordinate_set_fence_symbol_tuple_conversions_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_set_fence_symbol_tuple_conversions_v";
   "Remark : No conversion for Units_canonical they have well defined canonical units";
   "Remark : Only actual units are converted";
   "Author : François Colonna 04 mai 2017 at 09:33:35+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Homogeneous from Heterogeneous } *)

let coordinate_set_fence_symbol_duo_homogeneous_of_coordinate_set_fence_symbol_duo sym_csf_d =
  let nam_fun = "coordinate_set_fence_symbol_duo_homogeneous_of_coordinate_set_fence_symbol_duo" in

  let (sym_rho, sym_theta) = sym_csf_d in  

  match (sym_rho, sym_theta) with
  | (r, t) when (
      (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_polar_rho_constructor r)
	&& (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_polar_theta_constructor t)
     ) ->
       let sof_rho = Coordinate_set_fence_symbol_v.string_off sym_rho in
       let sof_theta = Coordinate_set_fence_symbol_v.string_off sym_theta in

     if sof_rho <> sof_theta
     then 
       Error_messages_v.print_fatal_error __LOC__ nam_fun  
	 "Rho and Theta have same string_off"
	 (Format.sprintf "Rho is %s and Theta is %s" sof_rho sof_theta)
	 "Check"
     else
       begin
	 let x = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_planar_x_constructor sof_rho in
	 let y = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_planar_y_constructor sof_rho in
	 Duo_v.make x y
       end

  | _ -> 
       Error_messages_v.print_fatal_error __LOC__ nam_fun  
	 "a Duo (Rho, Theta) "
	(Format.sprintf "Couple (%s, %s)" 
	   (Coordinate_set_fence_symbol_v.fullname sym_rho)
	   (Coordinate_set_fence_symbol_v.fullname sym_theta)
	)
	"Check"
;;

let coordinate_set_fence_symbol_trio_homogeneous_of_coordinate_set_fence_symbol_trio sym_csf_t =
  let nam_fun = "coordinate_set_fence_symbol_trio_homogeneous_of_coordinate_set_fence_symbol_trio" in

  match (sym_csf_t) with
  | (r, p, z) when (
      (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_rho_constructor r)
	&& (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_phi_constructor p)
	&& (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_cylindrical_zed_constructor z)
     ) ->
       let sof_rho = Coordinate_set_fence_symbol_v.string_off r in
       let sof_phi = Coordinate_set_fence_symbol_v.string_off p in
       let sof_zed = Coordinate_set_fence_symbol_v.string_off z in
     
     if sof_rho <> sof_phi
     then 
       Error_messages_v.print_fatal_error __LOC__ nam_fun  
	 "Rho and Phi have same string_off"
	 (Format.sprintf "Rho is %s and Phi is %s" sof_rho sof_phi)
	 "Check"
     else
       begin
	 if sof_rho <> sof_zed
	 then 
	   Error_messages_v.print_fatal_error __LOC__ nam_fun  
	     "Rho and Zed have same string_off"
	     (Format.sprintf "Rho is %s and Phi is %s" sof_rho sof_zed)
	     "Check"
	 else
	   begin
	     let x = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor sof_rho in 
	     let y = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor sof_rho in
	     let z = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor sof_rho in
		 Trio_v.make x y z
		 
	   end
       end
	 
  | (r, p, t) when (
      (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_rho_constructor r)
	&& (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_phi_constructor p)
	&& (Coordinate_set_fence_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor t)
     ) ->
       let sof_rho = Coordinate_set_fence_symbol_v.string_off r in
       let sof_phi = Coordinate_set_fence_symbol_v.string_off p in
       let sof_theta = Coordinate_set_fence_symbol_v.string_off t in
     
     if sof_rho <> sof_phi
     then 
       Error_messages_v.print_fatal_error __LOC__ nam_fun  
	 "Rho and Phi have same string_off"
	 (Format.sprintf "Rho is %s and Phi is %s" sof_rho sof_phi)
	 "Check"
     else
       begin
	 if sof_rho <> sof_theta
	 then 
	   Error_messages_v.print_fatal_error __LOC__ nam_fun  
	     "Rho and Theta have same string_off"
	     (Format.sprintf "Rho is %s and Phi is %s" sof_rho sof_theta)
	     "Check"
	 else
	   begin
	     let x = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_x_constructor sof_rho in
	     let y = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_y_constructor sof_rho in
	     let z = Coordinate_set_fence_symbol_v.coordinate_set_fence_homogeneous_cartesian_z_constructor sof_rho in
	 Trio_v.make x y z

	   end
       end
  | (a, b, c) -> 
       Error_messages_v.print_fatal_error __LOC__ nam_fun  
	 "a Trio (Rho, Theta, Zed) | (Rho, Phi, Theta)"
	(Format.sprintf "Trio (%s, %s, %s)" 
	   (Coordinate_set_fence_symbol_v.fullname a)
	   (Coordinate_set_fence_symbol_v.fullname b)
	   (Coordinate_set_fence_symbol_v.fullname c)
	)
	"Check"
;;

let coordinate_set_fence_symbol_tuple_homogeneous_of_coordinate_set_fence_symbol_tuple sym_csf_t =
  match sym_csf_t with
  | Tuple_t.Duo sym_csf_d -> 
      Tuple_t.Duo (coordinate_set_fence_symbol_duo_homogeneous_of_coordinate_set_fence_symbol_duo sym_csf_d)

  | Tuple_t.Trio sym_csf_t ->
      Tuple_t.Trio (coordinate_set_fence_symbol_trio_homogeneous_of_coordinate_set_fence_symbol_trio sym_csf_t)

  | Tuple_t.Empty 
  | Tuple_t.Singlet _ 
  | Tuple_t.Uno _
  | Tuple_t.Quatuor _
  | Tuple_t.Trio_duo _
  | Tuple_t.Duo_trio _ ->
      failwith "Not_a_duo_or_trio"
;;

