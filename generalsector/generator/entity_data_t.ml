(** {3 The Data for an Entity.}  *)

(** {6 Typing.} *)

type entity_data = string list
;;
(** It is the data (a list of strings) read from external data base 
    for each entityname
    Example :
      entityname atom  
      entity_data atom_zerotied atom_onetied atom_twotied atom_threetied atom_fourtied atom_fivetied atom_sixtied

   The Datastructure only son is left as a multi-word string 
   It is not developped as a list of son entity data
   The corresponding constructor of type Datastructure will have several sons.

       entitydata_tree              constructor symbol tree
         "aggregate"                     "aggregate"
             |                              /  \ 
  "doublet string ordinal"            string    ordinal
*)


