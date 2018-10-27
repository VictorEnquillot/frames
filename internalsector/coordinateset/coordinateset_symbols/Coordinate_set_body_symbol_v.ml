(** {3 Coordinate_set_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Coordinate_set_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol sym_cbt ->
    Coordinate_set_body_tuple_symbol_v.name sym_cbt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol sym_cbt ->
  Coordinate_set_body_tuple_symbol_v.string_off sym_cbt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_csb =
  Format.sprintf "Coordinate_set_body_symbol_t.%s" (String.capitalize (name sym_csb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_csb =
  Format.sprintf "%s \"%s\"" (longname sym_csb) (string_off sym_csb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol = function
  | Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol sym_cbt -> sym_cbt
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_body_symbol sym_csb = 
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
    Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol = function
  | Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_constructor sym_cbt
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_polar_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_constructor sym_cbt
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_spherical_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_constructor sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_cartesian_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_constructor sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_linear_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_constructor sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_planar_constructor sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
      let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
      Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_constructor sym_cbt
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_polar_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_heterogeneous_spherical_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_cartesian_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_linear_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;

let is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_body_symbol sym_csb =
  if not (is_coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb)
  then false
  else
    begin
  let sym_cbt = coordinate_set_body_tuple_symbol_off_coordinate_set_body_symbol sym_csb in
  Coordinate_set_body_tuple_symbol_v.is_coordinate_set_body_tuple_homogeneous_planar_symbol_off_coordinate_set_body_tuple_symbol sym_cbt
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt = 
  Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol sym_cbt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_heterogeneous_symbol sym_cth = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_heterogeneous_symbol sym_cth in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol sym_chc = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol sym_chc in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_heterogeneous_polar_symbol sym_chp = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_heterogeneous_polar_symbol sym_chp in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_heterogeneous_spherical_symbol sym_chs = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_heterogeneous_spherical_symbol sym_chs in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_homogeneous_symbol sym_cth = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_homogeneous_symbol sym_cth in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_homogeneous_cartesian_symbol sym_chc in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_homogeneous_linear_symbol sym_chl in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;

let coordinate_set_body_symbol_of_coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp = 
  let sym_cbt = Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_symbol_of_coordinate_set_body_tuple_homogeneous_planar_symbol sym_chp in
    coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol sym_cbt
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let coordinate_set_body_tuple_heterogeneous_cylindrical_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_constructor s);;

let coordinate_set_body_tuple_heterogeneous_polar_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_polar_constructor s);;

let coordinate_set_body_tuple_heterogeneous_spherical_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_heterogeneous_spherical_constructor s);;

let coordinate_set_body_tuple_homogeneous_cartesian_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_cartesian_constructor s);;

let coordinate_set_body_tuple_homogeneous_linear_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_linear_constructor s);;

let coordinate_set_body_tuple_homogeneous_planar_constructor s = coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol (Coordinate_set_body_tuple_symbol_v.coordinate_set_body_tuple_homogeneous_planar_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Coordinate_set_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Coordinate_set_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try coordinate_set_body_symbol_of_coordinate_set_body_tuple_symbol
      (Coordinate_set_body_tuple_symbol_v.make nam s)
  with Failure "Not_a_coordinate_set_body_tuple_symbol:Coordinate_set_body_tuple_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Coordinate_set_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Coordinate_set_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Coordinate_set_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Coordinate_set_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Coordinate_set_body subtype" nam s)
      "it does not exists"
      "Check file Coordinate_set_body_symbol_v.ml"
    in
    failwith "Not_a_coordinate_set_body_symbol:Coordinate_set_body_symbol_v.ml:make"
;;


(** Coordinate_set_body_symbol_v at 11:32:46 on 14 Dec 2016. created by version v2.4 of generator *)



