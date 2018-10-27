(** {3 Logic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Logic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Logic_symbol_t.Bethtree_symbol sym_bet ->
    Bethtree_symbol_v.name sym_bet
  | Logic_symbol_t.Connective_symbol sym_con ->
    Connective_symbol_v.name sym_con
  | Logic_symbol_t.Formula_symbol sym_for ->
    Formula_symbol_v.name sym_for
  | Logic_symbol_t.Signedformula_symbol sym_sig ->
    Signedformula_symbol_v.name sym_sig
  | Logic_symbol_t.Signedformula_list_symbol sym_sli ->
    Signedformula_list_symbol_v.name sym_sli
  | Logic_symbol_t.Turnstile_hard_actual_symbol sym_tha ->
    Turnstile_hard_actual_symbol_v.name sym_tha
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Logic_symbol_t.Bethtree_symbol sym_bet ->
  Bethtree_symbol_v.string_off sym_bet
  | Logic_symbol_t.Connective_symbol sym_con ->
  Connective_symbol_v.string_off sym_con
  | Logic_symbol_t.Formula_symbol sym_for ->
  Formula_symbol_v.string_off sym_for
  | Logic_symbol_t.Signedformula_symbol sym_sig ->
  Signedformula_symbol_v.string_off sym_sig
  | Logic_symbol_t.Signedformula_list_symbol sym_sli ->
  Signedformula_list_symbol_v.string_off sym_sli
  | Logic_symbol_t.Turnstile_hard_actual_symbol sym_tha ->
  Turnstile_hard_actual_symbol_v.string_off sym_tha
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_log =
  Format.sprintf "Logic_symbol_t.%s" (String.capitalize (name sym_log))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_log =
  Format.sprintf "%s \"%s\"" (longname sym_log) (string_off sym_log)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let bethtree_symbol_off_logic_symbol = function
  | Logic_symbol_t.Bethtree_symbol sym_bet -> sym_bet
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "bethtree_symbol_off_logic_symbol"
      "Bethtree_symbol"
      (name sym_log) "check"
;;

let connective_symbol_off_logic_symbol = function
  | Logic_symbol_t.Connective_symbol sym_con -> sym_con
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "connective_symbol_off_logic_symbol"
      "Connective_symbol"
      (name sym_log) "check"
;;

let formula_symbol_off_logic_symbol = function
  | Logic_symbol_t.Formula_symbol sym_for -> sym_for
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "formula_symbol_off_logic_symbol"
      "Formula_symbol"
      (name sym_log) "check"
;;

let signedformula_symbol_off_logic_symbol = function
  | Logic_symbol_t.Signedformula_symbol sym_sig -> sym_sig
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "signedformula_symbol_off_logic_symbol"
      "Signedformula_symbol"
      (name sym_log) "check"
;;

let signedformula_list_symbol_off_logic_symbol = function
  | Logic_symbol_t.Signedformula_list_symbol sym_sli -> sym_sli
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "signedformula_list_symbol_off_logic_symbol"
      "Signedformula_list_symbol"
      (name sym_log) "check"
;;

let turnstile_hard_actual_symbol_off_logic_symbol = function
  | Logic_symbol_t.Turnstile_hard_actual_symbol sym_tha -> sym_tha
  | sym_log -> Error_messages_v.print_fatal_error
      nam_cod "turnstile_hard_actual_symbol_off_logic_symbol"
      "Turnstile_hard_actual_symbol"
      (name sym_log) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_bethtree_symbol_off_logic_symbol = function
  | Logic_symbol_t.Bethtree_symbol _ -> true
  | _ -> false
;;

let is_connective_symbol_off_logic_symbol = function
  | Logic_symbol_t.Connective_symbol _ -> true
  | _ -> false
;;

let is_formula_symbol_off_logic_symbol = function
  | Logic_symbol_t.Formula_symbol _ -> true
  | _ -> false
;;

let is_signedformula_symbol_off_logic_symbol = function
  | Logic_symbol_t.Signedformula_symbol _ -> true
  | _ -> false
;;

let is_signedformula_list_symbol_off_logic_symbol = function
  | Logic_symbol_t.Signedformula_list_symbol _ -> true
  | _ -> false
;;

let is_turnstile_hard_actual_symbol_off_logic_symbol = function
  | Logic_symbol_t.Turnstile_hard_actual_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_bethtree_constructor sym_log =
  if not (is_bethtree_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_bet = bethtree_symbol_off_logic_symbol sym_log in
      Bethtree_symbol_v.is_bethtree_constructor sym_bet
    end
;;

let is_negation sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_negation sym_con
    end
;;

let is_conjunction sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_conjunction sym_con
    end
;;

let is_disjunction sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_disjunction sym_con
    end
;;

let is_implication sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_implication sym_con
    end
;;

let is_leftparenthesis sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_leftparenthesis sym_con
    end
;;

let is_rightparenthesis sym_log =
  if not (is_connective_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_con = connective_symbol_off_logic_symbol sym_log in
      Connective_symbol_v.is_rightparenthesis sym_con
    end
;;

let is_formula_true sym_log =
  if not (is_formula_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_for = formula_symbol_off_logic_symbol sym_log in
      Formula_symbol_v.is_formula_true sym_for
    end
;;

let is_formula_false sym_log =
  if not (is_formula_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_for = formula_symbol_off_logic_symbol sym_log in
      Formula_symbol_v.is_formula_false sym_for
    end
;;

let is_formula_recursive sym_log =
  if not (is_formula_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_for = formula_symbol_off_logic_symbol sym_log in
      Formula_symbol_v.is_formula_recursive sym_for
    end
;;

let is_signedformula_constructor sym_log =
  if not (is_signedformula_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_sig = signedformula_symbol_off_logic_symbol sym_log in
      Signedformula_symbol_v.is_signedformula_constructor sym_sig
    end
;;

let is_signedformula_list_constructor sym_log =
  if not (is_signedformula_list_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_sli = signedformula_list_symbol_off_logic_symbol sym_log in
      Signedformula_list_symbol_v.is_signedformula_list_constructor sym_sli
    end
;;

let is_turnstile_hard_actual_true sym_log =
  if not (is_turnstile_hard_actual_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_tha = turnstile_hard_actual_symbol_off_logic_symbol sym_log in
      Turnstile_hard_actual_symbol_v.is_turnstile_hard_actual_true sym_tha
    end
;;

let is_turnstile_hard_actual_false sym_log =
  if not (is_turnstile_hard_actual_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_tha = turnstile_hard_actual_symbol_off_logic_symbol sym_log in
      Turnstile_hard_actual_symbol_v.is_turnstile_hard_actual_false sym_tha
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_variable sym_log =
  if not (is_formula_symbol_off_logic_symbol sym_log)
  then false
  else
    begin
      let sym_for = formula_symbol_off_logic_symbol sym_log in
      Formula_symbol_v.is_variable sym_for
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let logic_symbol_of_bethtree_symbol sym_bet = 
  Logic_symbol_t.Bethtree_symbol sym_bet
;;

let logic_symbol_of_connective_symbol sym_con = 
  Logic_symbol_t.Connective_symbol sym_con
;;

let logic_symbol_of_formula_symbol sym_for = 
  Logic_symbol_t.Formula_symbol sym_for
;;

let logic_symbol_of_signedformula_symbol sym_sig = 
  Logic_symbol_t.Signedformula_symbol sym_sig
;;

let logic_symbol_of_signedformula_list_symbol sym_sli = 
  Logic_symbol_t.Signedformula_list_symbol sym_sli
;;

let logic_symbol_of_turnstile_hard_actual_symbol sym_tha = 
  Logic_symbol_t.Turnstile_hard_actual_symbol sym_tha
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let bethtree_constructor = logic_symbol_of_bethtree_symbol Bethtree_symbol_v.bethtree_constructor;;

let negation = logic_symbol_of_connective_symbol Connective_symbol_v.negation;;

let conjunction = logic_symbol_of_connective_symbol Connective_symbol_v.conjunction;;

let disjunction = logic_symbol_of_connective_symbol Connective_symbol_v.disjunction;;

let implication = logic_symbol_of_connective_symbol Connective_symbol_v.implication;;

let leftparenthesis = logic_symbol_of_connective_symbol Connective_symbol_v.leftparenthesis;;

let rightparenthesis = logic_symbol_of_connective_symbol Connective_symbol_v.rightparenthesis;;

let formula_true = logic_symbol_of_formula_symbol Formula_symbol_v.formula_true;;

let formula_false = logic_symbol_of_formula_symbol Formula_symbol_v.formula_false;;

let formula_recursive = logic_symbol_of_formula_symbol Formula_symbol_v.formula_recursive;;

let signedformula_constructor = logic_symbol_of_signedformula_symbol Signedformula_symbol_v.signedformula_constructor;;

let signedformula_list_constructor = logic_symbol_of_signedformula_list_symbol Signedformula_list_symbol_v.signedformula_list_constructor;;

let turnstile_hard_actual_true = logic_symbol_of_turnstile_hard_actual_symbol Turnstile_hard_actual_symbol_v.turnstile_hard_actual_true;;

let turnstile_hard_actual_false = logic_symbol_of_turnstile_hard_actual_symbol Turnstile_hard_actual_symbol_v.turnstile_hard_actual_false;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let variable s = logic_symbol_of_formula_symbol (Formula_symbol_v.variable s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Logic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Logic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try logic_symbol_of_bethtree_symbol
      (Bethtree_symbol_v.make nam s)
  with Failure "Not_a_bethtree_symbol:Bethtree_symbol_v.ml:make" ->
  try logic_symbol_of_connective_symbol
      (Connective_symbol_v.make nam s)
  with Failure "Not_a_connective_symbol:Connective_symbol_v.ml:make" ->
  try logic_symbol_of_formula_symbol
      (Formula_symbol_v.make nam s)
  with Failure "Not_a_formula_symbol:Formula_symbol_v.ml:make" ->
  try logic_symbol_of_signedformula_symbol
      (Signedformula_symbol_v.make nam s)
  with Failure "Not_a_signedformula_symbol:Signedformula_symbol_v.ml:make" ->
  try logic_symbol_of_signedformula_list_symbol
      (Signedformula_list_symbol_v.make nam s)
  with Failure "Not_a_signedformula_list_symbol:Signedformula_list_symbol_v.ml:make" ->
  try logic_symbol_of_turnstile_hard_actual_symbol
      (Turnstile_hard_actual_symbol_v.make nam s)
  with Failure "Not_a_turnstile_hard_actual_symbol:Turnstile_hard_actual_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Logic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Logic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Logic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Logic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Logic subtype" nam s)
      "it does not exists"
      "Check file Logic_symbol_v.ml"
    in
    failwith "Not_a_logic_symbol:Logic_symbol_v.ml:make"
;;


(** Logic_symbol_v at 17:8:17 on 9 Jul 2013. created by version v2.3 of generator *)



