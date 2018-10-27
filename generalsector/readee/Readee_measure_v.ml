(** {3 Readee_measure_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : REA:Readee_measure_v";
   "Needed-by :";
   "Definition : a Readee_measure generalizes a Measure";
   "Author : François Colonna 03 décembre 2016 at 11:43:19+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Readee_measure_t.Readee_measure mea -> 
      Measure_v.name mea
;;

let shortname = function
  | Readee_measure_t.Readee_measure mea -> 
      Measure_v.shortname mea
;;

let measure_off = function
  | Readee_measure_t.Readee_measure mea -> mea
;;

let dimension = function
  | Readee_measure_t.Readee_measure mea -> 
      Measure_v.dimension mea
;;

let longname rme =
  Format.sprintf "Readee_measure_t.Readee_measure of Measure_actual_t.%s" (String.capitalize (name rme))
;;

let fullname rme = 
  Format.sprintf "Readee_measure_t.Readee_measure of Measure_actual_t.%s" (String.capitalize (name rme))
;;

(** {6 Making} *)

let readee_measure_of_measure mea =
  Readee_measure_t.Readee_measure mea  
;;

let readee_measure_of_measure_actual mac =
  let mea = Measure_v.measure_of_measure_actual mac in
  Readee_measure_t.Readee_measure mea  
;;

let make nam str_flo str_eu1 str_eu2 =
  let nam_low = String.lowercase nam in
  let mea = Measure_v.make_of_string_of_string_of_string str_flo str_eu1 str_eu2 in
  match nam_low with
  | "readee_measure" -> Readee_measure_t.Readee_measure mea
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "type name >%s< were Readee_measure" nam_low)
	"It is NOT"
	"Check MEA:Measure_v"
;;


