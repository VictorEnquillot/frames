(** {3 The functionalities for a Value for a Parameter.}  *)

module Fln_v = Filename_p
module Pas_t = Parameter_symbol_t
module Pav_t = Parameter_value_t

(** {6 Making.} *)

let make_of_file_symbol = function
  | Pas_t.Module_scope ->
      Filename_p.filename "private_scope.dat"

  | Pas_t.Entity_external_n_codefile_list -> 
      Filename_p.filename "entity_external_n_codefile_list.dat"
;;

let make_filename_of_string str =
  let fln = Filename_p.filename str in
  Pav_t.Filename_palue fln
;;

let make = function 
  | Pas_t.File_symbol smb_fil ->
      Pav_t.Filename_palue (make_of_file_symbol smb_fil)
;;

(** {6 Extracting.} *)

let filename_off_parameter_value = function
  | Pav_t.Filename_palue fln -> fln
;;
