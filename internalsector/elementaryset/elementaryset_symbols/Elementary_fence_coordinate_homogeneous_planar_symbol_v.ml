(** {3 Elementary_fence_coordinate_homogeneous_planar_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_coordinate_homogeneous_planar_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx ->
    Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.name sym_epx
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy ->
    Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.name sym_epy
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx ->
  Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.string_off sym_epx
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy ->
  Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.string_off sym_epy
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ehp =
  Format.sprintf "Elementary_fence_coordinate_homogeneous_planar_symbol_t.%s" (String.capitalize (name sym_ehp))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ehp =
  Format.sprintf "%s \"%s\"" (longname sym_ehp) (string_off sym_ehp)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx -> sym_epx
  | sym_ehp -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol"
      "Elementary_fence_coordinate_homogeneous_planar_x_symbol"
      (name sym_ehp) "check"
;;

let elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy -> sym_epy
  | sym_ehp -> Error_messages_v.print_fatal_error
      nam_cod "elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol"
      "Elementary_fence_coordinate_homogeneous_planar_y_symbol"
      (name sym_ehp) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_x_symbol _ -> true
  | _ -> false
;;

let is_elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol = function
  | Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_y_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_elementary_fence_coordinate_homogeneous_planar_x_constructor sym_ehp =
  if not (is_elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp)
  then false
  else
    begin
      let sym_epx = elementary_fence_coordinate_homogeneous_planar_x_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp in
      Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_x_constructor sym_epx
    end
;;

let is_elementary_fence_coordinate_homogeneous_planar_y_constructor sym_ehp =
  if not (is_elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp)
  then false
  else
    begin
      let sym_epy = elementary_fence_coordinate_homogeneous_planar_y_symbol_off_elementary_fence_coordinate_homogeneous_planar_symbol sym_ehp in
      Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.is_elementary_fence_coordinate_homogeneous_planar_y_constructor sym_epy
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx = 
  Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_x_symbol sym_epx
;;

let elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy = 
  Elementary_fence_coordinate_homogeneous_planar_symbol_t.Elementary_fence_coordinate_homogeneous_planar_y_symbol sym_epy
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let elementary_fence_coordinate_homogeneous_planar_x_constructor s = elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_x_symbol (Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.elementary_fence_coordinate_homogeneous_planar_x_constructor s);;

let elementary_fence_coordinate_homogeneous_planar_y_constructor s = elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_y_symbol (Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.elementary_fence_coordinate_homogeneous_planar_y_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_x_symbol
      (Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_coordinate_homogeneous_planar_x_symbol:Elementary_fence_coordinate_homogeneous_planar_x_symbol_v.ml:make" ->
  try elementary_fence_coordinate_homogeneous_planar_symbol_of_elementary_fence_coordinate_homogeneous_planar_y_symbol
      (Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.make nam s)
  with Failure "Not_a_elementary_fence_coordinate_homogeneous_planar_y_symbol:Elementary_fence_coordinate_homogeneous_planar_y_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_coordinate_homogeneous_planar subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_coordinate_homogeneous_planar_symbol:Elementary_fence_coordinate_homogeneous_planar_symbol_v.ml:make"
;;


(** Elementary_fence_coordinate_homogeneous_planar_symbol_v at 9:51:56 on 27 Sep 2016. created by version v2.4 of generator *)



