(** {3 The Symbol for a Cluster of the Pdb} *)

(** 
All the names below are taken from :
@see {{:http://www.wwpdb.org/documentation/format32/sect1.html}
        http://www.wwpdb.org/documentation/format32/sect1.html}

N.B.: Some (TURN) Recordpdb Symbol are missing in the reference.
*)

type clusterpdb_symbol =  
  | One_time_single_line_clusterpdb_symbol of one_time_single_line_clusterpdb_symbol
  | One_time_multiple_lines_clusterpdb_symbol of one_time_mutiple_lines_clusterpdb_symbol
  | Multiple_times_one_line_clusterpdb_symbol of multiple_times_one_line_clusterpdb_symbol
  | Multiple_times_multiples_lines_clusterpdb_symbol of multiple_times_multiples_lines_clusterpdb_symbol
  | Grouping_clusterpdb_symbol of grouping_clusterpdb_symbol
  | Other_clusterpdb_symbol of other_clusterpdb_symbol

and one_time_single_line_clusterpdb_symbol =
  | CRYST1
  | END   
  | HEADER
  | MASTER
  | NUMMDL
  | ORIGX1
  | ORIGX2
  | ORIGX3
  | SCALE1
  | SCALE2
  | SCALE3

and one_time_mutiple_lines_clusterpdb_symbol =
  | AUTHOR
  | CAVEAT
  | COMPND
  | EXPDTA
  | HYDBND
  | KEYWDS
  | OBSLTE
  | SIGATM
  | SIGUIJ
  | SLTBRG
  | SOURCE
  | SPRSDE
  | TITLE 
  | TURN    (* missing in ref. exists in 7adh *)
  | TVECT 

and multiple_times_one_line_clusterpdb_symbol =
  | ANISOU
  | ATOM
  | CISPEP
  | CONECT
  | DBREF 
  | HELIX 
  | HET   
  | HETATM
  | LINK  
  | MODRES
  | MTRIX1
  | MTRIX2
  | MTRIX3
  | REVDAT
  | SEQADV
  | SSBOND

and multiple_times_multiples_lines_clusterpdb_symbol =
  | FORMUL
  | HETNAM
  | HETSYN
  | SEQRES
  | SITE  
  | SHEET 

and grouping_clusterpdb_symbol =
  | ENDMDL
  | MODEL 
  | TER   

and other_clusterpdb_symbol =
  | JRNL  
  | REMARK
;;
(** A cluster is a string of 80 characters typed according to its PDB Keyword. *)
(** Any cluster [clusterpdb] of a PDB file contains a string of 80 characters. *)

