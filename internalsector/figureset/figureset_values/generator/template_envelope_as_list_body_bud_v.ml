(** {3 This_envelope_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VMMM:This_envelope_v";
   "Needs : VMMM:Figure_fence_by_figure_tag_provider_v";
   "Needs : VMMM:Conee_1_envelope_v";
   "What-is-it : the Envelope a Body Bud Entity";
   "How-is-it-done : by recursively expressing it as its Fence_coerced_down (Containee_as_list) Envelope";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Builders} *)

let builder_tag_list_of_tag tag_ttt =
  This_container_v.builder_tag_list_of_tag
    tag_ttt
;;

(** {6 Containee_tag_list} *)

let containee_tag_list_of_tag tag_ttt =
  This_container_v.containee_tag_list_of_tag
    tag_ttt
;;

(** {6 Fence} *)

let fence_as_list_of_tag tag_ttt =
  builder_tag_list_of_tag tag_ttt 
;;

let fence_coerced_down_of_tag tag_ttt =
  containee_tag_list_of_tag tag_ttt 
;;

(** {6 Border} *)

let border_of_tag tag_ttt =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in

  List.flatten 
    (List.map 
       Conee_1_envelope_v.border_of_tag 
       tag_cnn_1_l)
;;
  
(** {6 Envelope} *)

let envelope_of_tag tag_ttt =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in

  List.flatten 
    (List.map 
       Conee_1_envelope_v.envelope_of_tag 
       tag_cnn_1_l)
;;

(** {6 Closure} *)

let closure_of_tag tag_ttt =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in
  
  List.flatten 
    (List_v.map 
       Conee_1_envelope_v.closure_of_tag
       tag_cnn_1_l)
;;

(** {6 Float List} *)

let float_list_of_tag tag_ttt  =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in
  
  List.flatten 
    (List_v.map 
       Conee_1_envelope_v.float_list_of_tag
       tag_cnn_1_l)
;;

(** {6 Units List} *)

let elementary_fence_units_actual_tag_list_of_tag tag_ttt =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in
  
  List.flatten 
    (List_v.map 
       Conee_1_envelope_v.elementary_fence_units_actual_tag_list_of_tag
       tag_cnn_1_l)
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let tag_cnn_1_l = containee_tag_list_of_tag tag_ttt in
  
  List.flatten 
    (List_v.map 
       Conee_1_envelope_v.text_of_tag
       tag_cnn_1_l)
;;
