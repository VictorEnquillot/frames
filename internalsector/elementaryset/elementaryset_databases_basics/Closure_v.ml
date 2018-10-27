(** {3 Closure_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Closure_v";
   "Needs : VELE:Readee_v";
   "Needed-by :";
   "What-is-it : Closure type is a list of Readee of any subtype";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Closure_t.Closure_basic cco -> Closure_basic_v.name cco
  | Closure_t.Closure_color cco -> Closure_color_v.name cco
  | Closure_t.Closure_units cun -> Closure_units_v.name cun
;;

let string_off = function
  | Closure_t.Closure_basic cco -> Closure_basic_v.string_off cco
  | Closure_t.Closure_color cco -> Closure_color_v.string_off cco
  | Closure_t.Closure_units cun -> Closure_units_v.string_off cun
;;

let longname = function
  | Closure_t.Closure_basic cco -> Closure_basic_v.longname cco
  | Closure_t.Closure_color cco -> Closure_color_v.longname cco
  | Closure_t.Closure_units cun -> Closure_units_v.longname cun
;;

let fullname = function
  | Closure_t.Closure_basic cco -> Closure_basic_v.fullname cco
  | Closure_t.Closure_color cco -> Closure_color_v.fullname cco
  | Closure_t.Closure_units cun -> Closure_units_v.fullname cun
;;

(** {6 Making} *)

let make bou_l =
  bou_l
;;

(** {6 Coercing Up} *)

let closure_of_closure_basic cun =
  Closure_t.Closure_basic cun
;;

let closure_of_closure_units cun =
  Closure_t.Closure_units cun
;;

let closure_of_closure_color cco =
  Closure_t.Closure_color cco
;;

(* Coercion Down *)

let closure_units_off_closure = function
  | Closure_t.Closure_units cun -> cun
  | _ -> failwith "Not_a_units:Closure_v.closure_of_closure_units"
;;

let closure_color_off_closure = function
  | Closure_t.Closure_color cco -> cco
  | _ -> failwith "Not_a_color:Closure_v.closure_of_closure_color"
;;

let closure_basic_off_closure = function
  | Closure_t.Closure_basic cco -> cco
  | _ -> failwith "Not_a_basic:Closure_v.closure_of_closure_basic"
;;

let readee_list_off_closure clo =
  clo
;;

let measure_list_off_closure clo =
  let bou_l = readee_list_off_closure clo in
  List.map Readee_v.measure_off_readee bou_l
;;

let measure_canonical_list_off_closure clo =
  let mea_l = measure_list_off_closure clo in
  List.map Measure_v.measure_canonical_of_measure_of_calculation_name mea_l
;;
