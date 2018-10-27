(** {3 A Symbol for a field in a HEADER Pdb file record.} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}
        http://www.wwpdb.org/documentation/format32/sect2.html#HEADER}
*)

type header_fieldpdb_symbol =
  | Empty_1               (*  7-10 *)
  | Chemical_species      (* 11-50 *)
  | Deposition_date       (* 51-59 *)
  | Empty_2               (* 60-62 *)
  | PdbID                 (* 63-66 *)
  | Empty_3               (* 67-80 *)
;;
