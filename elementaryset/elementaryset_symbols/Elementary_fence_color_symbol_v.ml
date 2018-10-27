(** {3 Elementary_fence_color_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Elementary_fence_color_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Elementary_fence_color_symbol_t.Black -> "black"
  | Elementary_fence_color_symbol_t.Blue -> "blue"
  | Elementary_fence_color_symbol_t.Green -> "green"
  | Elementary_fence_color_symbol_t.Orange -> "orange"
  | Elementary_fence_color_symbol_t.Pink -> "pink"
  | Elementary_fence_color_symbol_t.Red -> "red"
  | Elementary_fence_color_symbol_t.White -> "white"
  | Elementary_fence_color_symbol_t.Yellow -> "yellow"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Elementary_fence_color_symbol_t.Black -> ""
  | Elementary_fence_color_symbol_t.Blue -> ""
  | Elementary_fence_color_symbol_t.Green -> ""
  | Elementary_fence_color_symbol_t.Orange -> ""
  | Elementary_fence_color_symbol_t.Pink -> ""
  | Elementary_fence_color_symbol_t.Red -> ""
  | Elementary_fence_color_symbol_t.White -> ""
  | Elementary_fence_color_symbol_t.Yellow -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_efc =
  Format.sprintf "Elementary_fence_color_symbol_t.%s" (String.capitalize (name sym_efc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_efc =
  Format.sprintf "%s \"%s\"" (longname sym_efc) (string_off sym_efc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_black = function
  | Elementary_fence_color_symbol_t.Black -> true
  | _ -> false
;;

let is_blue = function
  | Elementary_fence_color_symbol_t.Blue -> true
  | _ -> false
;;

let is_green = function
  | Elementary_fence_color_symbol_t.Green -> true
  | _ -> false
;;

let is_orange = function
  | Elementary_fence_color_symbol_t.Orange -> true
  | _ -> false
;;

let is_pink = function
  | Elementary_fence_color_symbol_t.Pink -> true
  | _ -> false
;;

let is_red = function
  | Elementary_fence_color_symbol_t.Red -> true
  | _ -> false
;;

let is_white = function
  | Elementary_fence_color_symbol_t.White -> true
  | _ -> false
;;

let is_yellow = function
  | Elementary_fence_color_symbol_t.Yellow -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let black = Elementary_fence_color_symbol_t.Black;;

let blue = Elementary_fence_color_symbol_t.Blue;;

let green = Elementary_fence_color_symbol_t.Green;;

let orange = Elementary_fence_color_symbol_t.Orange;;

let pink = Elementary_fence_color_symbol_t.Pink;;

let red = Elementary_fence_color_symbol_t.Red;;

let white = Elementary_fence_color_symbol_t.White;;

let yellow = Elementary_fence_color_symbol_t.Yellow;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "black" -> black
  | "blue" -> blue
  | "green" -> green
  | "orange" -> orange
  | "pink" -> pink
  | "red" -> red
  | "white" -> white
  | "yellow" -> yellow
  | _ ->
  failwith "Not_a_topson_bare:Elementary_fence_color_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Elementary_fence_color_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Elementary_fence_color_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Elementary_fence_color_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Elementary_fence_color_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Elementary_fence_color_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Elementary_fence_color subtype" nam s)
      "it does not exists"
      "Check file Elementary_fence_color_symbol_v.ml"
    in
    failwith "Not_a_elementary_fence_color_symbol:Elementary_fence_color_symbol_v.ml:make"
;;


(** Elementary_fence_color_symbol_v at 11:52:24 on 9 May 2016. created by version v2.4 of generator *)



