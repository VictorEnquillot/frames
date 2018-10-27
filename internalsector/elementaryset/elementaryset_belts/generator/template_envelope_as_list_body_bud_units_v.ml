(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VELE:This_envelope_v";
   "Needs : DELE:Elementary_border_tag_by_elementary_tag_provider_v";
   "Needs : VELE:Envee_1_sibenv_1_envelope_v";
   "Needs : VELE:Envee_1_sibenv_2_envelope_v";
   "Needed-by: ";
   "What-is-it : it is a list of Envee_1 from Container";
   "How-is-it-done: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Border from Database} *)

let border_of_tag tag_ttt =
  let tag_ele_ttt = (* Coercing Tag Up *)
    Envee_1_tag_v.elementary_tag_of_envee_1_tag 
      tag_ttt
  in

  Elementary_border_by_elementary_tag_provider_v.provide 
    tag_ele_ttt 
;;
  
(** {6 Coerce Down Border to Envee_1 list} *)

let envee_1_tag_list_of_tag tag_ttt =
  let bor_ttt = border_of_tag tag_ttt in
  List.map 
    (Tag_v.map_entity
       Elementary_symbol_v.envee_1_symbol_off_elementary_symbol)
    bor_ttt
;;

(** {6 Envelope as Envelopee list} *)

let envelope_of_tag tag_ttt =
  let bor_ttt = border_of_tag tag_ttt in
  List_v.map
      Elementary_border_envelope_v.envelopee_of_tag
      bor_ttt
;;

(** {6 Tagged_measure_actual List} *)

let tagged_measure_actual_list_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  (List.map
     Envee_1_envelope_v.tagged_measure_actual_of_tag
     tag_ebo_l)
;;

(** {6 Tagged_readee List} *)

let tagged_readee_list_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  (List.map
     Envee_1_envelope_v.tagged_readee_of_tag
     tag_ebo_l)
;;

(** {6 Float List} *)

let float_list_of_tag tag_ttt  =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  List.map
    Envee_1_envelope_v.float_of_tag
    tag_ebo_l
;;

(** {6 Units List} *)

let untup_list_tag_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  List.map
    Envee_1_envelope_v.untup_tag_of_tag
    tag_ebo_l
;;

let measure_actual_unts_1_list_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  List.map
    Envee_1_envelope_v.measure_actual_unts_1_of_tag
    tag_ebo_l
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let tag_ebo_l = envee_1_tag_list_of_tag tag_ttt in
  List.map
    Envee_1_envelope_v.text_of_tag
    tag_ebo_l
;;

(** {6 Naming} *)

let name env_ttt =
  List_v.name Envee_1_envelope_v.name env_ttt
;;

let longname env_ttt =
  List_v.name Envee_1_envelope_v.longname env_ttt
;;


