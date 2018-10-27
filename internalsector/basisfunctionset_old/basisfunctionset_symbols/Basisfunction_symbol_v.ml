(** {3 Basisfunction_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Basisfunction_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Basisfunction_symbol_t.Basisfunction_body_symbol sym_bbo ->
    Basisfunction_body_symbol_v.name sym_bbo
  | Basisfunction_symbol_t.Basisfunction_context_symbol sym_bco ->
    Basisfunction_context_symbol_v.name sym_bco
  | Basisfunction_symbol_t.Basisfunction_closure_symbol sym_bcl ->
    Basisfunction_closure_symbol_v.name sym_bcl
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Basisfunction_symbol_t.Basisfunction_body_symbol sym_bbo ->
  Basisfunction_body_symbol_v.string_off sym_bbo
  | Basisfunction_symbol_t.Basisfunction_context_symbol sym_bco ->
  Basisfunction_context_symbol_v.string_off sym_bco
  | Basisfunction_symbol_t.Basisfunction_closure_symbol sym_bcl ->
  Basisfunction_closure_symbol_v.string_off sym_bcl
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_bas =
  Format.sprintf "Basisfunction_symbol_t.%s" (String.capitalize (name sym_bas))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_bas =
  Format.sprintf "%s \"%s\"" (longname sym_bas) (string_off sym_bas)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let basisfunction_body_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_body_symbol sym_bbo -> sym_bbo
  | sym_bas -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_body_symbol_off_basisfunction_symbol"
      "Basisfunction_body_symbol"
      (name sym_bas) "check"
;;

let basisfunction_context_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_context_symbol sym_bco -> sym_bco
  | sym_bas -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_context_symbol_off_basisfunction_symbol"
      "Basisfunction_context_symbol"
      (name sym_bas) "check"
;;

let basisfunction_closure_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_closure_symbol sym_bcl -> sym_bcl
  | sym_bas -> Error_messages_v.print_fatal_error
      nam_cod "basisfunction_closure_symbol_off_basisfunction_symbol"
      "Basisfunction_closure_symbol"
      (name sym_bas) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let basisfunction_set_centered_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_body_symbol_v.basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo
;;

let basisfunction_set_periodic_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_body_symbol_v.basisfunction_set_periodic_symbol_off_basisfunction_body_symbol sym_bbo
;;

let basisfunction_createdby_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_context_symbol_v.basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco
;;

let basisfunction_domain_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_context_symbol_v.basisfunction_domain_symbol_off_basisfunction_context_symbol sym_bco
;;

let basisfunction_closure_centered_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_closure_symbol_v.basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol sym_bcl
;;

let basisfunction_closure_periodic_symbol_off_basisfunction_symbol sym_bas = 
  let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
    Basisfunction_closure_symbol_v.basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_basisfunction_body_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_body_symbol _ -> true
  | _ -> false
;;

let is_basisfunction_context_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_context_symbol _ -> true
  | _ -> false
;;

let is_basisfunction_closure_symbol_off_basisfunction_symbol = function
  | Basisfunction_symbol_t.Basisfunction_closure_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_basisfunction_set_centered_full sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_body_symbol_v.is_basisfunction_set_centered_full sym_bbo
    end
;;

let is_basisfunction_set_centered_c_indexed sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_body_symbol_v.is_basisfunction_set_centered_c_indexed sym_bbo
    end
;;

let is_basisfunction_set_centered_l_indexed sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_body_symbol_v.is_basisfunction_set_centered_l_indexed sym_bbo
    end
;;

let is_basisfunction_set_centered_n_indexed sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_body_symbol_v.is_basisfunction_set_centered_n_indexed sym_bbo
    end
;;

let is_basisfunction_set_periodic_bloch sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_body_symbol_v.is_basisfunction_set_periodic_bloch sym_bbo
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_basisfunction_database sym_bas =
  if not (is_basisfunction_context_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_context_symbol_v.is_basisfunction_database sym_bco
    end
;;

let is_basisfunction_input_file sym_bas =
  if not (is_basisfunction_context_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_context_symbol_v.is_basisfunction_input_file sym_bco
    end
;;

let is_basisfunction_domain_constructor sym_bas =
  if not (is_basisfunction_context_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_context_symbol_v.is_basisfunction_domain_constructor sym_bco
    end
;;

let is_basisfunction_centered_m_indexed sym_bas =
  if not (is_basisfunction_closure_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_closure_symbol_v.is_basisfunction_centered_m_indexed sym_bcl
    end
;;

let is_basisfunction_periodic sym_bas =
  if not (is_basisfunction_closure_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_closure_symbol_v.is_basisfunction_periodic sym_bcl
    end
;;

let is_basisfunction_planewave sym_bas =
  if not (is_basisfunction_closure_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
      let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
      Basisfunction_closure_symbol_v.is_basisfunction_planewave sym_bcl
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_basisfunction_set_centered_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_body_symbol_v.is_basisfunction_set_centered_symbol_off_basisfunction_body_symbol sym_bbo
    end
;;

let is_basisfunction_set_periodic_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_body_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bbo = basisfunction_body_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_body_symbol_v.is_basisfunction_set_periodic_symbol_off_basisfunction_body_symbol sym_bbo
    end
;;

let is_basisfunction_createdby_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_context_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_context_symbol_v.is_basisfunction_createdby_symbol_off_basisfunction_context_symbol sym_bco
    end
;;

let is_basisfunction_domain_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_context_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bco = basisfunction_context_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_context_symbol_v.is_basisfunction_domain_symbol_off_basisfunction_context_symbol sym_bco
    end
;;

let is_basisfunction_closure_centered_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_closure_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_closure_symbol_v.is_basisfunction_closure_centered_symbol_off_basisfunction_closure_symbol sym_bcl
    end
;;

let is_basisfunction_closure_periodic_symbol_off_basisfunction_symbol sym_bas =
  if not (is_basisfunction_closure_symbol_off_basisfunction_symbol sym_bas)
  then false
  else
    begin
  let sym_bcl = basisfunction_closure_symbol_off_basisfunction_symbol sym_bas in
  Basisfunction_closure_symbol_v.is_basisfunction_closure_periodic_symbol_off_basisfunction_closure_symbol sym_bcl
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let basisfunction_symbol_of_basisfunction_body_symbol sym_bbo = 
  Basisfunction_symbol_t.Basisfunction_body_symbol sym_bbo
;;

let basisfunction_symbol_of_basisfunction_context_symbol sym_bco = 
  Basisfunction_symbol_t.Basisfunction_context_symbol sym_bco
;;

let basisfunction_symbol_of_basisfunction_closure_symbol sym_bcl = 
  Basisfunction_symbol_t.Basisfunction_closure_symbol sym_bcl
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let basisfunction_symbol_of_basisfunction_set_centered_symbol sym_bsc = 
  let sym_bbo = Basisfunction_body_symbol_v.basisfunction_body_symbol_of_basisfunction_set_centered_symbol sym_bsc in
    basisfunction_symbol_of_basisfunction_body_symbol sym_bbo
;;

let basisfunction_symbol_of_basisfunction_set_periodic_symbol sym_bsp = 
  let sym_bbo = Basisfunction_body_symbol_v.basisfunction_body_symbol_of_basisfunction_set_periodic_symbol sym_bsp in
    basisfunction_symbol_of_basisfunction_body_symbol sym_bbo
;;

let basisfunction_symbol_of_basisfunction_createdby_symbol sym_bcr = 
  let sym_bco = Basisfunction_context_symbol_v.basisfunction_context_symbol_of_basisfunction_createdby_symbol sym_bcr in
    basisfunction_symbol_of_basisfunction_context_symbol sym_bco
;;

let basisfunction_symbol_of_basisfunction_domain_symbol sym_bdo = 
  let sym_bco = Basisfunction_context_symbol_v.basisfunction_context_symbol_of_basisfunction_domain_symbol sym_bdo in
    basisfunction_symbol_of_basisfunction_context_symbol sym_bco
;;

let basisfunction_symbol_of_basisfunction_closure_centered_symbol sym_bcc = 
  let sym_bcl = Basisfunction_closure_symbol_v.basisfunction_closure_symbol_of_basisfunction_closure_centered_symbol sym_bcc in
    basisfunction_symbol_of_basisfunction_closure_symbol sym_bcl
;;

let basisfunction_symbol_of_basisfunction_closure_periodic_symbol sym_bcp = 
  let sym_bcl = Basisfunction_closure_symbol_v.basisfunction_closure_symbol_of_basisfunction_closure_periodic_symbol sym_bcp in
    basisfunction_symbol_of_basisfunction_closure_symbol sym_bcl
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let basisfunction_set_centered_full = basisfunction_symbol_of_basisfunction_body_symbol Basisfunction_body_symbol_v.basisfunction_set_centered_full;;

let basisfunction_set_centered_c_indexed = basisfunction_symbol_of_basisfunction_body_symbol Basisfunction_body_symbol_v.basisfunction_set_centered_c_indexed;;

let basisfunction_set_centered_l_indexed = basisfunction_symbol_of_basisfunction_body_symbol Basisfunction_body_symbol_v.basisfunction_set_centered_l_indexed;;

let basisfunction_set_centered_n_indexed = basisfunction_symbol_of_basisfunction_body_symbol Basisfunction_body_symbol_v.basisfunction_set_centered_n_indexed;;

let basisfunction_set_periodic_bloch = basisfunction_symbol_of_basisfunction_body_symbol Basisfunction_body_symbol_v.basisfunction_set_periodic_bloch;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let basisfunction_database s = basisfunction_symbol_of_basisfunction_context_symbol (Basisfunction_context_symbol_v.basisfunction_database s);;

let basisfunction_input_file s = basisfunction_symbol_of_basisfunction_context_symbol (Basisfunction_context_symbol_v.basisfunction_input_file s);;

let basisfunction_domain_constructor s = basisfunction_symbol_of_basisfunction_context_symbol (Basisfunction_context_symbol_v.basisfunction_domain_constructor s);;

let basisfunction_centered_m_indexed s = basisfunction_symbol_of_basisfunction_closure_symbol (Basisfunction_closure_symbol_v.basisfunction_centered_m_indexed s);;

let basisfunction_periodic s = basisfunction_symbol_of_basisfunction_closure_symbol (Basisfunction_closure_symbol_v.basisfunction_periodic s);;

let basisfunction_planewave s = basisfunction_symbol_of_basisfunction_closure_symbol (Basisfunction_closure_symbol_v.basisfunction_planewave s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Basisfunction_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Basisfunction_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try basisfunction_symbol_of_basisfunction_body_symbol
      (Basisfunction_body_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_body_symbol:Basisfunction_body_symbol_v.ml:make" ->
  try basisfunction_symbol_of_basisfunction_context_symbol
      (Basisfunction_context_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_context_symbol:Basisfunction_context_symbol_v.ml:make" ->
  try basisfunction_symbol_of_basisfunction_closure_symbol
      (Basisfunction_closure_symbol_v.make nam s)
  with Failure "Not_a_basisfunction_closure_symbol:Basisfunction_closure_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Basisfunction_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Basisfunction_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Basisfunction_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Basisfunction_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Basisfunction subtype" nam s)
      "it does not exists"
      "Check file Basisfunction_symbol_v.ml"
    in
    failwith "Not_a_basisfunction_symbol:Basisfunction_symbol_v.ml:make"
;;


(** Basisfunction_symbol_v at 19:1:10 on 25 Mar 2015. created by version v2.3 of generator *)



