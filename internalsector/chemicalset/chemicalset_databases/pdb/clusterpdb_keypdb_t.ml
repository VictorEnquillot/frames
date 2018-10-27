(** {3 The Keypdb for a Cluster in Pdb File} *)


type clusterpdb_keypdb = (Clusterpdb_symbol_t.clusterpdb_symbol, Entrypdb_symbol_t.entrypdb_symbol) Doublet_t.doublet
;;
(** These Keys are not unique : several Cluster may share the same Key
    For example : ATOM in a dimer.

    As a consequence they cannot be stored in a Hash. *)
