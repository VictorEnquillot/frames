(** {3 The functionalities for a Value for a Field of the Pdb} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}
        http://www.wwpdb.org/documentation/format32/sect2.html#TITLE}

A Field is a basic data
*)


(** {6 Converting.} *)

let column_and_width_of_fieldpdb_symbol cp_f sym_flp =
  let (c1, c2) = cp_f sym_flp in
  let w = (Ord_p.int_of_ordinal c2) - (Ord_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_fieldpdb_symbol sym_afp =
  let (c1, w) = column_and_width_of_fieldpdb_symbol sym_afp in
  (c1, w, sym_afp)
;;

let make_integer_field_format_string w =
    Printf.sprintf " %%%di" w
;;

let make_float_field_format_string w =
    Printf.sprintf " %%%if" w
;;

let make_string_field_format_string w =
    Printf.sprintf " %%%is" w
;;

let print_fatal_error nam_cod nam_fun str_fld c w =
      Format.fprintf 
	Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\      
        expecting data from field >%s< at column %i of %i-digits wide.@.\      
        found End_of_file.@.\     
        cure : check fields width@]@."
	nam_cod nam_fun str_fld (Ord_p.int_of_ordinal c) w;
        assert false;
;;

let convert_char_field str_fld sym_afp =
  let (c, w) = 
    column_and_width_of_fieldpdb_symbol 
      sym_afp in
  try Scanf.sscanf str_fld "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "convert_char_field" str_fld c w;
;;

let convert_float_field str_fld sym_afp =
  let (c, w) = 
    column_and_width_of_fieldpdb_symbol 
      sym_afp in
  let fmt_string = make_float_field_format_string w in
   try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%f") (fun f -> f)
  with End_of_file ->
    print_fatal_error nam_cod "convert_float_field" str_fld c w;
;;

let convert_integer_field str_fld sym_afp =
  let (c, w) = 
    column_and_width_of_fieldpdb_symbol 
      sym_afp in
  let fmt_string = make_integer_field_format_string w in
  try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%i") (fun s -> s)
  with End_of_file ->
    print_fatal_error nam_cod "convert_integer_field" str_fld c w;
;;

let convert_string_field str_fld sym_sfp =
  let (c, w) = 
    column_and_width_of_fieldpdb_symbol 
      sym_sfp in
  let fmt_string = make_string_field_format_string w in
  try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%s") (fun s -> s)
  with End_of_file ->
    print_fatal_error nam_cod "convert_string_field" str_fld c w;
;;

