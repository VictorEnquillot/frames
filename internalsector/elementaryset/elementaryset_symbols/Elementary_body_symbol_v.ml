(** {3 Elementary_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect ->
    Elementary_body_coordinate_tuple_symbol_v.name sym_ect
  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept ->
    Elementary_body_parameter_tuple_symbol_v.name sym_ept
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect ->
  Elementary_body_coordinate_tuple_symbol_v.string_off sym_ect
  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept ->
  Elementary_body_parameter_tuple_symbol_v.string_off sym_ept
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ebo =
  Format.sprintf "Elementary_body_symbol_t.%s" (String.capitalize (name sym_ebo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ebo =
  Format.sprintf "%s \"%s\"" (longname sym_ebo) (string_off sym_ebo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol = function
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect -> sym_ect
  | sym_ebo -> Error_messages_v.print_fatal_error
      nam_cod "elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol"
      "Elementary_body_coordinate_tuple_symbol"
      (name sym_ebo) "check"
;;

let elementary_body_parameter_tuple_symbol_off_elementary_body_symbol = function
  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept -> sym_ept
  | sym_ebo -> Error_messages_v.print_fatal_error
      nam_cod "elementary_body_parameter_tuple_symbol_off_elementary_body_symbol"
      "Elementary_body_parameter_tuple_symbol"
      (name sym_ebo) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept
;;

let elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_symbol sym_ebo = 
  let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
    Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol = function
  | Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol _ -> true
  | _ -> false
;;

let is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol = function
  | Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_constructor sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_constructor sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_constructor sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_linear_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_constructor sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_planar_constructor sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_constructor sym_ect
    end
;;

let is_elementary_body_parameter_tuple_aopef_constructor sym_ebo =
  if not (is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_parameter_tuple_symbol_v.is_elementary_body_parameter_tuple_aopef_constructor sym_ept
    end
;;

let is_elementary_body_parameter_tuple_ecppef_constructor sym_ebo =
  if not (is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
      let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
      Elementary_body_parameter_tuple_symbol_v.is_elementary_body_parameter_tuple_ecppef_constructor sym_ept
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_polar_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_linear_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ect = elementary_body_coordinate_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_coordinate_tuple_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_planar_symbol_off_elementary_body_coordinate_tuple_symbol sym_ect
    end
;;

let is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_parameter_tuple_symbol_v.is_elementary_body_parameter_tuple_aopef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept
    end
;;

let is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_symbol sym_ebo =
  if not (is_elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo)
  then false
  else
    begin
  let sym_ept = elementary_body_parameter_tuple_symbol_off_elementary_body_symbol sym_ebo in
  Elementary_body_parameter_tuple_symbol_v.is_elementary_body_parameter_tuple_ecppef_symbol_off_elementary_body_parameter_tuple_symbol sym_ept
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect = 
  Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_parameter_tuple_symbol sym_ept = 
  Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol sym_ept
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_symbol sym_eth = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_heterogeneous_symbol sym_eth in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol sym_ehc = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_heterogeneous_cylindrical_symbol sym_ehc in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_polar_symbol sym_ehp = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_heterogeneous_polar_symbol sym_ehp in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol sym_ehs = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_heterogeneous_spherical_symbol sym_ehs in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_symbol sym_eth = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_homogeneous_symbol sym_eth in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol sym_ehc = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol sym_ehc in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_linear_symbol sym_ehl = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_homogeneous_linear_symbol sym_ehl in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_coordinate_tuple_homogeneous_planar_symbol sym_ehp = 
  let sym_ect = Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_symbol_of_elementary_body_coordinate_tuple_homogeneous_planar_symbol sym_ehp in
    elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol sym_ect
;;

let elementary_body_symbol_of_elementary_body_parameter_tuple_aopef_symbol sym_eta = 
  let sym_ept = Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_aopef_symbol sym_eta in
    elementary_body_symbol_of_elementary_body_parameter_tuple_symbol sym_ept
;;

let elementary_body_symbol_of_elementary_body_parameter_tuple_ecppef_symbol sym_ete = 
  let sym_ept = Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_symbol_of_elementary_body_parameter_tuple_ecppef_symbol sym_ete in
    elementary_body_symbol_of_elementary_body_parameter_tuple_symbol sym_ept
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_cylindrical_constructor s);;

let elementary_body_coordinate_tuple_heterogeneous_polar_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_polar_constructor s);;

let elementary_body_coordinate_tuple_heterogeneous_spherical_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_heterogeneous_spherical_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_cartesian_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_linear_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_linear_constructor s);;

let elementary_body_coordinate_tuple_homogeneous_planar_constructor s = elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol (Elementary_body_coordinate_tuple_symbol_v.elementary_body_coordinate_tuple_homogeneous_planar_constructor s);;

let elementary_body_parameter_tuple_aopef_constructor s = elementary_body_symbol_of_elementary_body_parameter_tuple_symbol (Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_aopef_constructor s);;

let elementary_body_parameter_tuple_ecppef_constructor s = elementary_body_symbol_of_elementary_body_parameter_tuple_symbol (Elementary_body_parameter_tuple_symbol_v.elementary_body_parameter_tuple_ecppef_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_body_symbol_of_elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_v.make nam s)
  with Failure "Not_a_elementary_body_coordinate_tuple_symbol:Elementary_body_coordinate_tuple_symbol_v.ml:make" ->
  try elementary_body_symbol_of_elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_v.make nam s)
  with Failure "Not_a_elementary_body_parameter_tuple_symbol:Elementary_body_parameter_tuple_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_body subtype" nam s)
      "it does not exists"
      "Check file Elementary_body_symbol_v.ml"
    in
    failwith "Not_a_elementary_body_symbol:Elementary_body_symbol_v.ml:make"
;;


(** Elementary_body_symbol_v at 9:51:53 on 27 Sep 2016. created by version v2.4 of generator *)



