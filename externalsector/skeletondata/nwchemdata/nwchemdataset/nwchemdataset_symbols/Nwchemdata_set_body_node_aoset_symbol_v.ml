(** {3 Nwchemdata_set_body_node_aoset_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_node_aoset_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab ->
    Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab ->
    Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol sym_nab ->
    Nwchemdata_set_body_node_aoset_block_symbol_v.name sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci ->
    Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.name sym_nci
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs ->
    Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.name sym_ncs
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_definition_symbol sym_nad ->
    Nwchemdata_set_body_node_aoset_definition_symbol_v.name sym_nad
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan ->
    Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.name sym_nan
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb ->
    Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.name sym_nnb
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b ->
    Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.name sym_n1b
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b ->
    Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.name sym_n1b
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab ->
  Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab ->
  Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol sym_nab ->
  Nwchemdata_set_body_node_aoset_block_symbol_v.string_off sym_nab
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci ->
  Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.string_off sym_nci
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs ->
  Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.string_off sym_ncs
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_definition_symbol sym_nad ->
  Nwchemdata_set_body_node_aoset_definition_symbol_v.string_off sym_nad
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan ->
  Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.string_off sym_nan
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb ->
  Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.string_off sym_nnb
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b ->
  Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.string_off sym_n1b
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b ->
  Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.string_off sym_n1b
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nna =
  Format.sprintf "Nwchemdata_set_body_node_aoset_symbol_t.%s" (String.capitalize (name sym_nna))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nna =
  Format.sprintf "%s \"%s\"" (longname sym_nna) (string_off sym_nna)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab -> sym_nab
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_anycenter_block_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab -> sym_nab
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_anyshell_block_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol sym_nab -> sym_nab
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_block_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci -> sym_nci
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_center_contraction_image_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs -> sym_ncs
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_definition_symbol sym_nad -> sym_nad
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_definition_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan -> sym_nan
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_numericalvalues_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb -> sym_nnb
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b -> sym_n1b
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_onecenter_block_symbol"
      (name sym_nna) "check"
;;

let nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b -> sym_n1b
  | sym_nna -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol"
      "Nwchemdata_set_body_node_aoset_oneshell_block_symbol"
      (name sym_nna) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_image_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_definition_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol = function
  | Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_aoset_anycenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.is_nwchemdata_set_body_node_aoset_anycenter_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_aoset_anyshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.is_nwchemdata_set_body_node_aoset_anyshell_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_aoset_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nab = nwchemdata_set_body_node_aoset_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_block_symbol_v.is_nwchemdata_set_body_node_aoset_block_constructor sym_nab
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nci = nwchemdata_set_body_node_aoset_center_contraction_image_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_image_constructor sym_nci
    end
;;

let is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_ncs = nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.is_nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor sym_ncs
    end
;;

let is_nwchemdata_set_body_node_aoset_definition_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nad = nwchemdata_set_body_node_aoset_definition_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_definition_symbol_v.is_nwchemdata_set_body_node_aoset_definition_constructor sym_nad
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nan = nwchemdata_set_body_node_aoset_numericalvalues_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_constructor sym_nan
    end
;;

let is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_nnb = nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues_block_constructor sym_nnb
    end
;;

let is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_n1b = nwchemdata_set_body_node_aoset_onecenter_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.is_nwchemdata_set_body_node_aoset_onecenter_block_constructor sym_n1b
    end
;;

let is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_nna =
  if not (is_nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna)
  then false
  else
    begin
      let sym_n1b = nwchemdata_set_body_node_aoset_oneshell_block_symbol_off_nwchemdata_set_body_node_aoset_symbol sym_nna in
      Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.is_nwchemdata_set_body_node_aoset_oneshell_block_constructor sym_n1b
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anycenter_block_symbol sym_nab
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_anyshell_block_symbol sym_nab
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_block_symbol sym_nab = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_block_symbol sym_nab
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_image_symbol sym_nci
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol sym_ncs
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol sym_nad = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_definition_symbol sym_nad
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_symbol sym_nan
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol sym_nnb
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_onecenter_block_symbol sym_n1b
;;

let nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b = 
  Nwchemdata_set_body_node_aoset_symbol_t.Nwchemdata_set_body_node_aoset_oneshell_block_symbol sym_n1b
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_node_aoset_anycenter_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol (Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.nwchemdata_set_body_node_aoset_anycenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_anyshell_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol (Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.nwchemdata_set_body_node_aoset_anyshell_block_constructor s);;

let nwchemdata_set_body_node_aoset_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_block_symbol (Nwchemdata_set_body_node_aoset_block_symbol_v.nwchemdata_set_body_node_aoset_block_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_image_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol (Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_image_constructor s);;

let nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol (Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.nwchemdata_set_body_node_aoset_center_contraction_scheme_constructor s);;

let nwchemdata_set_body_node_aoset_definition_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol (Nwchemdata_set_body_node_aoset_definition_symbol_v.nwchemdata_set_body_node_aoset_definition_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_constructor s);;

let nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol (Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.nwchemdata_set_body_node_aoset_numericalvalues_block_constructor s);;

let nwchemdata_set_body_node_aoset_onecenter_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol (Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.nwchemdata_set_body_node_aoset_onecenter_block_constructor s);;

let nwchemdata_set_body_node_aoset_oneshell_block_constructor s = nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol (Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.nwchemdata_set_body_node_aoset_oneshell_block_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anycenter_block_symbol
      (Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_anycenter_block_symbol:Nwchemdata_set_body_node_aoset_anycenter_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_anyshell_block_symbol
      (Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_anyshell_block_symbol:Nwchemdata_set_body_node_aoset_anyshell_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_block_symbol
      (Nwchemdata_set_body_node_aoset_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_block_symbol:Nwchemdata_set_body_node_aoset_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_image_symbol
      (Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_center_contraction_image_symbol:Nwchemdata_set_body_node_aoset_center_contraction_image_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol
      (Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol:Nwchemdata_set_body_node_aoset_center_contraction_scheme_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_definition_symbol
      (Nwchemdata_set_body_node_aoset_definition_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_definition_symbol:Nwchemdata_set_body_node_aoset_definition_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_symbol
      (Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_numericalvalues_symbol:Nwchemdata_set_body_node_aoset_numericalvalues_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol
      (Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_numericalvalues_block_symbol:Nwchemdata_set_body_node_aoset_numericalvalues_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_onecenter_block_symbol
      (Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_onecenter_block_symbol:Nwchemdata_set_body_node_aoset_onecenter_block_symbol_v.ml:make" ->
  try nwchemdata_set_body_node_aoset_symbol_of_nwchemdata_set_body_node_aoset_oneshell_block_symbol
      (Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_node_aoset_oneshell_block_symbol:Nwchemdata_set_body_node_aoset_oneshell_block_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_node_aoset_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_node_aoset subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_node_aoset_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_node_aoset_symbol:Nwchemdata_set_body_node_aoset_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_node_aoset_symbol_v at 17:57:20 on 4 Dec 2016. created by version v2.4 of generator *)



