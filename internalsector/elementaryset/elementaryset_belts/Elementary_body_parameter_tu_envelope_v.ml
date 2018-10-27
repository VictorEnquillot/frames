(** {3 Elementary_body_parameter_tu_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VELE:Elementary_body_parameter_tu_envelope_v";
   "Needs : VELE:Envelopee_v";
   "Needs : VELE:Elementary_border_envelope_v";
   "Needs : FELE:Elementary_body_parameter_tu_container_v";
   "Needed-by: ";
   "Definition : the Border is the Elementary_border_tag list of any Entity";
   "Definition : the Envelope is a list of its Envelopee i.e. Elementary_border_envelope";
   "What-is-it : it is the Envelope for Elementary_body_parameter_tu";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Border_as_list from Database} *)

let border_as_list_of_tag tag_ebp =
  Elementary_body_parameter_tu_container_v.border_as_list tag_ebp
;;
  
let border_of_tag tag_ebp =
  border_as_list_of_tag tag_ebp
;;

(** {6 Border_as_tuple_list from Container} *)

let border_as_tuple_of_tag tag_ebp =
  Elementary_body_parameter_tu_container_v.border_as_tuple tag_ebp
;;

(** {6 Envelope as Envelopee list} *)

let envelope_of_tag tag_ebp =
  let bor_l = border_as_list_of_tag tag_ebp in
  List_v.map
    Elementary_border_envelope_v.envelopee_of_tag
    bor_l
;;

let envelope_as_tuple_of_tag tag_ebp =
  let bor_t = border_as_tuple_of_tag tag_ebp in
  Tuple_v.map
    Elementary_border_envelope_v.envelopee_of_tag
    bor_t
;;

let envelope_as_tuple_list_of_tag tag_ebp =
  let env_t = envelope_as_tuple_of_tag tag_ebp in
  [env_t]
;;

(** {6 Readee} *)

let readee_list_of_tag tag_ebp =
  let env = envelope_of_tag tag_ebp in
  List.map Envelopee_v.readee_off_envelopee env
;;

let readee_tuple_of_tag tag_ebp =
  let env_t = envelope_as_tuple_of_tag tag_ebp in
  Tuple_v.map Envelopee_v.readee_off_envelopee env_t
;;

let readee_tuple_list_of_tag tag_ebp =
  let rea_t = readee_tuple_of_tag tag_ebp in
  [rea_t]
;;

(** {6 Measure} *)

let measure_list_of_tag tag_ebp =
  let rea = readee_list_of_tag tag_ebp in
  List.map Readee_v.measure_off_readee rea
;;

let measure_tuple_of_tag tag_ebp =
  let rea_t = readee_tuple_of_tag tag_ebp in
  Tuple_v.map Readee_v.measure_off_readee rea_t
;;

let measure_tuple_list_of_tag tag_ebp =
  let mea_t = measure_tuple_of_tag tag_ebp in
  [mea_t]
;;

(** {6 Float} *)

let float_list_of_tag tag_ebp  =
  let mea_l = measure_list_of_tag tag_ebp in
  List.map Measure_v.float_off_measure mea_l
;;

let float_tuple_of_tag tag_ebp  =
  let mea_t = measure_tuple_of_tag tag_ebp in
  Tuple_v.map Measure_v.float_off_measure mea_t
;;

let float_tuple_list_of_tag tag_ebp =
  let flo_t = float_tuple_of_tag tag_ebp in
  [flo_t]
;;

(** {6 Units} *)

let elementary_fence_units_actual_symbol_list_of_tag tag_ebp =
  let mea_l = measure_list_of_tag tag_ebp in
  List.map Measure_v.elementary_fence_units_actual_symbol_off_measure mea_l 
;;

let elementary_fence_units_actual_symbol_tuple_of_tag tag_ebp  =
  let mea_t = measure_tuple_of_tag tag_ebp in
  Tuple_v.map Measure_v.elementary_fence_units_actual_symbol_off_measure mea_t
;;

let elementary_fence_units_actual_symbol_tuple_list_of_tag tag_ebp =
  let sym_efu_t = elementary_fence_units_actual_symbol_tuple_of_tag tag_ebp in
  [sym_efu_t]
;;

(** {6 Text} *)
(*
let text_of_tag tag_ebp =
  let bor_t = border_as_tuple_of_tag tag_ebp in
  Tuple_v.name Elementary_border_envelope_v.text_of_tag bor_t
;;
*)
(** {6 Naming} *)

let name env_ebp =
  List_v.name Elementary_border_envelope_v.name env_ebp
;;

let longname env_ebp =
  List_v.name Elementary_border_envelope_v.longname env_ebp
;;

(* generated by ./do_envelope_as_tuple_body_bud_measure_units_float_v.sh elementary_body_parameter_tu *)
(* using ./template_envelope_as_tuple_body_bud_measure_units_float_v.ml *)
(* Done on mercredi 27 janvier 2016, 12:07:19 (UTC+0100) *)

