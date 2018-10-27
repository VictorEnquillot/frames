(** {3 Camlline_for_tag_datastructure_function_make_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_datastructure_function_make_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu ->
    Camlline_for_tag_datastructure_function_make_uno_symbol_v.name sym_fmu
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd ->
    Camlline_for_tag_datastructure_function_make_duo_symbol_v.name sym_fmd
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt ->
    Camlline_for_tag_datastructure_function_make_trio_symbol_v.name sym_fmt
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu ->
  Camlline_for_tag_datastructure_function_make_uno_symbol_v.string_off sym_fmu
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd ->
  Camlline_for_tag_datastructure_function_make_duo_symbol_v.string_off sym_fmd
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt ->
  Camlline_for_tag_datastructure_function_make_trio_symbol_v.string_off sym_fmt
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dfm =
  Format.sprintf "Camlline_for_tag_datastructure_function_make_symbol_t.%s" (String.capitalize (name sym_dfm))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dfm =
  Format.sprintf "%s \"%s\"" (longname sym_dfm) (string_off sym_dfm)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu -> sym_fmu
  | sym_dfm -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol"
      "Camlline_for_tag_datastructure_function_make_uno_symbol"
      (name sym_dfm) "check"
;;

let camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd -> sym_fmd
  | sym_dfm -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol"
      "Camlline_for_tag_datastructure_function_make_duo_symbol"
      (name sym_dfm) "check"
;;

let camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt -> sym_fmt
  | sym_dfm -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol"
      "Camlline_for_tag_datastructure_function_make_trio_symbol"
      (name sym_dfm) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol = function
  | Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_das_vdot_make_tag_a sym_dfm =
  if not (is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm)
  then false
  else
    begin
      let sym_fmu = camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
      Camlline_for_tag_datastructure_function_make_uno_symbol_v.is_das_vdot_make_tag_a sym_fmu
    end
;;

let is_das_vdot_make_tag_a_tag_b sym_dfm =
  if not (is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm)
  then false
  else
    begin
      let sym_fmd = camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
      Camlline_for_tag_datastructure_function_make_duo_symbol_v.is_das_vdot_make_tag_a_tag_b sym_fmd
    end
;;

let is_das_vdot_make_tag_a_tag_b_tag_c sym_dfm =
  if not (is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm)
  then false
  else
    begin
      let sym_fmt = camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm in
      Camlline_for_tag_datastructure_function_make_trio_symbol_v.is_das_vdot_make_tag_a_tag_b_tag_c sym_fmt
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu = 
  Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu
;;

let camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd = 
  Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd
;;

let camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt = 
  Camlline_for_tag_datastructure_function_make_symbol_t.Camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let das_vdot_make_tag_a = camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol Camlline_for_tag_datastructure_function_make_uno_symbol_v.das_vdot_make_tag_a;;

let das_vdot_make_tag_a_tag_b = camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol Camlline_for_tag_datastructure_function_make_duo_symbol_v.das_vdot_make_tag_a_tag_b;;

let das_vdot_make_tag_a_tag_b_tag_c = camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol Camlline_for_tag_datastructure_function_make_trio_symbol_v.das_vdot_make_tag_a_tag_b_tag_c;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol
      (Camlline_for_tag_datastructure_function_make_uno_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_function_make_uno_symbol:Camlline_for_tag_datastructure_function_make_uno_symbol_v:make" ->
  try camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol
      (Camlline_for_tag_datastructure_function_make_duo_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_function_make_duo_symbol:Camlline_for_tag_datastructure_function_make_duo_symbol_v:make" ->
  try camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol
      (Camlline_for_tag_datastructure_function_make_trio_symbol_v.make nam s)
  with Failure "Not_Camlline_for_tag_datastructure_function_make_trio_symbol:Camlline_for_tag_datastructure_function_make_trio_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_tag_datastructure_function_make subtype" nam s)
      "it does not exists"
      "Check file camlline_for_tag_datastructure_function_make_symbol_v.ml"
    in
    failwith "Not_a_valid_camlline_for_tag_datastructure_function_make_symbol:Camlline_for_tag_datastructure_function_make_symbol_v.ml:make"
;;


(** created by version v1.11 of ./generator camlline_for_tag_datastructure_function_make implementation_for_symbol symbol at 9:15 6 May 2013. *)



