(** {3 Elementary_symbol_by_db1figure_float_tag_translator_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_symbol_by_db1figure_float_tag_translator_v";
   "Needs : SELE:Elementary_symbol_v";
   "Needed-by :"; 
   "What-is-it : the subtree Elementary_border_coordinate-Measure_float replacing each Db1figure_float in Db1 B-Tree"; 
   "How-is-it-done : by getting Component tag upwards from tag_def";
   "How-is-it-done : by getting Units information as Son of Component";
   "Remark : No storage here (Only Tags are stored)";
  ]
;;

let symbol_units_angle_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in
  let tag_com = 
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_component_tag_off_sole_index 
      soi_def 
  in
  let tag_son_l = 
    Db1figure_any_category_by_sole_index_extractor_v.son_db1figure_tag_list_of_string_predicate_of_father_tag 
      "is_db1figure_element_coordinates_units_angle_constructor"
      tag_com
  in
  if tag_son_l = []
  then Elementary_fence_units_symbol_v.elementary_fence_units_none
  else
    begin
      let tag_uan = List_v.element_off_one_element_list tag_son_l in
      let sym_uan = Tag_v.entity_off_tag tag_uan in
      let sof_uan = Db1figure_symbol_v.string_off sym_uan in
      Elementary_fence_units_symbol_v.make sof_uan ""
    end
;;

let symbol_units_length_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in
  let tag_com = 
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_component_tag_off_sole_index 
      soi_def 
  in
  let tag_son_l = 
    Db1figure_any_category_by_sole_index_extractor_v.son_db1figure_tag_list_of_string_predicate_of_father_tag 
      "is_db1figure_element_coordinates_units_length_constructor"
      tag_com
  in
  let tag_ule = List_v.element_off_one_element_list tag_son_l in
  let sym_ule = Tag_v.entity_off_tag tag_ule in
  let sof_ule = Db1figure_symbol_v.string_off sym_ule in
  try Elementary_fence_units_symbol_v.make sof_ule ""
  with Failure _ ->
    let nam_fun = "symbol_units_length_of_db1figure_float_tag" in
    let nam_mod = Management_v.current_module_name (documentation ()) in
    Error_messages_v.print_fatal_error nam_mod nam_fun
      "Unit of length were Angstrom | Bohr | Meter | Nanometer ..."
      (Format.sprintf ">%s< as length unit for Db1figure_float_tag >%s<" 
	 (Db1figure_symbol_v.string_off sym_ule)
	 (Db1figure_float_tag_v.fullname tag_def)
      )
      "Check" 
;;

let coordinates_kind_string_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in
  let tag_com = 
    Db1figure_any_category_by_sole_index_extractor_v.db1figure_component_tag_off_sole_index 
      soi_def 
  in
  let tag_son_l = 
    Db1figure_any_category_by_sole_index_extractor_v.son_db1figure_tag_list_of_string_predicate_of_father_tag 
      "is_db1figure_element_coordinates_kind_constructor" 
      tag_com
  in
  let tag_kin = List_v.element_off_one_element_list tag_son_l in
  let sym_kin = Tag_v.entity_off_tag tag_kin in
  Db1figure_symbol_v.string_off sym_kin
;;

let coordinate_symbol_units_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in 
  let idx_def = List.hd soi_def in

  let kin_coo = coordinates_kind_string_of_db1figure_float_tag tag_def in
  let sym_uan = symbol_units_angle_of_db1figure_float_tag tag_def in
  let sym_ule = symbol_units_length_of_db1figure_float_tag tag_def in

  match (kin_coo, idx_def) with
  | ("cartesian", 1) -> sym_ule
  | ("cartesian", 2) -> sym_ule
  | ("cartesian", 3) -> sym_ule

  | ("planar", 1) -> sym_ule
  | ("planar", 2) -> sym_ule

  | ("linear", 1) -> sym_ule

  | ("cylindrical", 1) -> sym_ule
  | ("cylindrical", 2) -> sym_uan
  | ("cylindrical", 3) -> sym_ule

  | ("spherical", 1) -> sym_ule
  | ("spherical", 2) -> sym_uan
  | ("spherical", 3) -> sym_uan

  | ("polar", 1) -> sym_ule
  | ("polar", 2) -> sym_uan

  | _ ->
      let nam_fun = "coordinate_symbol_units_of_db1figure_float_tag" in
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	"Couple Elementary_border_coordinates_kind and Db1figure_float Tag index were valid"
	(Format.sprintf "this couple (kind, index) >(%s, %i)< for Db1figure_float_tag >%s<" 
	   kin_coo idx_def
	   (Db1figure_float_tag_v.fullname tag_def)
	)
	"Check" 
;;

let coordinate_symbol_of_db1figure_float_tag tag_def =
  let soi_def = Tag_v.sole_index_off_tag tag_def in 
  let idx_def = List.hd soi_def in

  let kin_coo = coordinates_kind_string_of_db1figure_float_tag tag_def in

  match (kin_coo, idx_def) with
  | ("cartesian", 1) -> Elementary_symbol_v.x_3d "x_3d"
  | ("cartesian", 2) -> Elementary_symbol_v.y_3d "y_3d"
  | ("cartesian", 3) -> Elementary_symbol_v.z_3d "z_3d"

  | ("planar", 1) -> Elementary_symbol_v.x_2d "x_2d"
  | ("planar", 2) -> Elementary_symbol_v.y_2d "y_2d"

  | ("linear", 1) -> Elementary_symbol_v.x_1d "x_1d"

  | ("cylindrical", 1) -> Elementary_symbol_v.cylindrical_rho "rho"
  | ("cylindrical", 2) -> Elementary_symbol_v.cylindrical_phi "phi"
  | ("cylindrical", 3) -> Elementary_symbol_v.cylindrical_zed "zed"

  | ("spherical", 1) -> Elementary_symbol_v.spherical_rho "rho"
  | ("spherical", 2) -> Elementary_symbol_v.spherical_phi "phi"
  | ("spherical", 3) -> Elementary_symbol_v.spherical_theta "theta"

  | ("polar", 1) -> Elementary_symbol_v.polar_rho "rho"
  | ("polar", 2) -> Elementary_symbol_v.polar_theta "theta"

  | _ ->
      let nam_fun = "coordinate_symbols_of_db1figure_float_tag" in
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod nam_fun
	"Couple Elementary_border_coordinates_kind and Db1figure_float Tag index were valid"
	(Format.sprintf "this couple (kind, index) >(%s, %i)< for Db1figure_float_tag >%s<" 
	   kin_coo idx_def
	   (Db1figure_float_tag_v.fullname tag_def)
	)
	"Check" 
;;

let translate_without_trace tag_def =
  coordinate_symbol_of_db1figure_float_tag tag_def
;;

let translate_with_trace tag_def =
  let nam_cod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_cod;

  let result = translate_without_trace tag_def in

  Management_v.exiting_of_current_module_name nam_cod;
  result
;;

let translate tag_def =
  if Parameters_general_provider_v.provide "trace-translate" = "true"
  then translate_with_trace tag_def
  else translate_without_trace tag_def
;;

