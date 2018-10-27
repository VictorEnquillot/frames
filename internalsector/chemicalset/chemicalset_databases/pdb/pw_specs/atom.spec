  Documentation: http://msdlocal.ebi.ac.uk/docs/pdb_format/y_atom.html#_Toc00060

COLUMNS        DATA TYPE       FIELD         DEFINITION
--------------------------------------------------------------
 1 -  6        Record name     "ATOM  "
 7 - 11        Integer         serial        Atom serial number.
12 - 12        Integer         h_index       H Atom index in a methyl or methylene.
13 - 15        Atom            name          Atom name.
16 - 16        Index           edge_index    Number of branch (edge) after a fork.
17 - 17        Character       altLoc        Alternate location indicator.
18 - 20        Residue name    resName       Residue name.
22 - 22        Character       chainID       Chain identifier.
23 - 26        Integer         resSeq        Residue sequence number.
27 - 27        AChar           iCode         Code for insertion of residues.
31 - 38        Float(8.3)      x             Orthogonal coordinates for X in
                                             Angstroms.
39 - 46        Float(8.3)      y             Orthogonal coordinates for Y in
                                             Angstroms.
47 - 54        Float(8.3)      z             Orthogonal coordinates for Z in
                                             Angstroms.
55 - 60        Float(6.2)      occupancy     Occupancy.
61 - 66        Float(6.2)      tempFactor    Temperature factor.
73 - 76        LString(4)      segID         Segment identifier, left-justified.
77 - 78        LString(2)      element       Element symbol, right-justified.
79 - 80        LString(2)      charge        Charge on the atom.
