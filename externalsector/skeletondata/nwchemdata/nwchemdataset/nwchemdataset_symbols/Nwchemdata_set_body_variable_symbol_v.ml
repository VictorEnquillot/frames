(** {3 Nwchemdata_set_body_variable_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_variable_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularfunction_symbol sym_nva ->
    Nwchemdata_set_body_variable_angularfunction_symbol_v.name sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularmomentum_symbol sym_nva ->
    Nwchemdata_set_body_variable_angularmomentum_symbol_v.name sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_ao_symbol sym_nva ->
    Nwchemdata_set_body_variable_ao_symbol_v.name sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_aos_symbol sym_nva ->
    Nwchemdata_set_body_variable_aos_symbol_v.name sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_centername_symbol sym_nvc ->
    Nwchemdata_set_body_variable_centername_symbol_v.name sym_nvc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_coefficient_symbol sym_nvc ->
    Nwchemdata_set_body_variable_coefficient_symbol_v.name sym_nvc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol sym_ndn ->
    Nwchemdata_set_body_variable_databox_name_symbol_v.name sym_ndn
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_dummy_center_symbol sym_ndc ->
    Nwchemdata_set_body_variable_dummy_center_symbol_v.name sym_ndc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_symbol sym_nve ->
    Nwchemdata_set_body_variable_exponent_symbol_v.name sym_nve
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc ->
    Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.name sym_nnc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg ->
    Nwchemdata_set_body_variable_generalcontraction_symbol_v.name sym_nvg
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_localname_symbol sym_nvl ->
    Nwchemdata_set_body_variable_localname_symbol_v.name sym_nvl
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm ->
    Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.name sym_nvm
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_name_symbol sym_nvn ->
    Nwchemdata_set_body_variable_name_symbol_v.name sym_nvn
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_radialfunction_symbol sym_nvr ->
    Nwchemdata_set_body_variable_radialfunction_symbol_v.name sym_nvr
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shellname_symbol sym_nvs ->
    Nwchemdata_set_body_variable_shellname_symbol_v.name sym_nvs
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol sym_nvv ->
    Nwchemdata_set_body_variable_version_symbol_v.name sym_nvv
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularfunction_symbol sym_nva ->
  Nwchemdata_set_body_variable_angularfunction_symbol_v.string_off sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularmomentum_symbol sym_nva ->
  Nwchemdata_set_body_variable_angularmomentum_symbol_v.string_off sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_ao_symbol sym_nva ->
  Nwchemdata_set_body_variable_ao_symbol_v.string_off sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_aos_symbol sym_nva ->
  Nwchemdata_set_body_variable_aos_symbol_v.string_off sym_nva
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_centername_symbol sym_nvc ->
  Nwchemdata_set_body_variable_centername_symbol_v.string_off sym_nvc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_coefficient_symbol sym_nvc ->
  Nwchemdata_set_body_variable_coefficient_symbol_v.string_off sym_nvc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol sym_ndn ->
  Nwchemdata_set_body_variable_databox_name_symbol_v.string_off sym_ndn
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_dummy_center_symbol sym_ndc ->
  Nwchemdata_set_body_variable_dummy_center_symbol_v.string_off sym_ndc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_symbol sym_nve ->
  Nwchemdata_set_body_variable_exponent_symbol_v.string_off sym_nve
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc ->
  Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.string_off sym_nnc
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg ->
  Nwchemdata_set_body_variable_generalcontraction_symbol_v.string_off sym_nvg
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_localname_symbol sym_nvl ->
  Nwchemdata_set_body_variable_localname_symbol_v.string_off sym_nvl
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm ->
  Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.string_off sym_nvm
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_name_symbol sym_nvn ->
  Nwchemdata_set_body_variable_name_symbol_v.string_off sym_nvn
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_radialfunction_symbol sym_nvr ->
  Nwchemdata_set_body_variable_radialfunction_symbol_v.string_off sym_nvr
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shellname_symbol sym_nvs ->
  Nwchemdata_set_body_variable_shellname_symbol_v.string_off sym_nvs
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol sym_nvv ->
  Nwchemdata_set_body_variable_version_symbol_v.string_off sym_nvv
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nbv =
  Format.sprintf "Nwchemdata_set_body_variable_symbol_t.%s" (String.capitalize (name sym_nbv))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nbv =
  Format.sprintf "%s \"%s\"" (longname sym_nbv) (string_off sym_nbv)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularfunction_symbol sym_nva -> sym_nva
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_angularfunction_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularmomentum_symbol sym_nva -> sym_nva
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_angularmomentum_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_ao_symbol sym_nva -> sym_nva
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_ao_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_aos_symbol sym_nva -> sym_nva
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_aos_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_centername_symbol sym_nvc -> sym_nvc
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_centername_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_coefficient_symbol sym_nvc -> sym_nvc
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_coefficient_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol sym_ndn -> sym_ndn
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_databox_name_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_dummy_center_symbol sym_ndc -> sym_ndc
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_dummy_center_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_symbol sym_nve -> sym_nve
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_exponent_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc -> sym_nnc
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_exponent_n_coefficient_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg -> sym_nvg
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_generalcontraction_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_localname_symbol sym_nvl -> sym_nvl
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_localname_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm -> sym_nvm
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_mendeleievsymbol_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_name_symbol sym_nvn -> sym_nvn
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_name_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_radialfunction_symbol sym_nvr -> sym_nvr
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_radialfunction_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shellname_symbol sym_nvs -> sym_nvs
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_shellname_symbol"
      (name sym_nbv) "check"
;;

let nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol sym_nvv -> sym_nvv
  | sym_nbv -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol"
      "Nwchemdata_set_body_variable_version_symbol"
      (name sym_nbv) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
;;

let nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
;;

let nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_ao_symbol sym_nva
;;

let nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_ao_symbol sym_nva
;;

let nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_aos_symbol sym_nva
;;

let nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_aos_symbol sym_nva
;;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
;;

let nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
;;

let nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl
;;

let nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl
;;

let nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;

let nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;

let nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv = 
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
    Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularfunction_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularmomentum_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_ao_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_aos_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_centername_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_coefficient_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_dummy_center_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_n_coefficient_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_generalcontraction_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_localname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_mendeleievsymbol_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_name_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_radialfunction_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shellname_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol = function
  | Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_angularfunction_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_spherical_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_angularfunction_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_angularmomentum_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_angularmomentum_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_angularmomentum_symbol_v.is_nwchemdata_set_body_variable_angularmomentum_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_ao_contracted_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_ao_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_ao_single_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_ao_symbol_v.is_nwchemdata_set_body_variable_ao_single_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_aos_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_n_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_aos_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_constructor sym_nva
    end
;;

let is_nwchemdata_set_body_variable_centername_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvc = nwchemdata_set_body_variable_centername_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_centername_symbol_v.is_nwchemdata_set_body_variable_centername_constructor sym_nvc
    end
;;

let is_nwchemdata_set_body_variable_coefficient_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvc = nwchemdata_set_body_variable_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_coefficient_symbol_v.is_nwchemdata_set_body_variable_coefficient_constructor sym_nvc
    end
;;

let is_nwchemdata_set_body_variable_databox_name_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_ndn = nwchemdata_set_body_variable_databox_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_databox_name_symbol_v.is_nwchemdata_set_body_variable_databox_name_constructor sym_ndn
    end
;;

let is_nwchemdata_set_body_variable_dummy_center_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_ndc = nwchemdata_set_body_variable_dummy_center_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_dummy_center_symbol_v.is_nwchemdata_set_body_variable_dummy_center_constructor sym_ndc
    end
;;

let is_nwchemdata_set_body_variable_exponent_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nve = nwchemdata_set_body_variable_exponent_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_exponent_symbol_v.is_nwchemdata_set_body_variable_exponent_constructor sym_nve
    end
;;

let is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nnc = nwchemdata_set_body_variable_exponent_n_coefficient_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.is_nwchemdata_set_body_variable_exponent_n_coefficient_constructor sym_nnc
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_generalcontraction_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor sym_nvg
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_generalcontraction_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_constructor sym_nvg
    end
;;

let is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_localname_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_constructor sym_nvl
    end
;;

let is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_localname_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_constructor sym_nvl
    end
;;

let is_nwchemdata_set_body_variable_mendeleievsymbol_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvm = nwchemdata_set_body_variable_mendeleievsymbol_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.is_nwchemdata_set_body_variable_mendeleievsymbol_constructor sym_nvm
    end
;;

let is_nwchemdata_set_body_variable_name_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvn = nwchemdata_set_body_variable_name_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_name_symbol_v.is_nwchemdata_set_body_variable_name_constructor sym_nvn
    end
;;

let is_nwchemdata_set_body_variable_radialfunction_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvr = nwchemdata_set_body_variable_radialfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_radialfunction_symbol_v.is_nwchemdata_set_body_variable_radialfunction_constructor sym_nvr
    end
;;

let is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_constructor sym_nvs
    end
;;

let is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_constructor sym_nvs
    end
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_constructor sym_nvs
    end
;;

let is_nwchemdata_set_body_variable_version_constructor sym_nbv =
  if not (is_nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
      let sym_nvv = nwchemdata_set_body_variable_version_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
      Nwchemdata_set_body_variable_version_symbol_v.is_nwchemdata_set_body_variable_version_constructor sym_nvv
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_angularfunction_symbol_v.is_nwchemdata_set_body_variable_angularfunction_cartesian_symbol_off_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_angularfunction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_angularfunction_symbol_v.is_nwchemdata_set_body_variable_angularfunction_spherical_symbol_off_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_ao_symbol_v.is_nwchemdata_set_body_variable_ao_contracted_symbol_off_nwchemdata_set_body_variable_ao_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_ao_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_ao_symbol_v.is_nwchemdata_set_body_variable_ao_single_symbol_off_nwchemdata_set_body_variable_ao_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_aos_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_symbol_off_nwchemdata_set_body_variable_aos_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nva = nwchemdata_set_body_variable_aos_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_aos_symbol_v.is_nwchemdata_set_body_variable_aos_at_c_n_symbol_off_nwchemdata_set_body_variable_aos_symbol sym_nva
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_generalcontraction_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol_off_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
    end
;;

let is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvg = nwchemdata_set_body_variable_generalcontraction_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_generalcontraction_symbol_v.is_nwchemdata_set_body_variable_generalcontraction_shellset_symbol_off_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
    end
;;

let is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_localname_symbol_v.is_nwchemdata_set_body_variable_localname_dataname_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl
    end
;;

let is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvl = nwchemdata_set_body_variable_localname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_localname_symbol_v.is_nwchemdata_set_body_variable_localname_ecpset_symbol_off_nwchemdata_set_body_variable_localname_symbol sym_nvl
    end
;;

let is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_extended_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
    end
;;

let is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_usual_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
    end
;;

let is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv =
  if not (is_nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv)
  then false
  else
    begin
  let sym_nvs = nwchemdata_set_body_variable_shellname_symbol_off_nwchemdata_set_body_variable_symbol sym_nbv in
  Nwchemdata_set_body_variable_shellname_symbol_v.is_nwchemdata_set_body_variable_shellname_relativistic_symbol_off_nwchemdata_set_body_variable_shellname_symbol sym_nvs
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol sym_nva = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularfunction_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularmomentum_symbol sym_nva = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_angularmomentum_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol sym_nva = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_ao_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol sym_nva = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_aos_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_centername_symbol sym_nvc = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_centername_symbol sym_nvc
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_coefficient_symbol sym_nvc = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_coefficient_symbol sym_nvc
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_databox_name_symbol sym_ndn = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_databox_name_symbol sym_ndn
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_dummy_center_symbol sym_ndc = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_dummy_center_symbol sym_ndc
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_symbol sym_nve = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_symbol sym_nve
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_exponent_n_coefficient_symbol sym_nnc
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol sym_nvl = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_localname_symbol sym_nvl
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_mendeleievsymbol_symbol sym_nvm
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_name_symbol sym_nvn = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_name_symbol sym_nvn
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_radialfunction_symbol sym_nvr = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_radialfunction_symbol sym_nvr
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_version_symbol sym_nvv = 
  Nwchemdata_set_body_variable_symbol_t.Nwchemdata_set_body_variable_version_symbol sym_nvv
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_cartesian_symbol sym_nac = 
  let sym_nva = Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_symbol_of_nwchemdata_set_body_variable_angularfunction_cartesian_symbol sym_nac in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_spherical_symbol sym_nas = 
  let sym_nva = Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_symbol_of_nwchemdata_set_body_variable_angularfunction_spherical_symbol sym_nas in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_contracted_symbol sym_nac = 
  let sym_nva = Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_symbol_of_nwchemdata_set_body_variable_ao_contracted_symbol sym_nac in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_single_symbol sym_nas = 
  let sym_nva = Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_symbol_of_nwchemdata_set_body_variable_ao_single_symbol sym_nas in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_at_c_symbol sym_nac = 
  let sym_nva = Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_symbol_of_nwchemdata_set_body_variable_aos_at_c_symbol sym_nac in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_at_c_n_symbol sym_ncn = 
  let sym_nva = Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_symbol_of_nwchemdata_set_body_variable_aos_at_c_n_symbol sym_ncn in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol sym_nva
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol sym_ngc = 
  let sym_nvg = Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_symbol_of_nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_symbol sym_ngc in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_shellset_symbol sym_ngs = 
  let sym_nvg = Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_symbol_of_nwchemdata_set_body_variable_generalcontraction_shellset_symbol sym_ngs in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol sym_nvg
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol sym_nld = 
  let sym_nvl = Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_dataname_symbol sym_nld in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol sym_nvl
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle = 
  let sym_nvl = Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_symbol_of_nwchemdata_set_body_variable_localname_ecpset_symbol sym_nle in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol sym_nvl
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol sym_nse = 
  let sym_nvs = Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_extended_symbol sym_nse in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu = 
  let sym_nvs = Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_usual_symbol sym_nsu in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;

let nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr = 
  let sym_nvs = Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_symbol_of_nwchemdata_set_body_variable_shellname_relativistic_symbol sym_nsr in
    nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol sym_nvs
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_body_variable_angularfunction_cartesian_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol (Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_cartesian_constructor s);;

let nwchemdata_set_body_variable_angularfunction_spherical_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol (Nwchemdata_set_body_variable_angularfunction_symbol_v.nwchemdata_set_body_variable_angularfunction_spherical_constructor s);;

let nwchemdata_set_body_variable_angularmomentum_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularmomentum_symbol (Nwchemdata_set_body_variable_angularmomentum_symbol_v.nwchemdata_set_body_variable_angularmomentum_constructor s);;

let nwchemdata_set_body_variable_ao_contracted_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol (Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_contracted_constructor s);;

let nwchemdata_set_body_variable_ao_single_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol (Nwchemdata_set_body_variable_ao_symbol_v.nwchemdata_set_body_variable_ao_single_constructor s);;

let nwchemdata_set_body_variable_aos_at_c_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol (Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_at_c_constructor s);;

let nwchemdata_set_body_variable_aos_at_c_n_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol (Nwchemdata_set_body_variable_aos_symbol_v.nwchemdata_set_body_variable_aos_at_c_n_constructor s);;

let nwchemdata_set_body_variable_centername_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_centername_symbol (Nwchemdata_set_body_variable_centername_symbol_v.nwchemdata_set_body_variable_centername_constructor s);;

let nwchemdata_set_body_variable_coefficient_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_coefficient_symbol (Nwchemdata_set_body_variable_coefficient_symbol_v.nwchemdata_set_body_variable_coefficient_constructor s);;

let nwchemdata_set_body_variable_databox_name_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_databox_name_symbol (Nwchemdata_set_body_variable_databox_name_symbol_v.nwchemdata_set_body_variable_databox_name_constructor s);;

let nwchemdata_set_body_variable_dummy_center_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_dummy_center_symbol (Nwchemdata_set_body_variable_dummy_center_symbol_v.nwchemdata_set_body_variable_dummy_center_constructor s);;

let nwchemdata_set_body_variable_exponent_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_symbol (Nwchemdata_set_body_variable_exponent_symbol_v.nwchemdata_set_body_variable_exponent_constructor s);;

let nwchemdata_set_body_variable_exponent_n_coefficient_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_n_coefficient_symbol (Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.nwchemdata_set_body_variable_exponent_n_coefficient_constructor s);;

let nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol (Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_coefficientcolumn_constructor s);;

let nwchemdata_set_body_variable_generalcontraction_shellset_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol (Nwchemdata_set_body_variable_generalcontraction_symbol_v.nwchemdata_set_body_variable_generalcontraction_shellset_constructor s);;

let nwchemdata_set_body_variable_localname_dataname_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol (Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_dataname_constructor s);;

let nwchemdata_set_body_variable_localname_ecpset_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol (Nwchemdata_set_body_variable_localname_symbol_v.nwchemdata_set_body_variable_localname_ecpset_constructor s);;

let nwchemdata_set_body_variable_mendeleievsymbol_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_mendeleievsymbol_symbol (Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.nwchemdata_set_body_variable_mendeleievsymbol_constructor s);;

let nwchemdata_set_body_variable_name_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_name_symbol (Nwchemdata_set_body_variable_name_symbol_v.nwchemdata_set_body_variable_name_constructor s);;

let nwchemdata_set_body_variable_radialfunction_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_radialfunction_symbol (Nwchemdata_set_body_variable_radialfunction_symbol_v.nwchemdata_set_body_variable_radialfunction_constructor s);;

let nwchemdata_set_body_variable_shellname_extended_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol (Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_extended_constructor s);;

let nwchemdata_set_body_variable_shellname_usual_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol (Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_usual_constructor s);;

let nwchemdata_set_body_variable_shellname_relativistic_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol (Nwchemdata_set_body_variable_shellname_symbol_v.nwchemdata_set_body_variable_shellname_relativistic_constructor s);;

let nwchemdata_set_body_variable_version_constructor s = nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_version_symbol (Nwchemdata_set_body_variable_version_symbol_v.nwchemdata_set_body_variable_version_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularfunction_symbol
      (Nwchemdata_set_body_variable_angularfunction_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_angularfunction_symbol:Nwchemdata_set_body_variable_angularfunction_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_angularmomentum_symbol
      (Nwchemdata_set_body_variable_angularmomentum_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_angularmomentum_symbol:Nwchemdata_set_body_variable_angularmomentum_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_ao_symbol
      (Nwchemdata_set_body_variable_ao_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_ao_symbol:Nwchemdata_set_body_variable_ao_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_aos_symbol
      (Nwchemdata_set_body_variable_aos_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_aos_symbol:Nwchemdata_set_body_variable_aos_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_centername_symbol
      (Nwchemdata_set_body_variable_centername_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_centername_symbol:Nwchemdata_set_body_variable_centername_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_coefficient_symbol
      (Nwchemdata_set_body_variable_coefficient_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_coefficient_symbol:Nwchemdata_set_body_variable_coefficient_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_databox_name_symbol
      (Nwchemdata_set_body_variable_databox_name_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_databox_name_symbol:Nwchemdata_set_body_variable_databox_name_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_dummy_center_symbol
      (Nwchemdata_set_body_variable_dummy_center_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_dummy_center_symbol:Nwchemdata_set_body_variable_dummy_center_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_symbol
      (Nwchemdata_set_body_variable_exponent_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_exponent_symbol:Nwchemdata_set_body_variable_exponent_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_exponent_n_coefficient_symbol
      (Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_exponent_n_coefficient_symbol:Nwchemdata_set_body_variable_exponent_n_coefficient_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_generalcontraction_symbol
      (Nwchemdata_set_body_variable_generalcontraction_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_generalcontraction_symbol:Nwchemdata_set_body_variable_generalcontraction_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_localname_symbol
      (Nwchemdata_set_body_variable_localname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_localname_symbol:Nwchemdata_set_body_variable_localname_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_mendeleievsymbol_symbol
      (Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_mendeleievsymbol_symbol:Nwchemdata_set_body_variable_mendeleievsymbol_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_name_symbol
      (Nwchemdata_set_body_variable_name_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_name_symbol:Nwchemdata_set_body_variable_name_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_radialfunction_symbol
      (Nwchemdata_set_body_variable_radialfunction_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_radialfunction_symbol:Nwchemdata_set_body_variable_radialfunction_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_shellname_symbol
      (Nwchemdata_set_body_variable_shellname_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_shellname_symbol:Nwchemdata_set_body_variable_shellname_symbol_v.ml:make" ->
  try nwchemdata_set_body_variable_symbol_of_nwchemdata_set_body_variable_version_symbol
      (Nwchemdata_set_body_variable_version_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_body_variable_version_symbol:Nwchemdata_set_body_variable_version_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_variable_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_variable subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_variable_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_variable_symbol:Nwchemdata_set_body_variable_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_variable_symbol_v at 17:57:22 on 4 Dec 2016. created by version v2.4 of generator *)



