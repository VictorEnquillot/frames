(** {3 Linear_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Linear_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Linear_symbol_t.Linear_block_symbol sym_lbl ->
    Linear_block_symbol_v.name sym_lbl
  | Linear_symbol_t.Linear_segment_symbol sym_lse ->
    Linear_segment_symbol_v.name sym_lse
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Linear_symbol_t.Linear_block_symbol sym_lbl ->
  Linear_block_symbol_v.string_off sym_lbl
  | Linear_symbol_t.Linear_segment_symbol sym_lse ->
  Linear_segment_symbol_v.string_off sym_lse
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_lin =
  Format.sprintf "Linear_symbol_t.%s" (String.capitalize (name sym_lin))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_lin =
  Format.sprintf "%s \"%s\"" (longname sym_lin) (string_off sym_lin)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let linear_block_symbol_off_linear_symbol = function
  | Linear_symbol_t.Linear_block_symbol sym_lbl -> sym_lbl
  | sym_lin -> Error_messages_v.print_fatal_error
      nam_cod "linear_block_symbol_off_linear_symbol"
      "Linear_block_symbol"
      (name sym_lin) "check"
;;

let linear_segment_symbol_off_linear_symbol = function
  | Linear_symbol_t.Linear_segment_symbol sym_lse -> sym_lse
  | sym_lin -> Error_messages_v.print_fatal_error
      nam_cod "linear_segment_symbol_off_linear_symbol"
      "Linear_segment_symbol"
      (name sym_lin) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_linear_block_symbol_off_linear_symbol = function
  | Linear_symbol_t.Linear_block_symbol _ -> true
  | _ -> false
;;

let is_linear_segment_symbol_off_linear_symbol = function
  | Linear_symbol_t.Linear_segment_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_s_ch2_s sym_lin =
  if not (is_linear_block_symbol_off_linear_symbol sym_lin)
  then false
  else
    begin
      let sym_lbl = linear_block_symbol_off_linear_symbol sym_lin in
      Linear_block_symbol_v.is_s_ch2_s sym_lbl
    end
;;

let is_s_ch2_d sym_lin =
  if not (is_linear_block_symbol_off_linear_symbol sym_lin)
  then false
  else
    begin
      let sym_lbl = linear_block_symbol_off_linear_symbol sym_lin in
      Linear_block_symbol_v.is_s_ch2_d sym_lbl
    end
;;

let is_s_ch2_t sym_lin =
  if not (is_linear_block_symbol_off_linear_symbol sym_lin)
  then false
  else
    begin
      let sym_lbl = linear_block_symbol_off_linear_symbol sym_lin in
      Linear_block_symbol_v.is_s_ch2_t sym_lbl
    end
;;

let is_s_ch2_s_nh_c_co_s sym_lin =
  if not (is_linear_segment_symbol_off_linear_symbol sym_lin)
  then false
  else
    begin
      let sym_lse = linear_segment_symbol_off_linear_symbol sym_lin in
      Linear_segment_symbol_v.is_s_ch2_s_nh_c_co_s sym_lse
    end
;;

let is_s_co_c_nh_s_ch2_s sym_lin =
  if not (is_linear_segment_symbol_off_linear_symbol sym_lin)
  then false
  else
    begin
      let sym_lse = linear_segment_symbol_off_linear_symbol sym_lin in
      Linear_segment_symbol_v.is_s_co_c_nh_s_ch2_s sym_lse
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let linear_symbol_of_linear_block_symbol sym_lbl = 
  Linear_symbol_t.Linear_block_symbol sym_lbl
;;

let linear_symbol_of_linear_segment_symbol sym_lse = 
  Linear_symbol_t.Linear_segment_symbol sym_lse
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let s_ch2_s = linear_symbol_of_linear_block_symbol Linear_block_symbol_v.s_ch2_s;;

let s_ch2_d = linear_symbol_of_linear_block_symbol Linear_block_symbol_v.s_ch2_d;;

let s_ch2_t = linear_symbol_of_linear_block_symbol Linear_block_symbol_v.s_ch2_t;;

let s_ch2_s_nh_c_co_s = linear_symbol_of_linear_segment_symbol Linear_segment_symbol_v.s_ch2_s_nh_c_co_s;;

let s_co_c_nh_s_ch2_s = linear_symbol_of_linear_segment_symbol Linear_segment_symbol_v.s_co_c_nh_s_ch2_s;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Linear_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Linear_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try linear_symbol_of_linear_block_symbol
      (Linear_block_symbol_v.make nam s)
  with Failure "Not_a_linear_block_symbol:Linear_block_symbol_v.ml:make" ->
  try linear_symbol_of_linear_segment_symbol
      (Linear_segment_symbol_v.make nam s)
  with Failure "Not_a_linear_segment_symbol:Linear_segment_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Linear_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Linear_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Linear_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Linear_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Linear subtype" nam s)
      "it does not exists"
      "Check file Linear_symbol_v.ml"
    in
    failwith "Not_a_linear_symbol:Linear_symbol_v.ml:make"
;;


(** Linear_symbol_v at 15:38:37 on 24 Jun 2013. created by version v2.3 of generator *)



