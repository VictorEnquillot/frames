(** {3 Units_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Units_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v";
   "Needs : BDB1:";
   "Author : François Colonna 11 janvier 2017 at 10:43:03+01:00 linear and planar added";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_dsf =
  let soi_dsf = Tag_v.sole_index_off_tag tag_dsf in
  let nam_dbo = 
    Basicname_databox_by_any_sole_index_provider_v.provide
      soi_dsf
  in 
  
  let sym_dul = 
    Db1pointsdata_set_fence_token_coordinates_units_length_symbol_by_basicname_databox_provider_v.provide
      nam_dbo
  in
  
  let ule = 
    Units_by_db1pointsdata_set_fence_token_coordinates_units_length_symbol_provider_v.provide
      sym_dul 
  in

  let sym_dck = 
    Db1pointsdata_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v.provide
      nam_dbo
  in

  match sym_dck with 
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol _ -> 

	Tuple_v.tuple_of_trio (Trio_v.make ule ule ule)

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol _ ->
	let sym_dua = 
	  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_by_basicname_databox_provider_v.provide
	    nam_dbo
	in

	let uan = 
	  Units_by_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_provider_v.provide
	    sym_dua 
	in

	Tuple_v.tuple_of_trio (Trio_v.make ule uan ule)

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol _ ->
      
      Tuple_v.tuple_of_uno (Uno_v.make ule)
	
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol _ ->
      
      Tuple_v.tuple_of_duo (Duo_v.make ule ule)
	
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol _ ->
      
	let sym_dua = 
	  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_by_basicname_databox_provider_v.provide
	    nam_dbo
	in

	let uan = 
	  Units_by_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_provider_v.provide
	    sym_dua 
	in

	Tuple_v.tuple_of_duo (Duo_v.make ule uan)

  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol _ ->

	let sym_dua = 
	  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_by_basicname_databox_provider_v.provide
	    nam_dbo
	in

	let uan = 
	  Units_by_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_provider_v.provide
	    sym_dua 
	in

	Tuple_v.tuple_of_trio (Trio_v.make ule uan uan)

;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
