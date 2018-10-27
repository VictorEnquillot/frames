(** {3 A Name for a File.} *)

let nam_cod = "Filename_p.ml";;

(** {Aliasing} *)


(** {Typing} *)

type filename = string;;

type filename_components = {
    directorypath : Directorypath_t.directorypath;
    filecontentsymbol : Filecontentsymbol_t.filecontentsymbol;
    fileextension : Fileextension_t.fileextension;
  }
;;

(** {6 Making.} *)

let filename str =
  let drp = Directorypath_v.extract_off_string str in
  let flc = Filecontentsymbol_v.extract_off_string str in
  let fle = Fileextension_v.extract_off_string str in
   match fle with
  | Fileextension_t.Empty ->
     ((Directorypath_v.name drp) ^ (Filecontentsymbol_v.name flc) ) 
  | _ -> 
      ((Directorypath_v.name drp) ^ 
       (Filecontentsymbol_v.short_name flc) 
       ^ "." ^ 
       (Fileextension_v.short_name fle))
;;

let make_components drp flc fle = {
  directorypath = drp;
  filecontentsymbol = flc;
  fileextension = fle;
  }
;;

(** {6 Extracting.} *)

let string_off_filename str = str
;;

let name_off_filename str = str
;;

let directorypath_off_filename fna =
  let str = string_off_filename fna in 
  Directorypath_v.extract_off_string str 
;;

let filecontentsymbol_off_filename fna =
  let str = string_off_filename fna in 
  Filecontentsymbol_v.extract_off_string str 
;;

let fileextension_off_filename fna =
  let str = string_off_filename fna in 
  Fileextension_v.extract_off_string str 
;;

let fullname fna = string_off_filename fna;;

let short_name fna = 
  let flc = filecontentsymbol_off_filename fna in
  let fle = fileextension_off_filename fna in
  Format.sprintf "%s.%s" 
    (Filecontentsymbol_v.short_name flc) 
    (Fileextension_v.short_name fle)
;;

let name fna =
  short_name fna
;;

let read_string_list_of_filename fna =
  let nam_fil = fullname fna in
  File_v.read_string_list_of_fullname nam_fil
;;

let read_not_empty_record_list_of_filename fna =
  let nof = name_off_filename fna in
  File_v.read_not_empty_record_list_of_fullname nof
;;

let read_not_empty_nor_comment_record_list_of_filename fna =
  let nof = name_off_filename fna in
  File_v.read_not_empty_nor_comment_record_list_of_fullname nof
;;

