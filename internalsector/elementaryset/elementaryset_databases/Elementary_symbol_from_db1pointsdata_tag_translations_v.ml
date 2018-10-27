(** {3 Elementary_symbol_from_db1pointsdata_tag_translations_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_from_db1pointsdata_tag_translations_v";
   "Needs : BDB1:Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : Translator to Elementary_symbol from Db1pointsdata ";
   "Remark : Tag are needed to get information from tag_all_list";
   "Abbreviation : anv  = aoset_numerical_values";
   "Abbreviation : ddf  = db1pointsdata_context_databox";
   "Abbreviation : db1  = db1pointsdata";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ptu  = elementary_body_coordinate_tuple";
   "Abbreviation : pta  = elementary_body_coordinate_tuple_aopef";
   "Abbreviation : exp  = elementary_border_coordinate_aopef_exponent";
   "Abbreviation : coe  = elementary_border_coordinate_aopef_coefficient";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stll = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 6th April 2016 : noangle and unitless added";
   "Author : François Colonna 6th April 2016 : improved last function";
  ]
;;

let elementary_as_body_coordinate_tuple_symbol_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_body_sequence_float_symbol db1_dck = function
  | Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
      (Db1pointsdata_body_symbol_t.Db1pointsdata_body_sequence_symbol
         (Db1pointsdata_body_sequence_symbol_t.Db1pointsdata_body_sequence_float_symbol
            (Db1pointsdata_body_sequence_float_symbol_t.Db1pointsdata_body_sequence_float_constructor
               sof_db1_dsf))) ->

		 begin
		   match db1_dck with 
		   | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_cartesian ->
		       Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_constructor 
			 sof_db1_dsf
			 
		   | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_cylindrical ->
		       Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor 
			 sof_db1_dsf
			 
		   | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_polar ->
		       Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_constructor 
			 sof_db1_dsf
			 
		   | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical ->
		       Elementary_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_constructor 
			 sof_db1_dsf
		 end

  | sym_db1 -> 
      let nam_fun = "elementary_as_body_coordinate_tuple_symbol_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_body_sequence_float_symbol" in
      Error_messages_v.print_fatal_error __LOC__ nam_fun 
	"Db1pointsdata_body_sequence_float_constructor"
	(Format.sprintf "%s" (Db1pointsdata_symbol_v.fullname sym_db1))
	"Check"		   
;;

let elementary_as_border_coordinate_of_vertex_name_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_fence_basic_numerical_float_tag nam_ver sym_dck tag_db1_dnf =
let nam_fun = "elementary_as_border_coordinate_of_vertex_name_of_db1pointsdata_coordinates_kind_of_db1pointsdata_as_fence_basic_numerical_float_tag" in

  let (sym_db1_dbf, soi_db1_dnf) = tag_db1_dnf in
  let ihd_db1_dnf = Sole_index_v.head_index soi_db1_dnf in

  match sym_db1_dbf with
  | Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
      (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
         (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
            (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
               (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
		str_flo)))) ->

		  begin  
		    match sym_dck with
		    | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_cartesian ->
			begin
			  match ihd_db1_dnf with
			  | 1 -> 
			      Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_constructor 
				nam_ver 
			  | 2 -> 
			      Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_constructor 
				nam_ver 
			  | 3 -> 
			      Elementary_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_constructor 
				nam_ver 
			  | _ ->  
			      Error_messages_v.print_fatal_error __LOC__ nam_fun 
				"Head_index were 1 | 2 | 3 for Cartesian Coordinate x or y or z"
				(Format.sprintf "%i" ihd_db1_dnf)
				"Check"		   
			end

		    | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_cylindrical ->

			begin
			  match ihd_db1_dnf with
			  | 1 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_rho_constructor 
				nam_ver 
			  | 2 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_phi_constructor 
				nam_ver 
			  | 3 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_cylindrical_zed_constructor 
				nam_ver 
			  | _ ->  
			      Error_messages_v.print_fatal_error __LOC__ nam_fun 
				"Head_index were 1 | 2 | 3 for Cylindrical Coordinate rho or phi or zed"
				(Format.sprintf "%i" ihd_db1_dnf)
				"Check"		   
			end

		    | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_polar ->

			begin
			  match ihd_db1_dnf with
			  | 1 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_rho_constructor 
				nam_ver 
			  | 2 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_polar_theta_constructor 
				nam_ver 

			  | _ -> 
			      Error_messages_v.print_fatal_error __LOC__ nam_fun 
				"Head_index were 1 | 2 for Polar Coordinate rho or theta"
			      (Format.sprintf "%i" ihd_db1_dnf)
				"Check"		   
			end

		    | Db1pointsdata_fence_token_coordinates_kind_symbol_t.Db1pointsdata_fence_token_coordinates_kind_spherical ->

			begin
			  match ihd_db1_dnf with
			  | 1 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_rho_constructor 
				nam_ver 
			  | 2 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_phi_constructor 
				nam_ver 
			  | 3 -> 
			      Elementary_symbol_v.elementary_border_coordinate_heterogeneous_spherical_theta_constructor 
				nam_ver 
				
			  | _ -> 
			      Error_messages_v.print_fatal_error __LOC__ nam_fun 
				"Head_index were 1 | 2 | 3 for Spherical Coordinate rho or phi or theta"
			      (Format.sprintf "%i" ihd_db1_dnf)
				"Check"		   
			end
		  end

  | _ -> failwith "Not_a_Db1pointsdata_fence_basic_numerical_float_constructor:Elementary_symbol_from_db1pointsdata_tag_translations_v"
;;

(*    Elementary_fence_units_angle                 <=|  Db1pointsdata_fence_token_units_angle  *)
(*    Elementary_fence_units_actual_length                <=|  Db1pointsdata_fence_token_units_actual_length *)
(*    Elementary_body_coordinate_tuple_homogeneous <=|  Db1pointsdata_body_sequence_float      *)

let elementary_fence_units_actual_length_symbol_of_db1pointsdata_as_fence_token_coordinates_units_length_symbol = function
  | Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_angstrom ->
      Elementary_fence_units_actual_length_symbol_v.make "angstrom" ""

  | Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_bohr ->
      Elementary_fence_units_actual_length_symbol_v.make "bohr" ""
	
  | Db1pointsdata_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_fence_token_coordinates_units_length_meter ->
      Elementary_fence_units_actual_length_symbol_v.make "meter" ""
;;

let elementary_fence_units_actual_angle_symbol_of_db1pointsdata_as_fence_token_coordinates_units_angle_symbol = function
  | Db1pointsdata_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_degree ->
      Elementary_fence_units_actual_angle_symbol_v.make "degree" ""
	
  | Db1pointsdata_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_fence_token_coordinates_units_angle_radian ->
      Elementary_fence_units_actual_angle_symbol_v.make "radian" ""

  | _ ->
      failwith "No_angle:Elementary_symbol_from_db1pointsdata_tag_translations_v:elementary_fence_units_actual_angle_symbol_of_db1pointsdata_as_fence_token_coordinates_units_angle_symbol"
;;

let elementary_fence_units_actual_symbol_of_db1pointsdata_fence_token_coordinates_units_angle_symbol_of_db1pointsdata_fence_token_coordinates_units_length_symbol_of_coordinate_symbol_of_elementary_as_border_coordinate_symbol sym_db1_dua sym_db1_dul sym_ele_ebc =
  
  let sym_ebc = Elementary_symbol_v.elementary_border_coordinate_symbol_off_elementary_symbol sym_ele_ebc in

  match sym_ebc with
  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol _ ->
      let sym_eul = 
	elementary_fence_units_actual_length_symbol_of_db1pointsdata_as_fence_token_coordinates_units_length_symbol 
	  sym_db1_dul
      in
      Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol sym_eul

  | Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_heterogeneous_symbol sym_ehe ->
      begin
      match sym_ehe with
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol
	  (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_rho_symbol _)
	  
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol
	  (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_zed_symbol _)
	     
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
	  (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_rho_symbol _)
	  
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol
	  (Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_rho_symbol _) ->
	    
	    let sym_eul = 
	      elementary_fence_units_actual_length_symbol_of_db1pointsdata_as_fence_token_coordinates_units_length_symbol 
		sym_db1_dul
	    in
	    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_length_symbol sym_eul
	      
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_symbol
	  (Elementary_border_coordinate_heterogeneous_cylindrical_symbol_t.Elementary_border_coordinate_heterogeneous_cylindrical_phi_symbol _)

      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
	  (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_phi_symbol _)
	  
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_symbol
	  (Elementary_border_coordinate_heterogeneous_spherical_symbol_t.Elementary_border_coordinate_heterogeneous_spherical_theta_symbol _)
	  
      | Elementary_border_coordinate_heterogeneous_symbol_t.Elementary_border_coordinate_heterogeneous_polar_symbol
	  (Elementary_border_coordinate_heterogeneous_polar_symbol_t.Elementary_border_coordinate_heterogeneous_polar_theta_symbol _)  ->
	    
	    let sym_eua = 
	      elementary_fence_units_actual_angle_symbol_of_db1pointsdata_as_fence_token_coordinates_units_angle_symbol 
		sym_db1_dua
	    in
	    Elementary_fence_units_actual_symbol_v.elementary_fence_units_actual_symbol_of_elementary_fence_units_actual_angle_symbol sym_eua
      end
;;

