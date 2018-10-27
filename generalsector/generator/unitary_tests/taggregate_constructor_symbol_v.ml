open Gentest_v;;

testing "Aggregate constructor_symbol_v";;

(* toplevel 
   #use "taggregate_constructor_symbol_v.ml";; 
 *)

module Cns_t = Constructor_symbol_t
module Cns_v = Constructor_symbol_v
module Cst_v = Constructor_symbol_tree_v
module Cstp_v = Constructor_symbol_tree_provider_v
module End_v = Entity_data_v
module Ens_v = Entity_symbol_v
module Est_v = Entity_symbol_tree_v
module Edp_v = Entity_data_provider_v

let nam_ent = "aggregate";;
let smb_ent = Ens_v.make nam_ent;;
let dat_ent = Edp_v.provide nam_ent;;
let smb_cnt = Cns_v.make smb_ent;;
let nam_ent_t = End_v.string_tree_of_entityname nam_ent;;

let smb_ent_t = Est_v.make smb_ent;;
let smb_cnt_t = Cstp_v.provide smb_cnt;;
let smb_cnt_ts_l = Cst_v.topson_constructor_symbol_list_of_constructor_symbol smb_cnt;;
let smb_cnt_as_l = Cst_v.anyson_constructor_symbol_list_of_constructor_symbol smb_cnt;;

testi 0 (
 smb_cnt
(* : Constructor_symbol_t.constructor_symbol *)
  =
Constructor_symbol_t.Constructor_proper_symbol
 (Constructor_symbol_t.Constructor_oneline_symbol
   (Constructor_symbol_t.Constructor_proper_datastructure_symbol
     (Constructor_symbol_t.Constructor_proper_doublet_symbol "aggregate")))
);;

testi 1 (
Ens_v.is_datastructure_off_entity_symbol smb_ent
);;

testi 2 (
dat_ent 
(* : string list *)
= 
["doublet string ordinal"]
);;

testi 3 (
Cst_v.contructorson_symbol_list_of_entity_proper_datastructure_symbol nam_ent
=
[Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_barebasic_symbol
    Constructor_symbol_t.Ens_t.String);
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_type_symbol
        Constructor_symbol_t.Exs_t.Ordinal)))]

);;

testi 4 (
nam_ent_t 
(* : string Tree_t.tree *)
=
  Tree_t.Node ("aggregate", 
	       [Tree_t.Leaf "doublet string ordinal"])
);;

testi 5 (
smb_ent_t 
(* : Entity_symbol_t.entity_symbol Tree_t.tree *)
=
Tree_t.Leaf
 (Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper_datastructure_symbol "aggregate"))
);;

testi 6 (
smb_cnt_t
(* : Cstp_v.Cst_t.constructor_symbol_tree *) 
=
Cstp_v.Cst_t.Tre_t.Inner
 (Cstp_v.Cst_t.Cns_t.Constructor_proper_symbol
   (Cstp_v.Cst_t.Cns_t.Constructor_oneline_symbol
     (Cstp_v.Cst_t.Cns_t.Constructor_proper_datastructure_symbol
       (Cstp_v.Cst_t.Cns_t.Constructor_proper_doublet_symbol "aggregate"))),
 [Cstp_v.Cst_t.Tre_t.Inner
   (Cstp_v.Cst_t.Cns_t.Constructor_proper_symbol
     (Cstp_v.Cst_t.Cns_t.Constructor_oneline_symbol
       (Cstp_v.Cst_t.Cns_t.Constructor_external_symbol
         (Cstp_v.Cst_t.Cns_t.Exs_t.Entity_external_datastructure_symbol
           Cstp_v.Cst_t.Cns_t.Exs_t.Doublet))),
   [Cstp_v.Cst_t.Tre_t.Leaf
     (Cstp_v.Cst_t.Cns_t.Constructor_fictive_symbol
       (Cstp_v.Cst_t.Cns_t.Constructor_barebasic_symbol
         Cstp_v.Cst_t.Cns_t.Ens_t.String));
    Cstp_v.Cst_t.Tre_t.Leaf
     (Cstp_v.Cst_t.Cns_t.Constructor_proper_symbol
       (Cstp_v.Cst_t.Cns_t.Constructor_oneline_symbol
         (Cstp_v.Cst_t.Cns_t.Constructor_external_symbol
           (Cstp_v.Cst_t.Cns_t.Exs_t.Entity_external_type_symbol
             Cstp_v.Cst_t.Cns_t.Exs_t.Ordinal))))])])
);;

testi 7 (
smb_cnt_ts_l
(* : Constructor_symbol_t.constructor_symbol list *)
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_datastructure_symbol
        Constructor_symbol_t.Exs_t.Doublet)))]
);;

testi 8 (
smb_cnt_as_l
=
[Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_datastructure_symbol
        Constructor_symbol_t.Exs_t.Doublet)));
 Constructor_symbol_t.Constructor_fictive_symbol
  (Constructor_symbol_t.Constructor_barebasic_symbol
    Constructor_symbol_t.Ens_t.String);
 Constructor_symbol_t.Constructor_proper_symbol
  (Constructor_symbol_t.Constructor_oneline_symbol
    (Constructor_symbol_t.Constructor_external_symbol
      (Constructor_symbol_t.Exs_t.Entity_external_type_symbol
        Constructor_symbol_t.Exs_t.Ordinal)))]
);;
