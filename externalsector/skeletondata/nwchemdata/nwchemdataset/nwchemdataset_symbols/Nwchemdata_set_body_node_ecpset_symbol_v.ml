(** {3 Nwchemdata_set_body_node_ecpset_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_node_ecpset_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab ->
    Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab ->
    Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_block_symbol sym_neb ->
    Nwchemdata_set_body_node_ecpset_block_symbol_v.name sym_neb
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_definition_symbol sym_ned ->
    Nwchemdata_set_body_node_ecpset_definition_symbol_v.name sym_ned
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee ->
    Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.name sym_nee
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen ->
    Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.name sym_nen
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb ->
    Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.name sym_nnb
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b ->
    Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.name sym_n1b
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b ->
    Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.name sym_n1b
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab ->
  Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab ->
  Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_block_symbol sym_neb ->
  Nwchemdata_set_body_node_ecpset_block_symbol_v.string_off sym_neb
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_definition_symbol sym_ned ->
  Nwchemdata_set_body_node_ecpset_definition_symbol_v.string_off sym_ned
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee ->
  Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.string_off sym_nee
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen ->
  Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.string_off sym_nen
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb ->
  Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.string_off sym_nnb
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b ->
  Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.string_off sym_n1b
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b ->
  Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.string_off sym_n1b
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nne =
  Format.sprintf "Nwchemdata_set_body_node_ecpset_symbol_t.%s" (String.capitalize (name sym_nne))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nne =
  Format.sprintf "%s \"%s\"" (longname sym_nne) (string_off sym_nne)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab -> sym_nab
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_anycenter_block_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab -> sym_nab
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_anyshell_block_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_block_symbol sym_neb -> sym_neb
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_block_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_definition_symbol sym_ned -> sym_ned
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_definition_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee -> sym_nee
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_electronnumber_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen -> sym_nen
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_numericalvalues_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb -> sym_nnb
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b -> sym_n1b
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_onecenter_block_symbol"
      (name sym_nne) "check"
;;

let nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b -> sym_n1b
  | sym_nne -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol"
      "Nwchemdata_set_body_node_ecpset_oneshell_block_symbol"
      (name sym_nne) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anycenter_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anyshell_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_definition_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_electronnumber_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_onecenter_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol = function
  | Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_oneshell_block_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_ecpset_anycenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.is_nwchemdata_set_body_node_ecpset_anycenter_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_ecpset_anyshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.is_nwchemdata_set_body_node_ecpset_anyshell_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_ecpset_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_neb = nwchemdata_set_body_node_ecpset_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_block_symbol_v.is_nwchemdata_set_body_node_ecpset_block_constructor sym_neb
    end
;;

let is_nwchemdata_set_body_node_ecpset_definition_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_ned = nwchemdata_set_body_node_ecpset_definition_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_definition_symbol_v.is_nwchemdata_set_body_node_ecpset_definition_constructor sym_ned
    end
;;

let is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_nee = nwchemdata_set_body_node_ecpset_electronnumber_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.is_nwchemdata_set_body_node_ecpset_electronnumber_constructor sym_nee
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_nen = nwchemdata_set_body_node_ecpset_numericalvalues_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_constructor sym_nen
    end
;;

let is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_nnb = nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.is_nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor sym_nnb
    end
;;

let is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_n1b = nwchemdata_set_body_node_ecpset_onecenter_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.is_nwchemdata_set_body_node_ecpset_onecenter_block_constructor sym_n1b
    end
;;

let is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_nne =
  if not (is_nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne)
  then false
  else
    begin
      let sym_n1b = nwchemdata_set_body_node_ecpset_oneshell_block_symbol_off_nwchemdata_set_body_node_ecpset_symbol sym_nne in
      Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.is_nwchemdata_set_body_node_ecpset_oneshell_block_constructor sym_n1b
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anycenter_block_symbol sym_nab
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_anyshell_block_symbol sym_nab
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol sym_neb = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_block_symbol sym_neb
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol sym_ned = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_definition_symbol sym_ned
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_electronnumber_symbol sym_nee
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_symbol sym_nen
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol sym_nnb
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_onecenter_block_symbol sym_n1b
;;

let nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b = 
  Nwchemdata_set_body_node_ecpset_symbol_t.Nwchemdata_set_body_node_ecpset_oneshell_block_symbol sym_n1b
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_node_ecpset_anycenter_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol (Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.nwchemdata_set_body_node_ecpset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_anyshell_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol (Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.nwchemdata_set_body_node_ecpset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_ecpset_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol (Nwchemdata_set_body_node_ecpset_block_symbol_v.nwchemdata_set_body_node_ecpset_block_constructor s);;

let nwchemdata_set_body_node_ecpset_definition_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol (Nwchemdata_set_body_node_ecpset_definition_symbol_v.nwchemdata_set_body_node_ecpset_definition_constructor s);;

let nwchemdata_set_body_node_ecpset_electronnumber_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol (Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.nwchemdata_set_body_node_ecpset_electronnumber_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol (Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol (Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.nwchemdata_set_body_node_ecpset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_ecpset_onecenter_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol (Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.nwchemdata_set_body_node_ecpset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_ecpset_oneshell_block_constructor s = nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol (Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.nwchemdata_set_body_node_ecpset_oneshell_block_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anycenter_block_symbol
      (Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_anycenter_block_symbol:Nwchemdata_set_body_node_ecpset_anycenter_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_anyshell_block_symbol
      (Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_anyshell_block_symbol:Nwchemdata_set_body_node_ecpset_anyshell_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_block_symbol
      (Nwchemdata_set_body_node_ecpset_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_block_symbol:Nwchemdata_set_body_node_ecpset_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_definition_symbol
      (Nwchemdata_set_body_node_ecpset_definition_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_definition_symbol:Nwchemdata_set_body_node_ecpset_definition_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_electronnumber_symbol
      (Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_electronnumber_symbol:Nwchemdata_set_body_node_ecpset_electronnumber_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_symbol
      (Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_numericalvalues_symbol:Nwchemdata_set_body_node_ecpset_numericalvalues_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol
      (Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol:Nwchemdata_set_body_node_ecpset_numericalvalues_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_onecenter_block_symbol
      (Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_onecenter_block_symbol:Nwchemdata_set_body_node_ecpset_onecenter_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_ecpset_symbol_of_nwchemdata_set_body_node_ecpset_oneshell_block_symbol
      (Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_ecpset_oneshell_block_symbol:Nwchemdata_set_body_node_ecpset_oneshell_block_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_node_ecpset subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_node_ecpset_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_node_ecpset_symbol:Nwchemdata_set_body_node_ecpset_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_node_ecpset_symbol_v at 17:57:21 on 4 Dec 2016. created by version v2.4 of generator *)



