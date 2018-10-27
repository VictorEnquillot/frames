(** {3 A Provider of Entityname_list_list for a Domainset}  *)

let nam_cod = "formula_database_record_list_provider_v.ml";;

(**
Provides the content of a database file as a record list.

Each record is divided into words (word list).
The first word is the name of a Camltype
The remaining word list are the names of the Constructors

Record structure :
[Camltype; Constructor; Constructor; ...; Constructor]

Example :
1. atom atom_zerotied atom_onetied atom_twotied atom_threetied 
atom : is the camltype name
atom_zerotied atom_onetied atom_twotied atom_threetied : are the names of "atom"camltype constructors.

2. atom_zerotied_raregas ar he kr ne xe
atom_zerotied_raregas is the camltype
ar he kr ne xe are its constructors. They are NOT camltypes.

Needs : Formula_database_filename_provider_v

*)

(** {6 Aliasing} *)


(** {6 Register} *)

let nam_reg = "database_record_list_by_domainset_register";;

let database_record_list_by_domainset_register : 
    (Trail_t.trail, string list) Register_t.register = Register_v.make 137;;

let store tra_cat rcd_l =
  try Register_v.store database_record_list_by_domainset_register tra_cat rcd_l
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Drcdp_v.store")
;;

let is_stored tra_cat =
  Register_v.is_stored database_record_list_by_domainset_register tra_cat
;;

let retrieve tra_cat =
  try Register_v.retrieve database_record_list_by_domainset_register tra_cat
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Psr_v.retrieve")
;;  

let read_word_list_of_filename fin =
  let str_l = File_v.read_string_list_of_filename fin in
    List.filter (fun s -> s <> "") str_l
;;

let check_record rcd =
 if not ( String.contains rcd '=' )
 then Error_messages_v.print_fatal_error nam_cod "check_record" 
     "Record must contain an = sign"
     (Format.sprintf " :@.>%s<" rcd)
     "Check file "
 else 
  let str = List.hd (String_v.split_of_c '=' rcd) in
  let wor_l = String_v.split_of_c ' ' str in
  if List.length wor_l < 2
  then Error_messages_v.print_fatal_error nam_cod "check_record" 
     "String must contain two words"
     (Format.sprintf " :@.>%s< in record :@.    >%s<" str rcd)
     "Check file "
  else ()
    
;;

let select_entity_name nam dep1 dep2 rcd =
  check_record rcd;

  let wor = List.hd (String_v.split_of_c '=' rcd) in
  let str = List.nth (String_v.split_of_c ' ' wor) 1  in
  let dep = List.length (String_v.split_of_c '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_of_record rcd =
if (String_v.is_empty_of_string rcd )
then false
else
  let hdc = 
    String_v.first_character_of_string 
      (String_v.trim_head_of_string rcd) 
  in
  hdc <> "#"
;;

let build () =
  let fin = Formula_database_filename_provider_v.provide () in
  let rcd_l = read_word_list_of_filename fin in
  List.filter select_of_record rcd_l
;;

let provide () =
  build ()
;;
