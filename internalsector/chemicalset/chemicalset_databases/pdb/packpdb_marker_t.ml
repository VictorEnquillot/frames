(** {3 The Marker for a Pack in Pdb File} *)


type packpdb_markerpdb = (Packpdb_symbol_t.packpdb_symbol, char list) Doublet_t.doublet
;;
(** The char list is generally reduced to e
    or is composed of Chainid character
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
