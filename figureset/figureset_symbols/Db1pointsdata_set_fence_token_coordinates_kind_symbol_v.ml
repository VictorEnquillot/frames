(** {3 Db1pointsdata_set_fence_token_coordinates_kind_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc ->
    Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.name sym_dkc
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc ->
    Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.name sym_dkc
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl ->
    Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.name sym_dkl
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp ->
    Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.name sym_dkp
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp ->
    Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.name sym_dkp
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks ->
    Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.name sym_dks
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc ->
  Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.string_off sym_dkc
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc ->
  Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.string_off sym_dkc
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl ->
  Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.string_off sym_dkl
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp ->
  Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.string_off sym_dkp
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp ->
  Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.string_off sym_dkp
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks ->
  Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.string_off sym_dks
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dck =
  Format.sprintf "Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.%s" (String.capitalize_ascii (name sym_dck))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dck =
  Format.sprintf "%s \"%s\"" (longname sym_dck) (string_off sym_dck)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc -> sym_dkc
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol"
      (name sym_dck) "check"
;;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc -> sym_dkc
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol"
      (name sym_dck) "check"
;;

let db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl -> sym_dkl
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol"
      (name sym_dck) "check"
;;

let db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp -> sym_dkp
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol"
      (name sym_dck) "check"
;;

let db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp -> sym_dkp
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol"
      (name sym_dck) "check"
;;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks -> sym_dks
  | sym_dck -> Error_messages_v.print_fatal_error
      nam_cod "db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol"
      "Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol"
      (name sym_dck) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol _ -> true
  | _ -> false
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol = function
  | Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor sym_dkc
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dkc = db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor sym_dkc
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dkl = db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_linear_constructor sym_dkl
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dkp = db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_planar_constructor sym_dkp
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dkp = db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_polar_constructor sym_dkp
    end
;;

let is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_dck =
  if not (is_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck)
  then false
  else
    begin
      let sym_dks = db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_off_db1pointsdata_set_fence_token_coordinates_kind_symbol sym_dck in
      Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.is_db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor sym_dks
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol sym_dkc
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol sym_dkc
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol sym_dkl
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol sym_dkp
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol sym_dkp
;;

let db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks = 
  Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol sym_dks
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol (Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cartesian_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_cylindrical_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol (Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_linear_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol (Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_planar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol (Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_polar_constructor s);;

let db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s = db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol:Db1pointsdata_set_fence_token_coordinates_kind_cartesian_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol:Db1pointsdata_set_fence_token_coordinates_kind_cylindrical_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_linear_symbol:Db1pointsdata_set_fence_token_coordinates_kind_linear_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_planar_symbol:Db1pointsdata_set_fence_token_coordinates_kind_planar_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_polar_symbol:Db1pointsdata_set_fence_token_coordinates_kind_polar_symbol_v.ml:make" ->
  try db1pointsdata_set_fence_token_coordinates_kind_symbol_of_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
      (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.make nam s)
  with Failure "Not_a_db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol:Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Db1pointsdata_set_fence_token_coordinates_kind subtype" nam s)
      "it does not exists"
      "Check file Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml"
    in
    failwith "Not_a_db1pointsdata_set_fence_token_coordinates_kind_symbol:Db1pointsdata_set_fence_token_coordinates_kind_symbol_v.ml:make"
;;


(** Db1pointsdata_set_fence_token_coordinates_kind_symbol_v at 15:7:19 on 31 Oct 2018. created by version v2.5 of generator *)



