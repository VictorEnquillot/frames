(** {3 The Symbol for a Pack in Pdb File} *)


type packpdb_symbol = Recordpdb_symbol_t.recordpdb_symbol
;;
(** A Packpdb is a list of Recordpdb having 
    the same packpdb_keypdb
        same Symbol
        same Chain_id
    Pack are connected.
    Clusters are disconnected.
*)
