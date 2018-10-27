(** {3 A Provider for a Database_record_list for a Nameoffile_trail}  *)

let nam_cod = "database_record_list_by_nameoffile_provider_v.ml";;

(**
For a Nameoffile (a file name as a string),
provides the content of a database file as a record list.
A file can always be considered as a record list
*)

(** {6 Modules} *)

module Err_v = Error_messages_v
module Fil_v = File_v
module Fin_p = Filename_p
module Fio_v = Fileio_v
module Reg_t = Register_t
module Reg_v = Register_v
module Str_v = String_v
module Tra_t = Trail_t

(** {6 Register} *)

let nam_reg = "database_record_list_by_nameoffile";;

let database_record_list_by_nameoffile : 
    (Tra_t.trail, string list) Reg_t.register = Reg_v.make 137;;

let store tra_fil rcd_l =
  try Reg_v.store database_record_list_by_nameoffile tra_fil rcd_l
  with Failure ("Already_stored:Reg_v.store") ->
    failwith ("Already_stored:Pmc_v.store")
;;

let is_stored tra_fil =
  Reg_v.is_stored database_record_list_by_nameoffile tra_fil
;;

let retrieve tra_fil =
  try Reg_v.retrieve database_record_list_by_nameoffile tra_fil
  with Failure ("Not_stored:Reg_v.retrieve") ->
    failwith ("Not_stored:Psr_v.retrieve")
;;  

let build tra_fil =
  let fin = 
    Fin_p.filename 
      "Chine_arrete_pour_un_article_sur_des_esclaves_sexuelles_Pierre_Haski_Rue89.html"
  in
  if not (Fio_v.is_existing_of_filename fin)
  then
    Err_v.print_fatal_error 
      nam_cod
      "build"
      "nameoffile file exists"
      (Fin_p.name fin)
      "check file name"
  else
    Fil_v.read_string_list_of_filename fin
;;

let build_n_store tra_fil =
  let rcd_l = build tra_fil in
  store tra_fil rcd_l; 
  rcd_l 
;;

let provide tra_fil =
  if Reg_v.is_stored database_record_list_by_nameoffile tra_fil 
  then retrieve tra_fil
  else build_n_store tra_fil 
;;
