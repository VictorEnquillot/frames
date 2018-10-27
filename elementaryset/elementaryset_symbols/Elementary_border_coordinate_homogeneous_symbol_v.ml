(** {3 Elementary_border_coordinate_homogeneous_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_border_coordinate_homogeneous_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc ->
    Elementary_border_coordinate_homogeneous_cartesian_symbol_v.name sym_ehc
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_linear_symbol sym_ehl ->
    Elementary_border_coordinate_homogeneous_linear_symbol_v.name sym_ehl
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_planar_symbol sym_ehp ->
    Elementary_border_coordinate_homogeneous_planar_symbol_v.name sym_ehp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc ->
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.string_off sym_ehc
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_linear_symbol sym_ehl ->
  Elementary_border_coordinate_homogeneous_linear_symbol_v.string_off sym_ehl
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_planar_symbol sym_ehp ->
  Elementary_border_coordinate_homogeneous_planar_symbol_v.string_off sym_ehp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ech =
  Format.sprintf "Elementary_border_coordinate_homogeneous_symbol_t.%s" (String.capitalize (name sym_ech))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ech =
  Format.sprintf "%s \"%s\"" (longname sym_ech) (string_off sym_ech)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc -> sym_ehc
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol"
      "Elementary_border_coordinate_homogeneous_cartesian_symbol"
      (name sym_ech) "check"
;;

let elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_linear_symbol sym_ehl -> sym_ehl
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol"
      "Elementary_border_coordinate_homogeneous_linear_symbol"
      (name sym_ech) "check"
;;

let elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_planar_symbol sym_ehp -> sym_ehp
  | sym_ech -> Error_messages_v.print_fatal_error
      nam_cod "elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol"
      "Elementary_border_coordinate_homogeneous_planar_symbol"
      (name sym_ech) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehl = elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_linear_symbol_v.elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl
;;

let elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
;;

let elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech = 
  let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
    Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_linear_symbol _ -> true
  | _ -> false
;;

let is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol = function
  | Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_planar_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_constructor sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_constructor sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_constructor sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehl = elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_linear_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_constructor sym_ehl
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_planar_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_constructor sym_ehp
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
      let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
      Elementary_border_coordinate_homogeneous_planar_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_constructor sym_ehp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_x_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_y_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehc = elementary_border_coordinate_homogeneous_cartesian_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_cartesian_symbol_v.is_elementary_border_coordinate_homogeneous_cartesian_z_symbol_off_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
    end
;;

let is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehl = elementary_border_coordinate_homogeneous_linear_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_linear_symbol_v.is_elementary_border_coordinate_homogeneous_linear_x_symbol_off_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_planar_symbol_v.is_elementary_border_coordinate_homogeneous_planar_x_symbol_off_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
    end
;;

let is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech =
  if not (is_elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech)
  then false
  else
    begin
  let sym_ehp = elementary_border_coordinate_homogeneous_planar_symbol_off_elementary_border_coordinate_homogeneous_symbol sym_ech in
  Elementary_border_coordinate_homogeneous_planar_symbol_v.is_elementary_border_coordinate_homogeneous_planar_y_symbol_off_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc = 
  Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl = 
  Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_linear_symbol sym_ehl
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp = 
  Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx = 
  let sym_ehc = Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_of_elementary_border_coordinate_homogeneous_cartesian_x_symbol sym_ecx in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy = 
  let sym_ehc = Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_of_elementary_border_coordinate_homogeneous_cartesian_y_symbol sym_ecy in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz = 
  let sym_ehc = Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_symbol_of_elementary_border_coordinate_homogeneous_cartesian_z_symbol sym_ecz in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol sym_ehc
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx = 
  let sym_ehl = Elementary_border_coordinate_homogeneous_linear_symbol_v.elementary_border_coordinate_homogeneous_linear_symbol_of_elementary_border_coordinate_homogeneous_linear_x_symbol sym_elx in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol sym_ehl
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx = 
  let sym_ehp = Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_symbol_of_elementary_border_coordinate_homogeneous_planar_x_symbol sym_epx in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
;;

let elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy = 
  let sym_ehp = Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_symbol_of_elementary_border_coordinate_homogeneous_planar_y_symbol sym_epy in
    elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol sym_ehp
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_border_coordinate_homogeneous_cartesian_x_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol (Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_x_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_y_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol (Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_y_constructor s);;

let elementary_border_coordinate_homogeneous_cartesian_z_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol (Elementary_border_coordinate_homogeneous_cartesian_symbol_v.elementary_border_coordinate_homogeneous_cartesian_z_constructor s);;

let elementary_border_coordinate_homogeneous_linear_x_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol (Elementary_border_coordinate_homogeneous_linear_symbol_v.elementary_border_coordinate_homogeneous_linear_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_x_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol (Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_x_constructor s);;

let elementary_border_coordinate_homogeneous_planar_y_constructor s = elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol (Elementary_border_coordinate_homogeneous_planar_symbol_v.elementary_border_coordinate_homogeneous_planar_y_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_cartesian_symbol
      (Elementary_border_coordinate_homogeneous_cartesian_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_homogeneous_cartesian_symbol:Elementary_border_coordinate_homogeneous_cartesian_symbol_v.ml:make" ->
  try elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_linear_symbol
      (Elementary_border_coordinate_homogeneous_linear_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_homogeneous_linear_symbol:Elementary_border_coordinate_homogeneous_linear_symbol_v.ml:make" ->
  try elementary_border_coordinate_homogeneous_symbol_of_elementary_border_coordinate_homogeneous_planar_symbol
      (Elementary_border_coordinate_homogeneous_planar_symbol_v.make nam s)
  with Failure "Not_a_elementary_border_coordinate_homogeneous_planar_symbol:Elementary_border_coordinate_homogeneous_planar_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_border_coordinate_homogeneous_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_border_coordinate_homogeneous subtype" nam s)
      "it does not exists"
      "Check file Elementary_border_coordinate_homogeneous_symbol_v.ml"
    in
    failwith "Not_a_elementary_border_coordinate_homogeneous_symbol:Elementary_border_coordinate_homogeneous_symbol_v.ml:make"
;;


(** Elementary_border_coordinate_homogeneous_symbol_v at 11:52:21 on 9 May 2016. created by version v2.4 of generator *)



