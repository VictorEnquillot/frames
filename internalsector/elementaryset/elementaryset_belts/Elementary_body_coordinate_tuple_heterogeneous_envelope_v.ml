(** {3 Elementary_body_coordinate_tuple_heterogeneous_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VELE:Elementary_body_coordinate_tuple_heterogeneous_envelope_v";
   "Needs : VELE:Envelopee_v";
   "Needs : VELE:Elementary_border_envelope_v";
   "Needs : FELE:Elementary_body_coordinate_tuple_heterogeneous_container_v";
   "Needed-by: ";
   "What-is-it : it is the Envelope for Elementary_body_coordinate_tuple_heterogeneous";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Border_as_list from Database} *)

let border_as_list_of_tag tag_ehe =
  Elementary_body_coordinate_tuple_heterogeneous_container_v.border_as_list tag_ehe
;;
  
let border_of_tag tag_ehe =
  border_as_list_of_tag tag_ehe
;;

(** {6 Border_as_tuple from Container} *)

let border_as_tuple_of_tag tag_ehe =
  Elementary_body_coordinate_tuple_heterogeneous_container_v.border_as_tuple tag_ehe
;;

(** {6 Envelope as Envelopee list} *)

let envelope_of_tag tag_ehe =
  let bor_l = border_as_list_of_tag tag_ehe in
  List_v.map
    Elementary_border_envelope_v.envelopee_of_tag
    bor_l
;;

let envelope_as_tuple_of_tag tag_ehe =
  let bor_t = border_as_tuple_of_tag tag_ehe in
  Tuple_v.map
    Elementary_border_envelope_v.envelopee_of_tag
    bor_t
;;

let envelope_as_tuple_list_of_tag tag_ehe =
  let env_t = envelope_as_tuple_of_tag tag_ehe in
  [env_t]
;;

(** {6 Readee} *)

let readee_list_of_tag tag_ehe =
  let env = envelope_of_tag tag_ehe in
  List.map Envelopee_v.readee_off_envelopee env
;;

let readee_tuple_of_tag tag_ehe =
  let env_t = envelope_as_tuple_of_tag tag_ehe in
  Tuple_v.map Envelopee_v.readee_off_envelopee env_t
;;

let readee_tuple_list_of_tag tag_ehe =
  let rea_t = readee_tuple_of_tag tag_ehe in
  [rea_t]
;;

(** {6 Measure_actual} *)

let measure_actual_list_of_tag tag_ehe =
  let rea = readee_list_of_tag tag_ehe in
  List.map Readee_v.measure_actual_off_readee rea
;;

let measure_actual_tuple_of_tag tag_ehe =
  let rea_t = readee_tuple_of_tag tag_ehe in
  Tuple_v.map Readee_v.measure_actual_off_readee rea_t
;;

let measure_actual_tuple_list_of_tag tag_ehe =
  let mea_t = measure_actual_tuple_of_tag tag_ehe in
  [mea_t]
;;

(** {6 Float} *)

let float_list_of_tag tag_ehe  =
  let mea_l = measure_actual_list_of_tag tag_ehe in
  List.map Measure_actual_v.float_off_measure_actual mea_l
;;

let float_tuple_of_tag tag_ehe  =
  let mea_t = measure_actual_tuple_of_tag tag_ehe in
  Tuple_v.map Measure_actual_v.float_off_measure_actual mea_t
;;

let float_tuple_list_of_tag tag_ehe =
  let flo_t = float_tuple_of_tag tag_ehe in
  [flo_t]
;;

(** {6 Units} *)

let elementary_fence_units_actual_symbol_list_of_tag tag_ehe =
  let mea_l = measure_actual_list_of_tag tag_ehe in
  List.map Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea_l 
;;

let elementary_fence_units_actual_symbol_tuple_of_tag tag_ehe  =
  let mea_t = measure_actual_tuple_of_tag tag_ehe in
  Tuple_v.map Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea_t
;;

let elementary_fence_units_actual_symbol_tuple_list_of_tag tag_ehe =
  let sym_efu_t = elementary_fence_units_actual_symbol_tuple_of_tag tag_ehe in
  [sym_efu_t]
;;

(** {6 Text} *)
(*
let text_of_tag tag_ehe =
  let bor_t = border_as_tuple_of_tag tag_ehe in
  Tuple_v.name Elementary_border_envelope_v.text_of_tag bor_t
;;
*)
(** {6 Naming} *)

let name env_ehe =
  List_v.name Elementary_border_envelope_v.name env_ehe
;;

let longname env_ehe =
  List_v.name Elementary_border_envelope_v.longname env_ehe
;;

(* generated by ./do_envelope_as_tuple_body_trunc_measure_units_float_v.sh elementary_body_coordinate_tuple_heterogeneous ehe *)
(* using ./template_envelope_as_tuple_body_trunc_measure_units_float_v.ml *)
(* Done on mardi 24 mai 2016, 17:35:58 (UTC+0200) *)

