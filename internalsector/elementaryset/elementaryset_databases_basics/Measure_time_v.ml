(** {3 Measure_time_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_time_v";
   "Needs: VELE:Elementary_fence_units_time_symbol_v";
   "Needed-by: ";
   "Definition : a Readee generalizes any Elementary Value";
   "Definition : a Measure couples a float and an Elementary_fence_units_symbol";
   "Definition : a Closure is a list of Readee. It valuates the Elementary_fence i.e. the Deepfence of any Domain";
   "Definition : a Closure_units is a list of Readee_units (i.e. Measure)";
   "What-is-it : a Measure subtype coupling a float and a Unit of Time";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

(** {6 Naming} *)

let name mti =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_time_symbol_v.name 
    mti
;;

let string_off mti = "";;

let longname mti =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_time_symbol_v.longname
    mti
;;

let fullname mti =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_time_symbol_v.fullname
    mti
;;

(** {6 Making} *)

let make flo sym_eua =
  Doublet_v.make flo sym_eua
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_time_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua 
;;

(** {9 Float} *)

let float_off_measure_time mti =
  Doublet_v.left_off_doublet mti
;;

(** {9 Elementary_fence_units_time_symbol} *)

let elementary_fence_units_time_symbol_off_measure_time mti =
  Doublet_v.right_off_doublet mti
;;

(** {9 Coercing Up} *)

let measure_of_measure_time mti =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_time_symbol
    mti
;;

(** {9 Coercing Down} *)

let measure_time_off_measure mea =
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_time_symbol_off_elementary_fence_units_symbol
    mea
;;

(** {6 Writing} *)

let write och mti =
  let flo = float_off_measure_time mti in
  let sym_eua = elementary_fence_units_time_symbol_off_measure_time mti in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_time_symbol_v.name sym_eua)
;;

(** {6 Printing} *)

let print mti =
  let (flo, sym_eua) = mti in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Elementary_fence_units_time_symbol_v.name sym_eua))
;;

(** {6 Checking} *)

let check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2 =
  if (sym_eua_1 = sym_eua_2)
  then ()
  else 
    let nam_mod = Management_v.current_module_name (documentation ()) in
    Error_messages_v.print_fatal_error nam_mod "check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol"
      "Elementary_fence_units_time_symbols were equal"
      (Format.sprintf "%s and %s" (Elementary_fence_units_time_symbol_v.name sym_eua_1) (Elementary_fence_units_time_symbol_v.name sym_eua_2))
	 "Check"
;;

let elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_tuple = function
  | Tuple_t.Uno (uno) -> 
      Uno_v.element_off_uno uno
  | Tuple_t.Duo (sym_eua_1, sym_eua_2) -> 
      check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
      sym_eua_1
  | Tuple_t.Trio (sym_eua_1, sym_eua_2, sym_eua_3) -> 
      check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
      check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_3;
      sym_eua_1
  | sym_eua_u ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_tuple"
	(Format.sprintf "Current Elementary_fence_units_time_symbol Tuple >%s< were implemented" 
	   (Tuple_v.name Elementary_fence_units_time_symbol_v.fullname sym_eua_u)
	)
	"It is NOT"
	"Please do it"
;;

let elementary_fence_units_time_symbol_of_measure_tuple mti_u =
  let sym_eua_u = Tuple_v.map elementary_fence_units_time_symbol_off_measure_time mti_u in
  elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_tuple sym_eua_u
;;

let elementary_fence_units_time_symbol_of_measure_tuple_of_measure_tuple mti_1_u mti_2_u =
  let sym_eua_1 = elementary_fence_units_time_symbol_of_measure_tuple mti_1_u in
  let sym_eua_2 = elementary_fence_units_time_symbol_of_measure_tuple mti_2_u in
  check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
  sym_eua_1
;;

let elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_list sym_eua_l =
  try List_v.only_element_of_repeated_list sym_eua_l 
  with Failure "Not_repeated_list:List_v.only_element_of_repeated_list" ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_list"
	"Elementary_fence_units_time_symbol list were a repeated list" 
	(Format.sprintf "this Elementary_fence_units_time_symbol list :@.      %s" 
	   (List_v.name Elementary_fence_units_time_symbol_v.fullname sym_eua_l)
	)
	"Check"
;;

let elementary_fence_units_time_symbol_of_measure_list mti_l =
  let sym_eua_l = List.map elementary_fence_units_time_symbol_off_measure_time mti_l in
  elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol_list sym_eua_l
;;

let elementary_fence_units_time_symbol_of_measure_list_of_measure_list mti_1_l mti_2_l =
  let sym_eua_1 = elementary_fence_units_time_symbol_of_measure_list mti_1_l in
  let sym_eua_2 = elementary_fence_units_time_symbol_of_measure_list mti_2_l in
  check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
  sym_eua_1
;;

(** {6 Operations} *)

let add mti_1 mti_2 =
  let (flo_1, sym_eua_1) = mti_1 in
  let (flo_2, sym_eua_2) = mti_2 in

  check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 +. flo_2) sym_eua_1
;;

let substract mti_1 mti_2 =
  let (flo_1, sym_eua_1) =  mti_1 in
  let (flo_2, sym_eua_2) =  mti_2 in

  check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 -. flo_2) sym_eua_1
;;

let multiply mti_1 mti_2 =
  let (flo_1, sym_eua_1) =  mti_1 in
  let (flo_2, sym_eua_2) =  mti_2 in

  check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 *. flo_2) sym_eua_1
;;

let divide mti_1 mti_2 =
  let (flo_1, sym_eua_1) =  mti_1 in
  let (flo_2, sym_eua_2) =  mti_2 in

  if (abs_float flo_2) < epsilon_float
  then failwith "Division_by_zero:Elementary_fence_units_time_value_v.divide"
  else
    begin
      check_are_equal_of_elementary_fence_units_time_symbol_of_elementary_fence_units_time_symbol sym_eua_1 sym_eua_2;
      make (flo_1 /. flo_2) sym_eua_1
    end

let square mti = 
  let (flo, sym_eua) = mti in
  make (flo *. flo) sym_eua
;;

let square_root mti =
  let (flo, sym_eua) = mti in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:Elementary_fence_units_time_value_v.square_root"
  else
    make (sqrt flo) sym_eua
;;

let absolute_value mti =
  let (flo, sym_eua) = mti in
  make (abs_float flo) sym_eua
;;

