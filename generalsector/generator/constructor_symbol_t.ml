(** {3 The Symbol for a Constructor of a Caml code for Frames}  *)

(** {6 Modules.} *)

module Exs_t = Entity_external_symbol_t
module Ens_t = Entity_symbol_t

(** {6 Typing.} *)

type constructor_symbol = 
  | Constructor_proper_symbol of constructor_proper_symbol
  | Constructor_fictive_symbol of constructor_fictive_symbol

and constructor_proper_symbol =
  | Constructor_several_symbol of Ens_t.entity_local_symbol
  | Constructor_oneline_symbol of constructor_oneline_symbol

and constructor_oneline_symbol =
  | Constructor_external_symbol of constructor_external_symbol 
  | Constructor_proper_datastructure_symbol of constructor_proper_datastructure_symbol
  | Constructor_nodeoneline_symbol of Ens_t.entity_local_symbol  (* e.g. : atom_fivetied *)

and constructor_external_symbol = Exs_t.entity_external_symbol 

and constructor_proper_datastructure_symbol =
  | Constructor_proper_doublet_symbol of Ens_t.entity_proper_datastructure_symbol (* aggregate *)
  | Constructor_proper_triplet_symbol of Ens_t.entity_proper_datastructure_symbol 
  | Constructor_proper_tree_symbol of Ens_t.entity_proper_datastructure_symbol 

and constructor_fictive_symbol =
  | Constructor_bare_symbol of Ens_t.entity_bare_symbol (* O_c *)
  | Constructor_barebasic_symbol of Ens_t.entity_barebasic_symbol (* string *)
;;
(** 
     
                  ------------ constructor -----------
                 /                                    \
              proper                                fictive (no file) 
             /     \                                  /        \
       several     oneline                       barebasic     bare  
                   /|\                            (string)     (h_s)  
                  / | external (error_messages, doublet)
                 /  nodeoneline (* atom_fivetied *)
    proper_datastructure (aggregate; polyglycine)                                 
      /    |    \                                      
  doublet triplet tree  
              

  A pure constructor has never its own module nor constructors file.

  lines | Constructor file has several lines | Constructor in Caml 
  ------------------------------------------------------------------------
   >1     chose                      -> | Chose_symbol of Chs_t.chose_symbol
   >1     string                     -> | String
   >1     seul                       -> | Seul (bare)
   >1     Frompdbid string           -> | Frompdbid of string 


 Datastructure 
    aggregate           <---- entity ( one ( datastructure_one
        doublet         <---- pure_constructor (node_pure (datastructure
     string    integer  <---- pure_constructor (leaf_pure (basicbare

    1 "doublet a b"      -> | Doublet of (As_t.a, Bs_t.b) Dbt_t.doublet 
    1 "triplet a b c"    -> | Triplet of (As_t.a, Bs_t.b, Cs_t.c) Trp_t.triplet 
    1 "tree chose"       -> | Tree of (Chs_t.chose Tre_t.tree) 
  
    1 
            
  type atom_fivetied =
                                    | Cl_5s
---- not yet
   >1 truc string                -> | Truc_symbol 
   >1 truc chose                 -> | Truc_symbol of Chs_t.chose_symbol
----
*)
