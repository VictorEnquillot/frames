(** {3 A Formatted File.} *)


let nam_mod = "File_format_v";;

let make_file_name cnt ext uxp = {
  File_format_t.content = cnt;
  File_format_t.extension = ext;
  File_format_t.unix_path = uxp;
}
;;

let make_file fnm fmt hdr rcd_a = {
  File_format_t.file_name = fnm;
  File_format_t.format = fmt;
  File_format_t.header = hdr;
  File_format_t.records = rcd_a;
}
;;

let file_name_of_string str =
  let bas = Filename.basename str in
  let uxp = Filename.dirname str in
  let cnt = Filename.chop_extension bas in
  let ext = File_v.name_extension bas in
  make_file_name cnt ext uxp
;;

let string_of_file_name fnm =  
  let uxp = fnm.File_format_t.unix_path in 
  if (String_v.last_character_off_string uxp) = '/' 
  then
    Printf.sprintf "%s%s.%s"
      uxp
      fnm.File_format_t.content
      fnm.File_format_t.extension
  else
    Printf.sprintf "%s/%s.%s"
      uxp
      fnm.File_format_t.content
      fnm.File_format_t.extension
;;

let print_file_name ppf fnm =
  Format.fprintf ppf "%s"
    (string_of_file_name fnm)
;;

let in_channel_of_file_name fnm  = 
  let fname = string_of_file_name fnm in
  try open_in fname 
  with Sys_error s -> print_string s; print_newline (); 
    Format.fprintf Format.err_formatter
   "@.@[%s.in_channel_of_file_name: --- Fatal Error ---@.\
    when opening file >%a<@]@."
    nam_mod print_file_name fnm;
    assert (false)
;;

