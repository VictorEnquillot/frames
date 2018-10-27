(** {3 The Keypdb for a Record in Pdb File} *)


type recordpdb_keypdb = (Recordpdb_symbol_t.recordpdb_symbol, (char list)) Doublet_t.doublet
;;
(** The char list is generally reduced to empty list
    or is a Chainid character list
    ANISOU [char]
    ATOM [char]
    DBREF1 [char]
    DBREF2 [char]
    DBREF [char]
    HELIX [char]
    HETATM [char]
    HET [char]
    MODRES [char]
    SEQADV [char]
    SEQRES [char]
    TER [char]
    SHEET [char ]
    CISPEP [char; char]
    LINK [char; char]
    SSBOND [char; char]
    SITE [char; char; char; char]
*)
