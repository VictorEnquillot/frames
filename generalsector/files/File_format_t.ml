(** {3 A File in a given format.} *)

type 'a file = {
    file_name : file_name;
    format : 'a;
    header : 'a file_header array;
    records : 'a file_record array;
  }
(** It is a set of records using some [file_format]*)

and file_name = {
    content : content;
    extension : extension;
    unix_path : unix_path;
  }
and content = string
and extension = string
and unix_path = string
and 'a file_header = string 

and 'a file_record = string 

and file_format =
  | Pdb
  | Charmm

and pdb_file = file_format file 

and charmm_file = file_format file
;;
