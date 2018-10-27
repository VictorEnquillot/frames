(** {3 Measure_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : MEA:Measure_tuple_v";
   "Needs : MEA:_Units_tuple_v";
   "Needed-by: ";
   "What-is-it : a Measure_tuple type couples a float and a Units_tuple";
   "How-is-it-done: ";
   "Author : François Colonna 21 mai 2016 at 12:44:04+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Making} *)

let make flo_t uni_t =
  if Units_tuple_v.is_homogeneous_of_units_tuple uni_t
  then 
    Tuple_v.map2 
      Measure_v.make 
      flo_t 
      uni_t
  else
    failwith "Not_a_topson_notleaf:_Units_tuple_v.ml:make"
;;

(** {6 Float_tuple} *)

let float_tuple_off_measure_tuple mea_t =
  Tuple_v.map Doublet_v.left_off_doublet mea_t
;;

(** {6 Units_tuple} *)

let units_tuple_off_measure_tuple mea_t = 
  Tuple_v.map Doublet_v.right_off_doublet mea_t
;;

(** {6 Naming} *)

let name mea_t =
  Tuple_v.name Measure_v.name mea_t
;;

let dimension mea_t =
  Tuple_v.name Measure_v.dimension mea_t
;;

let shortname mea_t = 
  Tuple_v.name Measure_v.shortname mea_t
;;

let longname mea =
  Format.sprintf "Measure_t.%s" (String.capitalize (name mea))
;;

let fullname mea =
  Format.sprintf "%s \"%s\"" (longname mea) (dimension mea)
;;

(** {6 Writing} *)

let write och mea_t =
  Tuple_v.iter (Measure_v.write och) mea_t
;;

let print mea_t =
  Tuple_v.iter Measure_v.print mea_t
;;

(** {6 Operations Unary} *)

(** {6 Comparing} *)

let are_equal_of_epsilon eps mea_1t mea_2t =
  let boo_t = Tuple_v.map2 (Measure_v.are_equal_of_epsilon eps) mea_1t mea_2t in 
  Tuple_v.only_element_of_repeated_tuple boo_t
;;

let are_equal_at_epsilon mea_1t mea_2t =
  are_equal_of_epsilon epsilon_float mea_1t mea_2t
;;
