(** {3 The Symbols used in Pdb for Atoms.} *)

(* egrep -h '^ATOM ' $PDB/*.pdb | cut -b 13-16 | sort -u | sed -e 's/^/   | /'  -e 's/|  /| /' > atompdb_symbols *)

type atompdb_symbol =
  | C  
  | C1p
  | C2 
  | C2p
  | C3p
  | C4 
  | C4p
  | C5 
  | C5p
  | C6 
  | C7 
  | C8 
  | CA 
  | CB 
  | CD 
  | CD1
  | CD2
  | CE 
  | CE1
  | CE2
  | CE3
  | CG 
  | CG1
  | CG2
  | CH2
  | CZ 
  | CZ2
  | CZ3
  | H  
  | H1 
  | H2 
  | H3 
  | HA 
  | HA2
  | HA3
  | HB 
  | HB1
  | HB2
  | HB3
  | HD1
  | HD11
  | HD12
  | HD13
  | HD2
  | HD21
  | HD22
  | HD23
  | HD3
  | HE 
  | HE1
  | HE2
  | HE21
  | HE22
  | HE3
  | HG 
  | HG1
  | HG11
  | HG12
  | HG13
  | HG2
  | HG21
  | HG22
  | HG23
  | HG3
  | HH 
  | HH11
  | HH12
  | HH21
  | HH22
  | HZ 
  | HZ1
  | HZ2
  | HZ3
  | N  
  | N1 
  | N2 
  | N3 
  | N4 
  | N6 
  | N7 
  | N9 
  | ND1
  | ND2
  | NE 
  | NE1
  | NE2
  | NH1
  | NH2
  | NZ 
  | O  
  | O2 
  | O2p
  | O3p
  | O4 
  | O4p
  | O5p
  | O6 
  | OD1
  | OD2
  | OE1
  | OE2
  | OG 
  | OG1
  | OH 
  | OP1
  | OP2
  | OXT
  | P  
  | SD 
  | SG 
;;