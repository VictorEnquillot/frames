(** {3 Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor _ -> "elementary_fence_coordinate_heterogeneous_spherical_phi_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_esp =
  Format.sprintf "Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.%s" (String.capitalize (name sym_esp))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_esp =
  Format.sprintf "%s \"%s\"" (longname sym_esp) (string_off sym_esp)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_elementary_fence_coordinate_heterogeneous_spherical_phi_constructor = function
  | Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor _ -> true
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s = Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "elementary_fence_coordinate_heterogeneous_spherical_phi_constructor" -> elementary_fence_coordinate_heterogeneous_spherical_phi_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_coordinate_heterogeneous_spherical_phi subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_coordinate_heterogeneous_spherical_phi_symbol:Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v.ml:make"
;;


(** Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_v at 9:51:56 on 27 Sep 2016. created by version v2.4 of generator *)



