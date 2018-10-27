(** {3 A Constrained Symbol Formula for a Record of the Pdb} *)

(** 
@see {{:http://www.wwpdb.org/documentation/format32/sect1.html}
        http://www.wwpdb.org/documentation/format32/sect1.html}

 
*)
type recordpdb_symbol_formula_contrained =  
  | Single_recordpdb of one_time_single_line_recordpdb_symbol
  | Multiple_recordpdb of one_time_mutiple_lines_recordpdb_symbol
;;
