(** {3 Measure_none_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Measure_none_v";
   "Needs: VELE:Elementary_fence_units_none_symbol_v";
   "Needed-by: ";
   "Definition : a Readee generalizes any Elementary Value";
   "Definition : a Measure couples a float and an Elementary_fence_units_symbol";
   "Definition : a Closure is a list of Readee. It valuates the Elementary_fence i.e. the Deepfence of any Domain";
   "Definition : a Closure_units is a list of Readee_units (i.e. Measure)";
   "What-is-it : a Measure subtype coupling a float and a Unit of None";
   "How-is-it-done: ";
   "Example: ";
 ]
;;

(** {6 Naming} *)

let name mac =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_none_symbol_v.name 
    mac
;;

let string_off mac = "";;

let longname mac =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_none_symbol_v.longname
    mac
;;

let fullname mac =
  Doublet_v.name
    String_v.string_of_float
    Elementary_fence_units_none_symbol_v.fullname
    mac
;;

(** {6 Extracting elements} *)

(** {9 Float} *)

let float_off_measure_none mac =
  Doublet_v.left_off_doublet mac
;;

(** {9 Elementary_fence_units_none_symbol} *)

let elementary_fence_units_none_symbol_off_measure_none mac =
  Doublet_v.right_off_doublet mac
;;

(** {6 Making} *)

let make flo sym_eua =
  Doublet_v.make flo sym_eua
;;

let make_of_string_of_string_of_string str_flo str_eu1 str_eu2 =
  let flo = String_v.float_of_string str_flo in
  let sym_eua = Elementary_fence_units_none_symbol_v.make str_eu1 str_eu2 in
  make flo sym_eua 
;;

(** {6 Coercing} *)

(** {9 Coercing Up} *)

let measure_of_measure_none mno = 
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_symbol_of_elementary_fence_units_none_symbol
    mno
;;

(** {9 Coercing Down} *)

let measure_none_off_measure mea = 
  Doublet_v.map_right 
    Elementary_fence_units_symbol_v.elementary_fence_units_none_symbol_off_elementary_fence_units_symbol
    mea
;;

(** {6 Writing} *)

let write och mac =
  let flo = float_off_measure_none mac in
  let sym_eua = elementary_fence_units_none_symbol_off_measure_none mac in
  Format.fprintf (Format.formatter_of_out_channel och) "%f %s" 
    flo 
    (Elementary_fence_units_none_symbol_v.name sym_eua)
;;

(** {6 Printing} *)

let print mac =
  let (flo, sym_eua) = mac in
  (Format.fprintf Format.std_formatter " %g %s@." flo (Elementary_fence_units_none_symbol_v.name sym_eua))
;;

(** {6 Checking} *)

let check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2 =
  if (sym_eua_1 = sym_eua_2)
  then ()
  else 
    let nam_mod = Management_v.current_module_name (documentation ()) in
    Error_messages_v.print_fatal_error nam_mod "check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol"
      "Elementary_fence_units_none_symbols were equal"
      (Format.sprintf "%s and %s" (Elementary_fence_units_none_symbol_v.name sym_eua_1) (Elementary_fence_units_none_symbol_v.name sym_eua_2))
	 "Check"
;;

let elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_tuple = function
  | Tuple_t.Uno (uno) -> 
      Uno_v.element_off_uno uno
  | Tuple_t.Duo (sym_eua_1, sym_eua_2) -> 
      check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
      sym_eua_1
  | Tuple_t.Trio (sym_eua_1, sym_eua_2, sym_eua_3) -> 
      check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
      check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_3;
      sym_eua_1
  | sym_eua_u ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_tuple"
	(Format.sprintf "Current Elementary_fence_units_none_symbol Tuple >%s< were implemented" 
	   (Tuple_v.name Elementary_fence_units_none_symbol_v.fullname sym_eua_u)
	)
	"It is NOT"
	"Please do it"
;;

let elementary_fence_units_none_symbol_of_measure_tuple mac_u =
  let sym_eua_u = Tuple_v.map elementary_fence_units_none_symbol_off_measure_none mac_u in
  elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_tuple sym_eua_u
;;

let elementary_fence_units_none_symbol_of_measure_tuple_of_measure_tuple mac_1_u mac_2_u =
  let sym_eua_1 = elementary_fence_units_none_symbol_of_measure_tuple mac_1_u in
  let sym_eua_2 = elementary_fence_units_none_symbol_of_measure_tuple mac_2_u in
  check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
  sym_eua_1
;;

let elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_list sym_eua_l =
  try List_v.only_element_of_repeated_list sym_eua_l 
  with Failure "Not_repeated_list:List_v.only_element_of_repeated_list" ->
      let nam_mod = Management_v.current_module_name (documentation ()) in
      Error_messages_v.print_fatal_error nam_mod "elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_list"
	"Elementary_fence_units_none_symbol list were a repeated list" 
	(Format.sprintf "this Elementary_fence_units_none_symbol list :@.      %s" 
	   (List_v.name Elementary_fence_units_none_symbol_v.fullname sym_eua_l)
	)
	"Check"
;;

let elementary_fence_units_none_symbol_of_measure_list mac_l =
  let sym_eua_l = List.map elementary_fence_units_none_symbol_off_measure_none mac_l in
  elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol_list sym_eua_l
;;

let elementary_fence_units_none_symbol_of_measure_list_of_measure_list mac_1_l mac_2_l =
  let sym_eua_1 = elementary_fence_units_none_symbol_of_measure_list mac_1_l in
  let sym_eua_2 = elementary_fence_units_none_symbol_of_measure_list mac_2_l in
  check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
  sym_eua_1
;;

(** {6 Operations} *)

let add mac_1 mac_2 =
  let (flo_1, sym_eua_1) = mac_1 in
  let (flo_2, sym_eua_2) = mac_2 in

  check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 +. flo_2) sym_eua_1
;;

let substract mac_1 mac_2 =
  let (flo_1, sym_eua_1) =  mac_1 in
  let (flo_2, sym_eua_2) =  mac_2 in

  check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 -. flo_2) sym_eua_1
;;

let multiply mac_1 mac_2 =
  let (flo_1, sym_eua_1) =  mac_1 in
  let (flo_2, sym_eua_2) =  mac_2 in

  check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
  
  make (flo_1 *. flo_2) sym_eua_1
;;

let divide mac_1 mac_2 =
  let (flo_1, sym_eua_1) =  mac_1 in
  let (flo_2, sym_eua_2) =  mac_2 in

  if (abs_float flo_2) < epsilon_float
  then failwith "Division_by_zero:Elementary_fence_units_none_value_v.divide"
  else
    begin
      check_are_equal_of_elementary_fence_units_none_symbol_of_elementary_fence_units_none_symbol sym_eua_1 sym_eua_2;
      make (flo_1 /. flo_2) sym_eua_1
    end

let square mac = 
  let (flo, sym_eua) = mac in
  make (flo *. flo) sym_eua
;;

let square_root mac =
  let (flo, sym_eua) = mac in
  if flo < epsilon_float
  then 
    failwith "Non_positive_float:Elementary_fence_units_none_value_v.square_root"
  else
    make (sqrt flo) sym_eua
;;

let absolute_value mac =
  let (flo, sym_eua) = mac in
  make (abs_float flo) sym_eua
;;

