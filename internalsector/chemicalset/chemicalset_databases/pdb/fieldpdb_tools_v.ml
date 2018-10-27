(** {3 The functionalities for a Data for a Field of the Pdb} *)

let nam_cod = "Fieldpdb_tools_v";;

(*
A Field is a basic data
*)



(** {6 Converting.} *)

let column_and_width_of_fieldpdb_symbol cp_f sym_flp =
  let (c1, c2) = cp_f sym_flp in
  let w = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  (c1, w)
;;

let column_and_width_and_symbol_of_fieldpdb_symbol cp_f sym_flp =
  let (c1, w) = column_and_width_of_fieldpdb_symbol cp_f sym_flp in
  (c1, w, sym_flp)
;;

let make_int_field_format_string w =
    Printf.sprintf " %%%di" w
;;

let make_float_field_format_string w =
    Printf.sprintf " %%%if" w
;;

let make_string_field_format_string w =
    Printf.sprintf " %%%is" w
;;

let print_fatal_error nam_cod nam str_fld c w =
      Format.fprintf 
	Format.err_formatter 
	"@.@[<hov>%s.%s: --- Fatal Error ---@.\      
        expecting data from field >%s< at column %i of %i-digits wide.\      
        found End_of_file.\
        cure : check fields width@]@."
	nam_cod nam str_fld (Ordinal_p.int_of_ordinal c) w;
        assert false;
;;

let print_fatal_error_2 nam_cod nam str_fld c w =
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\      
    expecting data from field >%s< at column %i be character.\      
    found %i-digit wide field.\     
    cure : check fields width@]@."
    nam_cod nam str_fld (Ordinal_p.int_of_ordinal c) w;
    assert false;
;;

let convert_char_field (col, wid) str =
  let str_fld =
    String.sub str (Ordinal_p.int_decrement_of_ordinal col) 
      wid in
  if wid <> 1 
  then
    print_fatal_error_2 nam_cod "convert_char_field" str_fld col wid
else
begin
  try Scanf.sscanf str_fld "%c" (fun ch -> ch)
  with End_of_file ->
    print_fatal_error nam_cod "convert_char_field" str_fld col wid;
end
;;

let convert_string_field (col, wid) str =
  let str_fld =
    String.sub str (Ordinal_p.int_decrement_of_ordinal col) wid in
  let fmt_string = Printf.sprintf " %%%is" wid in
  try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%s") (fun s -> s)
  with End_of_file ->
    print_fatal_error nam_cod "convert_string_field" str_fld col wid;
;;

let convert_float_field (col, wid) str =
  let str_fld =
    String.sub str (Ordinal_p.int_decrement_of_ordinal col) wid in
  let fmt_string = Printf.sprintf " %%%if" wid in
   try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%f") (fun f -> f)
  with End_of_file ->
    print_fatal_error nam_cod "convert_float_field" str_fld col wid;
;;

let convert_int_field (col, wid) str =
  let str_fld =
    String.sub str (Ordinal_p.int_decrement_of_ordinal col) wid in
  let fmt_string = Printf.sprintf " %%%di" wid in
  try Scanf.sscanf str_fld (Scanf.format_from_string fmt_string "%i") (fun s -> s)
  with End_of_file ->
    print_fatal_error nam_cod "convert_int_field" str_fld col wid;
;;

let has_same_field_of_column_pair_of_string_of_string (c1, c2) str_a str_b =
  let wid = (Ordinal_p.int_of_ordinal c2) - (Ordinal_p.int_of_ordinal c1) + 1 in
  let fmt_str = Printf.sprintf " %%%is" wid in

  let str_fld_a =
    try Scanf.sscanf str_a (Scanf.format_from_string fmt_str "%s") (fun s -> s)
    with End_of_file ->
      print_fatal_error nam_cod "convert_string_field" str_a c1 wid;
  in
  let str_fld_b =
    try Scanf.sscanf str_b (Scanf.format_from_string fmt_str "%s") (fun s -> s)
    with End_of_file ->
      print_fatal_error nam_cod "convert_string_field" str_b c1 wid;
  in

  str_fld_a = str_fld_b
;;

let has_same_firstsixcharacters_of_string_of_string str_a str_b =
  has_same_field_of_column_pair_of_string_of_string 
    (Ordinal_p.one, Ordinal_p.six) str_a str_b
;;

