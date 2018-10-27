(* $Id: file_pdb.ml,v 1.9 2007-09-19 19:20:17 colonna Exp $ *)

let nam_cod = "File_pdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {3 A Pdb File.} *)

let file_name_pdb_of_string str = 
  File_format_v.file_name_of_string str
;;

let string_of_file_name_pdb fnm = 
  File_format_v.string_of_file_name fnm 
;;

let file_name_pdb_of_protein_identifier pri =
  let uxp = Provider_data_pdb_v.provide_unix_path pri in
  let ext = Provider_data_pdb_v.provide_file_name_extension pri in
  let nam_prn = Protein_identifier_v.protein_name_of_protein_identifier pri in
  {
   File_format_t.content = nam_prn;
   File_format_t.extension = ext; 
   File_format_t.unix_path = uxp;
 }
;;

(** {6 Printing.} *)

let print_file_name_pdb = File_format_v.print_file_name;;

let print_file_content_pdb ppf fnm =
  Format.fprintf  ppf "@[header: %a seqres: %a atoms: %a@]@."

  Recordpdb_v.print fnm.File_pdb_t.recordpdb_header
  Recordpdb_v.print_list fnm.File_pdb_t.seqres_records
  Recordpdb_v.print_list fnm.File_pdb_t.atom_pdb_records
;;

let in_channel_of_file_name_pdb  fnm  = 
  let fname = string_of_file_name_pdb  fnm in
  try open_in fname 
  with Sys_error s -> print_string s; print_newline (); 
    Format.fprintf  Format.err_formatter
   "@[File_format_t.in_channel_of_file_name_pdb:@ \
    Fatal Error@ \
    when opening file with name@ >%a<@. @]"
    print_file_name_pdb  fnm;
    assert (false)
;;

let recordpdb_list_of_file_name fnm =
  let lin_l =
    let ic = in_channel_of_file_name_pdb fnm in
    Tools_v.imperative_lines_read_of_channel ic 
  in
  let non_empty_l = 
    List.filter (fun s -> String.length s <> 0) lin_l 
  in  
  List.map (fun s -> Recordpdb_v.recordpdb_of_string s) non_empty_l
;;

let gather_recordpdb_list_by_recordpdb_symbol rcd_l  pdb_rcn =
  List.filter (fun pdb_rcd -> 
    (Recordpdb_v.recordpdb_symbol_of_recordpdb pdb_rcd) = pdb_rcn) 
  rcd_l
;;

let get_recordpdb_atom_list_of_recordpdb_list rcd_l =
  gather_recordpdb_list_by_recordpdb_symbol  rcd_l  Recordpdb_symbol_t.ATOM 
;;

let get_recordpdb_seqres_list_of_recordpdb_list rcd_l =
  gather_recordpdb_list_by_recordpdb_symbol  rcd_l  Recordpdb_symbol_t.SEQRES
;;

let get_recordpdb_header_of_recordpdb_list rcd_l =
  List.find (fun pdb_rcd -> 
    (Recordpdb_v.recordpdb_symbol_of_recordpdb pdb_rcd) = Recordpdb_symbol_t.HEADER) 
  rcd_l  
;;

let make_file_content_pdb_of_recordpdb_list rcd_l =
  {      
   File_pdb_t.atom_pdb_records = get_recordpdb_atom_list_of_recordpdb_list  rcd_l; 
   File_pdb_t.recordpdb_header = get_recordpdb_header_of_recordpdb_list  rcd_l;
   File_pdb_t.seqres_records = get_recordpdb_seqres_list_of_recordpdb_list  rcd_l;
  }
;;

let make_file_content_pdb_of_file_name fnm =
  let rcd_l = recordpdb_list_of_file_name fnm in
  make_file_content_pdb_of_recordpdb_list rcd_l 
;;

let make_file_content_pdb_of_protein_identifier pri = 
  let fnm = file_name_pdb_of_protein_identifier pri in

    Format.fprintf octr_ppf
    "@.@[%s.make_of_pri: --- Information:@.\
    Protein file of identifier >%a< has been made.@]@."
    nam_cod Protein_identifier_v.print pri;

  make_file_content_pdb_of_file_name fnm
;;

let read ib =
  Utils_v.not_yet_implemented "File_pdb_t:read"
;;


