(** {3 Readee_color_v} *)

(** {6 Documenting_for} *)

let documentation () = 
[
  "Current : REA:Readee_color_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for} *)

let name = function
  | Readee_color_t.Black -> "black"
  | Readee_color_t.Blue -> "blue"
  | Readee_color_t.Green -> "green"
  | Readee_color_t.Orange -> "orange"
  | Readee_color_t.Pink -> "pink"
  | Readee_color_t.Red -> "red"
  | Readee_color_t.White -> "white"
  | Readee_color_t.Yellow -> "yellow"
;;

let shortname = name;;

(** {6 String_offing_for} *)

let string_off = function
  | Readee_color_t.Black -> ""
  | Readee_color_t.Blue -> ""
  | Readee_color_t.Green -> ""
  | Readee_color_t.Orange -> ""
  | Readee_color_t.Pink -> ""
  | Readee_color_t.Red -> ""
  | Readee_color_t.White -> ""
  | Readee_color_t.Yellow -> ""
;;


(** {6 Longnaming_for} *)

let longname sym_efc =
  Format.sprintf "Readee_color_t.%s" (String.capitalize (name sym_efc))
;;


(** {6 Fullnaming_for} *)

let fullname sym_efc =
  Format.sprintf "%s \"%s\"" (longname sym_efc) (string_off sym_efc)
;;


(** {6 Extracting_topson_notleaf_for} *)


(** {6 Extracting_grandson_notleaf_for} *)


(** {6 Querying_topson_bare_for} *)

let is_black = function
  | Readee_color_t.Black -> true
  | _ -> false
;;

let is_blue = function
  | Readee_color_t.Blue -> true
  | _ -> false
;;

let is_green = function
  | Readee_color_t.Green -> true
  | _ -> false
;;

let is_orange = function
  | Readee_color_t.Orange -> true
  | _ -> false
;;

let is_pink = function
  | Readee_color_t.Pink -> true
  | _ -> false
;;

let is_red = function
  | Readee_color_t.Red -> true
  | _ -> false
;;

let is_white = function
  | Readee_color_t.White -> true
  | _ -> false
;;

let is_yellow = function
  | Readee_color_t.Yellow -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for} *)


(** {6 Querying_topson_notleaf_for} *)


(** {6 Querying_grandson_bare_for} *)


(** {6 Querying_grandson_ofstring_for} *)


(** {6 Querying_grandson_notleaf_for} *)


(** {6 Upgrading_topson_notleaf_for} *)


(** {6 Upgrading_grandson_notleaf_for} *)


(** {6 Abbreviating_topson_bare_for} *)

let black = Readee_color_t.Black;;

let blue = Readee_color_t.Blue;;

let green = Readee_color_t.Green;;

let orange = Readee_color_t.Orange;;

let pink = Readee_color_t.Pink;;

let red = Readee_color_t.Red;;

let white = Readee_color_t.White;;

let yellow = Readee_color_t.Yellow;;


(** {6 Abbreviating_topson_ofstring_for} *)


(** {6 Abbreviating_grandson_bare_for} *)


(** {6 Abbreviating_grandson_ofstring_for} *)


(** {6 Making_for_bare} *)

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
  failwith "Not_a_topson_bare:Readee_color_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Readee_color_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Readee_color_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Readee_color_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Readee_color_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Readee_color_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Readee_color subtype" nam s)
      "it does not exists"
      "Check file Readee_color_v.ml"
    in
    failwith "Not_a_elementary_fence_color:Readee_color_v.ml:make"
;;


(** Readee_color_v at 11:52:24 on 9 May 2016. created by version v2.4 of generator *)



