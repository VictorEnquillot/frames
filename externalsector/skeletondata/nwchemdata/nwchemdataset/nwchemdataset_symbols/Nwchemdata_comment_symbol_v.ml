(** {3 Nwchemdata_comment_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_comment_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_authorname_symbol sym_nca ->
    Nwchemdata_comment_authorname_symbol_v.name sym_nca
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_aoemsl_symbol sym_nca ->
    Nwchemdata_comment_aoemsl_symbol_v.name sym_nca
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol sym_ncd ->
    Nwchemdata_comment_dashed_symbol_v.name sym_ncd
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashedline_symbol sym_ncd ->
    Nwchemdata_comment_dashedline_symbol_v.name sym_ncd
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_elementline_symbol sym_nce ->
    Nwchemdata_comment_elementline_symbol_v.name sym_nce
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol sym_nch ->
    Nwchemdata_comment_header_symbol_v.name sym_nch
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_journalreference_symbol sym_ncj ->
    Nwchemdata_comment_journalreference_symbol_v.name sym_ncj
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol sym_ncr ->
    Nwchemdata_comment_reference_symbol_v.name sym_ncr
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_authorname_symbol sym_nca ->
  Nwchemdata_comment_authorname_symbol_v.string_off sym_nca
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_aoemsl_symbol sym_nca ->
  Nwchemdata_comment_aoemsl_symbol_v.string_off sym_nca
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol sym_ncd ->
  Nwchemdata_comment_dashed_symbol_v.string_off sym_ncd
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashedline_symbol sym_ncd ->
  Nwchemdata_comment_dashedline_symbol_v.string_off sym_ncd
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_elementline_symbol sym_nce ->
  Nwchemdata_comment_elementline_symbol_v.string_off sym_nce
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol sym_nch ->
  Nwchemdata_comment_header_symbol_v.string_off sym_nch
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_journalreference_symbol sym_ncj ->
  Nwchemdata_comment_journalreference_symbol_v.string_off sym_ncj
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol sym_ncr ->
  Nwchemdata_comment_reference_symbol_v.string_off sym_ncr
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nco =
  Format.sprintf "Nwchemdata_comment_symbol_t.%s" (String.capitalize (name sym_nco))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nco =
  Format.sprintf "%s \"%s\"" (longname sym_nco) (string_off sym_nco)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_authorname_symbol sym_nca -> sym_nca
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_authorname_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_aoemsl_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_aoemsl_symbol sym_nca -> sym_nca
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_aoemsl_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_aoemsl_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_dashed_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol sym_ncd -> sym_ncd
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_dashed_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_dashed_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_dashedline_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashedline_symbol sym_ncd -> sym_ncd
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_dashedline_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_dashedline_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_elementline_symbol sym_nce -> sym_nce
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_elementline_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_header_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol sym_nch -> sym_nch
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_header_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_header_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_journalreference_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_journalreference_symbol sym_ncj -> sym_ncj
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_journalreference_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_journalreference_symbol"
      (name sym_nco) "check"
;;

let nwchemdata_comment_reference_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol sym_ncr -> sym_ncr
  | sym_nco -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_reference_symbol_off_nwchemdata_comment_symbol"
      "Nwchemdata_comment_reference_symbol"
      (name sym_nco) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_symbol sym_nco = 
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
    Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_symbol sym_nco = 
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
    Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_symbol sym_nco = 
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
    Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_elementline_one_symbol_off_nwchemdata_comment_symbol sym_nco = 
  let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
    Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_one_symbol_off_nwchemdata_comment_elementline_symbol sym_nce
;;

let nwchemdata_comment_elementline_many_symbol_off_nwchemdata_comment_symbol sym_nco = 
  let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
    Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_many_symbol_off_nwchemdata_comment_elementline_symbol sym_nce
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_authorname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_aoemsl_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_dashed_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashedline_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_elementline_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_header_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_journalreference_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_reference_symbol_off_nwchemdata_comment_symbol = function
  | Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_comment_authorname_one_constructor sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_one_constructor sym_nca
    end
;;

let is_nwchemdata_comment_authorname_two_constructor sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_two_constructor sym_nca
    end
;;

let is_nwchemdata_comment_authorname_many_constructor sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_many_constructor sym_nca
    end
;;

let is_nwchemdata_comment_aoemsl_constructor sym_nco =
  if not (is_nwchemdata_comment_aoemsl_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nca = nwchemdata_comment_aoemsl_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_aoemsl_symbol_v.is_nwchemdata_comment_aoemsl_constructor sym_nca
    end
;;

let is_nwchemdata_comment_dashed_constructor sym_nco =
  if not (is_nwchemdata_comment_dashed_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_ncd = nwchemdata_comment_dashed_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_dashed_symbol_v.is_nwchemdata_comment_dashed_constructor sym_ncd
    end
;;

let is_nwchemdata_comment_dashedline_constructor sym_nco =
  if not (is_nwchemdata_comment_dashedline_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_ncd = nwchemdata_comment_dashedline_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_dashedline_symbol_v.is_nwchemdata_comment_dashedline_constructor sym_ncd
    end
;;

let is_nwchemdata_comment_elementline_one_constructor sym_nco =
  if not (is_nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_elementline_symbol_v.is_nwchemdata_comment_elementline_one_constructor sym_nce
    end
;;

let is_nwchemdata_comment_elementline_many_constructor sym_nco =
  if not (is_nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_elementline_symbol_v.is_nwchemdata_comment_elementline_many_constructor sym_nce
    end
;;

let is_nwchemdata_comment_header_constructor sym_nco =
  if not (is_nwchemdata_comment_header_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_nch = nwchemdata_comment_header_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_header_symbol_v.is_nwchemdata_comment_header_constructor sym_nch
    end
;;

let is_nwchemdata_comment_journalreference_constructor sym_nco =
  if not (is_nwchemdata_comment_journalreference_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_ncj = nwchemdata_comment_journalreference_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_journalreference_symbol_v.is_nwchemdata_comment_journalreference_constructor sym_ncj
    end
;;

let is_nwchemdata_comment_reference_constructor sym_nco =
  if not (is_nwchemdata_comment_reference_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
      let sym_ncr = nwchemdata_comment_reference_symbol_off_nwchemdata_comment_symbol sym_nco in
      Nwchemdata_comment_reference_symbol_v.is_nwchemdata_comment_reference_constructor sym_ncr
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_symbol sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
  Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
    end
;;

let is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_symbol sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
  Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
    end
;;

let is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_symbol sym_nco =
  if not (is_nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
  let sym_nca = nwchemdata_comment_authorname_symbol_off_nwchemdata_comment_symbol sym_nco in
  Nwchemdata_comment_authorname_symbol_v.is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol sym_nca
    end
;;

let is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_comment_symbol sym_nco =
  if not (is_nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
  let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
  Nwchemdata_comment_elementline_symbol_v.is_nwchemdata_comment_elementline_one_symbol_off_nwchemdata_comment_elementline_symbol sym_nce
    end
;;

let is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_comment_symbol sym_nco =
  if not (is_nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco)
  then false
  else
    begin
  let sym_nce = nwchemdata_comment_elementline_symbol_off_nwchemdata_comment_symbol sym_nco in
  Nwchemdata_comment_elementline_symbol_v.is_nwchemdata_comment_elementline_many_symbol_off_nwchemdata_comment_elementline_symbol sym_nce
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol sym_nca = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_aoemsl_symbol sym_nca = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_aoemsl_symbol sym_nca
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_dashed_symbol sym_ncd = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashed_symbol sym_ncd
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_dashedline_symbol sym_ncd = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_dashedline_symbol sym_ncd
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol sym_nce = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_elementline_symbol sym_nce
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_header_symbol sym_nch = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_header_symbol sym_nch
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_journalreference_symbol sym_ncj = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_journalreference_symbol sym_ncj
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_reference_symbol sym_ncr = 
  Nwchemdata_comment_symbol_t.Nwchemdata_comment_reference_symbol sym_ncr
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_one_symbol sym_na1 = 
  let sym_nca = Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_one_symbol sym_na1 in
    nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_two_symbol sym_na2 = 
  let sym_nca = Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_two_symbol sym_na2 in
    nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_many_symbol sym_nam = 
  let sym_nca = Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_many_symbol sym_nam in
    nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol sym_nca
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_one_symbol sym_ne1 = 
  let sym_nce = Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_symbol_of_nwchemdata_comment_elementline_one_symbol sym_ne1 in
    nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol sym_nce
;;

let nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_many_symbol sym_nem = 
  let sym_nce = Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_symbol_of_nwchemdata_comment_elementline_many_symbol sym_nem in
    nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol sym_nce
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_comment_authorname_one_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol (Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_one_constructor s);;

let nwchemdata_comment_authorname_two_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol (Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_two_constructor s);;

let nwchemdata_comment_authorname_many_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol (Nwchemdata_comment_authorname_symbol_v.nwchemdata_comment_authorname_many_constructor s);;

let nwchemdata_comment_aoemsl_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_aoemsl_symbol (Nwchemdata_comment_aoemsl_symbol_v.nwchemdata_comment_aoemsl_constructor s);;

let nwchemdata_comment_dashed_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_dashed_symbol (Nwchemdata_comment_dashed_symbol_v.nwchemdata_comment_dashed_constructor s);;

let nwchemdata_comment_dashedline_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_dashedline_symbol (Nwchemdata_comment_dashedline_symbol_v.nwchemdata_comment_dashedline_constructor s);;

let nwchemdata_comment_elementline_one_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol (Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_one_constructor s);;

let nwchemdata_comment_elementline_many_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol (Nwchemdata_comment_elementline_symbol_v.nwchemdata_comment_elementline_many_constructor s);;

let nwchemdata_comment_header_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_header_symbol (Nwchemdata_comment_header_symbol_v.nwchemdata_comment_header_constructor s);;

let nwchemdata_comment_journalreference_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_journalreference_symbol (Nwchemdata_comment_journalreference_symbol_v.nwchemdata_comment_journalreference_constructor s);;

let nwchemdata_comment_reference_constructor s = nwchemdata_comment_symbol_of_nwchemdata_comment_reference_symbol (Nwchemdata_comment_reference_symbol_v.nwchemdata_comment_reference_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_comment_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_comment_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_comment_symbol_of_nwchemdata_comment_authorname_symbol
      (Nwchemdata_comment_authorname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_authorname_symbol:Nwchemdata_comment_authorname_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_aoemsl_symbol
      (Nwchemdata_comment_aoemsl_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_aoemsl_symbol:Nwchemdata_comment_aoemsl_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_dashed_symbol
      (Nwchemdata_comment_dashed_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_dashed_symbol:Nwchemdata_comment_dashed_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_dashedline_symbol
      (Nwchemdata_comment_dashedline_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_dashedline_symbol:Nwchemdata_comment_dashedline_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_elementline_symbol
      (Nwchemdata_comment_elementline_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_elementline_symbol:Nwchemdata_comment_elementline_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_header_symbol
      (Nwchemdata_comment_header_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_header_symbol:Nwchemdata_comment_header_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_journalreference_symbol
      (Nwchemdata_comment_journalreference_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_journalreference_symbol:Nwchemdata_comment_journalreference_symbol_v.ml:make" ->
  try nwchemdata_comment_symbol_of_nwchemdata_comment_reference_symbol
      (Nwchemdata_comment_reference_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_reference_symbol:Nwchemdata_comment_reference_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_comment_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_comment_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_comment_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_comment_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_comment subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_comment_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_comment_symbol:Nwchemdata_comment_symbol_v.ml:make"
;;


(** Nwchemdata_comment_symbol_v at 17:57:14 on 4 Dec 2016. created by version v2.4 of generator *)



