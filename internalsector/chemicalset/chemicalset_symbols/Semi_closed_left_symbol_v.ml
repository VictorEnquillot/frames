(** {3 Semi_closed_left_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SCHE:Semi_closed_left_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Semi_closed_left_symbol_t.Semi_closed_left_block_symbol sym_slb ->
    Semi_closed_left_block_symbol_v.name sym_slb
  | Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol sym_sls ->
    Semi_closed_left_segment_symbol_v.name sym_sls
  | Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol sym_slf ->
    Semi_closed_left_fragment_symbol_v.name sym_slf
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Semi_closed_left_symbol_t.Semi_closed_left_block_symbol sym_slb ->
  Semi_closed_left_block_symbol_v.string_off sym_slb
  | Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol sym_sls ->
  Semi_closed_left_segment_symbol_v.string_off sym_sls
  | Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol sym_slf ->
  Semi_closed_left_fragment_symbol_v.string_off sym_slf
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_scl =
  Format.sprintf "Semi_closed_left_symbol_t.%s" (String.capitalize (name sym_scl))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_scl =
  Format.sprintf "%s \"%s\"" (longname sym_scl) (string_off sym_scl)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let semi_closed_left_block_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_block_symbol sym_slb -> sym_slb
  | sym_scl -> Error_messages_v.print_fatal_error
      nam_cod "semi_closed_left_block_symbol_off_semi_closed_left_symbol"
      "Semi_closed_left_block_symbol"
      (name sym_scl) "check"
;;

let semi_closed_left_segment_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol sym_sls -> sym_sls
  | sym_scl -> Error_messages_v.print_fatal_error
      nam_cod "semi_closed_left_segment_symbol_off_semi_closed_left_symbol"
      "Semi_closed_left_segment_symbol"
      (name sym_scl) "check"
;;

let semi_closed_left_fragment_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol sym_slf -> sym_slf
  | sym_scl -> Error_messages_v.print_fatal_error
      nam_cod "semi_closed_left_fragment_symbol_off_semi_closed_left_symbol"
      "Semi_closed_left_fragment_symbol"
      (name sym_scl) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_semi_closed_left_block_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_block_symbol _ -> true
  | _ -> false
;;

let is_semi_closed_left_segment_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol _ -> true
  | _ -> false
;;

let is_semi_closed_left_fragment_symbol_off_semi_closed_left_symbol = function
  | Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_z_ch3_s sym_scl =
  if not (is_semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slb = semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_block_symbol_v.is_z_ch3_s sym_slb
    end
;;

let is_z_ch2_d sym_scl =
  if not (is_semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slb = semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_block_symbol_v.is_z_ch2_d sym_slb
    end
;;

let is_z_ch2_ss sym_scl =
  if not (is_semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slb = semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_block_symbol_v.is_z_ch2_ss sym_slb
    end
;;

let is_z_ch_t sym_scl =
  if not (is_semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slb = semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_block_symbol_v.is_z_ch_t sym_slb
    end
;;

let is_z_ch_sd sym_scl =
  if not (is_semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slb = semi_closed_left_block_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_block_symbol_v.is_z_ch_sd sym_slb
    end
;;

let is_z_nh2_s_ch2_s sym_scl =
  if not (is_semi_closed_left_segment_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_sls = semi_closed_left_segment_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_segment_symbol_v.is_z_nh2_s_ch2_s sym_sls
    end
;;

let is_z_nh2_s_c_sd sym_scl =
  if not (is_semi_closed_left_fragment_symbol_off_semi_closed_left_symbol sym_scl)
  then false
  else
    begin
      let sym_slf = semi_closed_left_fragment_symbol_off_semi_closed_left_symbol sym_scl in
      Semi_closed_left_fragment_symbol_v.is_z_nh2_s_c_sd sym_slf
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let semi_closed_left_symbol_of_semi_closed_left_block_symbol sym_slb = 
  Semi_closed_left_symbol_t.Semi_closed_left_block_symbol sym_slb
;;

let semi_closed_left_symbol_of_semi_closed_left_segment_symbol sym_sls = 
  Semi_closed_left_symbol_t.Semi_closed_left_segment_symbol sym_sls
;;

let semi_closed_left_symbol_of_semi_closed_left_fragment_symbol sym_slf = 
  Semi_closed_left_symbol_t.Semi_closed_left_fragment_symbol sym_slf
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let z_ch3_s = semi_closed_left_symbol_of_semi_closed_left_block_symbol Semi_closed_left_block_symbol_v.z_ch3_s;;

let z_ch2_d = semi_closed_left_symbol_of_semi_closed_left_block_symbol Semi_closed_left_block_symbol_v.z_ch2_d;;

let z_ch2_ss = semi_closed_left_symbol_of_semi_closed_left_block_symbol Semi_closed_left_block_symbol_v.z_ch2_ss;;

let z_ch_t = semi_closed_left_symbol_of_semi_closed_left_block_symbol Semi_closed_left_block_symbol_v.z_ch_t;;

let z_ch_sd = semi_closed_left_symbol_of_semi_closed_left_block_symbol Semi_closed_left_block_symbol_v.z_ch_sd;;

let z_nh2_s_ch2_s = semi_closed_left_symbol_of_semi_closed_left_segment_symbol Semi_closed_left_segment_symbol_v.z_nh2_s_ch2_s;;

let z_nh2_s_c_sd = semi_closed_left_symbol_of_semi_closed_left_fragment_symbol Semi_closed_left_fragment_symbol_v.z_nh2_s_c_sd;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Semi_closed_left_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Semi_closed_left_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try semi_closed_left_symbol_of_semi_closed_left_block_symbol
      (Semi_closed_left_block_symbol_v.make nam s)
  with Failure "Not_a_semi_closed_left_block_symbol:Semi_closed_left_block_symbol_v.ml:make" ->
  try semi_closed_left_symbol_of_semi_closed_left_segment_symbol
      (Semi_closed_left_segment_symbol_v.make nam s)
  with Failure "Not_a_semi_closed_left_segment_symbol:Semi_closed_left_segment_symbol_v.ml:make" ->
  try semi_closed_left_symbol_of_semi_closed_left_fragment_symbol
      (Semi_closed_left_fragment_symbol_v.make nam s)
  with Failure "Not_a_semi_closed_left_fragment_symbol:Semi_closed_left_fragment_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Semi_closed_left_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Semi_closed_left_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Semi_closed_left_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Semi_closed_left_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Semi_closed_left subtype" nam s)
      "it does not exists"
      "Check file Semi_closed_left_symbol_v.ml"
    in
    failwith "Not_a_semi_closed_left_symbol:Semi_closed_left_symbol_v.ml:make"
;;


(** Semi_closed_left_symbol_v at 15:38:38 on 24 Jun 2013. created by version v2.3 of generator *)



