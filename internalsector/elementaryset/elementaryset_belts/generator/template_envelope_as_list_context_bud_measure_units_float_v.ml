(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VELE:This_envelope_v";
   "Needs : VELE:Envelopee_v";
   "Needs : VELE:Elementary_border_envelope_v";
   "Needs : FELE:This_container_v";
   "Needed-by: ";
   "What-is-it : it is the Envelope for This";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Border_as_list from Database} *)

let border_as_list_of_tag tag_ttt =
  This_container_v.border_as_list tag_ttt
;;
  
let border_of_tag tag_ttt =
  border_as_list_of_tag tag_ttt
;;

(** {6 Envelope as Envelopee list} *)

let envelope_of_tag tag_ttt =
  let bor_l = border_as_list_of_tag tag_ttt in
  List_v.map
    Elementary_border_envelope_v.envelopee_of_tag
    bor_l
;;

(** {6 Readee} *)

let readee_list_of_tag tag_ttt =
  let env = envelope_of_tag tag_ttt in
  List.map Envelopee_v.readee_off_envelopee env
;;

(** {6 Measure_actual} *)

let measure_actual_list_of_tag tag_ttt =
  let rea = readee_list_of_tag tag_ttt in
  List.map Readee_v.measure_actual_off_readee rea
;;

(** {6 Float} *)

let float_list_of_tag tag_ttt  =
  let mea_l = measure_actual_list_of_tag tag_ttt in
  List.map Measure_actual_v.float_off_measure_actual mea_l
;;

(** {6 Units} *)

let elementary_fence_units_actual_symbol_list_of_tag tag_ttt =
  let mea_l = measure_actual_list_of_tag tag_ttt in
  List.map Measure_actual_v.elementary_fence_units_actual_symbol_off_measure_actual mea_l 
;;

(** {6 Text} *)
(*
let text_of_tag tag_ttt =
  let bor_l = border_as_list_of_tag tag_ttt in
  List_v.name Elementary_border_envelope_v.text_of_tag bor_l
;;
*)
(** {6 Naming} *)

let name env_ttt =
  List_v.name Elementary_border_envelope_v.name env_ttt
;;

let longname env_ttt =
  List_v.name Elementary_border_envelope_v.longname env_ttt
;;
