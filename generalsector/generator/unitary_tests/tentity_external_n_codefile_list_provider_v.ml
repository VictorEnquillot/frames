open Gentest_v;;

testing "Entity_external_n_codefile_list_provider_v";;

(* toplevel 
   #use "tentity_external_n_codefile_list_provider_v.ml";;
 *)

let nam_cod = "tentity_external_n_codefile_list_provider_v.ml";;

module Dbl_v = Doublet_list_v
module Dbt_v = Doublet_v
module Ecc_t = Entitycategorycodefile_t
module Ecc_v = Entitycategorycodefile_v
module Exclp_v = Entity_external_n_codefile_list_provider_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Pas_v = Parameter_symbol_v
module Pav_t = Parameter_value_t
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v
module Reg_v = Register_v
module Str_v = String_v

let ecc_atm = Ecc_v.entitycategorycodefile_of_string_of_string_of_string "atom" "symbol" "implementation";;
let ecc_agg = Ecc_v.entitycategorycodefile_of_string_of_string_of_string "aggregate" "symbol" "type";;
let ecc_res = Ecc_v.entitycategorycodefile_of_string_of_string_of_string "residue" "symbol" "implementation";;

testi 0 (
Pvp_v.provide Pas_v.entity_external_n_codefile_list_file
(* : Pvp_v.Pav_t.parameter_value *)
=
Pvp_v.Pav_t.Filename_palue
  (Pvp_v.Pav_t.Fln_t.String "./entity_external_n_codefile_list.dat")
);;

testi 1 (
ecc_atm 
(* : Entitycategorycodefile_t.entitycategorycodefile_proper *)
 =
(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom"),
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 2 (
ecc_agg 
(* : Entitycategorycodefile_t.entitycategorycodefile_proper *)
=
(Entitycategorycodefile_t.Ens_t.Entity_proper_symbol
  (Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 3 (
Exclp_v.provide ecc_atm
(* : Exclp_v.Ecc_t.entitycategorycodefile_external list *)
=
[(Exclp_v.Ecc_t.Ens_t.Exs_t.Error_messages,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol);
 (Exclp_v.Ecc_t.Ens_t.Exs_t.Error_messages,
  Exclp_v.Ecc_t.Cfs_t.Interface_symbol)]
);;

testi 4 (
Exclp_v.provide ecc_agg
(* : Exclp_v.Ecc_t.entitycategorycodefile_external list *)
=
[(Entity_external_symbol_t.Doublet, Codefile_symbol_t.Type_symbol)]
);;


testi 5 (
Reg_v.key_list Exclp_v.entity_external_n_codefile_by_entitycategorycodefile
(* : Exclp_v.Ecc_t.entitycategorycodefile list *)
=
[(Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
   (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "atom"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol);

 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
   (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "molecule_polymer"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol, 
  Exclp_v.Ecc_t.Cfs_t.Type_symbol);

 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol, 
  Exclp_v.Ecc_t.Cfs_t.Type_symbol);
 
 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "chemicalset"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol);
 
 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "polyproline"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol);
 
 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol);
 
 (Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine"),
  Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
  Exclp_v.Ecc_t.Cfs_t.Implementation_symbol)]
);;

testi 6 (
Reg_v.value_list Exclp_v.entity_external_n_codefile_by_entitycategorycodefile
=
[
 [(Entity_symbol_t.Exs_t.Error_messages, Exclp_v.Cfs_t.Implementation_symbol);
  (Entity_symbol_t.Exs_t.Error_messages, Exclp_v.Cfs_t.Interface_symbol)];

 [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Type_symbol)];

 [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Type_symbol)];

 [(Entity_symbol_t.Exs_t.Messages, Exclp_v.Cfs_t.Implementation_symbol)];

 [(Entity_symbol_t.Exs_t.Tree, Exclp_v.Cfs_t.Interface_symbol)];
 [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Implementation_symbol);
  (Entity_symbol_t.Exs_t.Error_messages, Exclp_v.Cfs_t.Type_symbol)];

 [(Entity_symbol_t.Exs_t.Triplet, Exclp_v.Cfs_t.Implementation_symbol)]
]
);;

testi 7 (
Reg_v.entry_list Exclp_v.entity_external_n_codefile_by_entitycategorycodefile
=
[((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "atom"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
   Exclp_v.Ecc_t.Cfs_t.Implementation_symbol),
  [(Entity_symbol_t.Exs_t.Error_messages,
    Exclp_v.Cfs_t.Implementation_symbol);
   (Entity_symbol_t.Exs_t.Error_messages, Exclp_v.Cfs_t.Interface_symbol)]);
 ((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "molecule_polymer"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol, Exclp_v.Ecc_t.Cfs_t.Type_symbol),
  [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Type_symbol)]);

 ((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol, Exclp_v.Ecc_t.Cfs_t.Type_symbol),
  [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Type_symbol)]);

 ((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
     (Exclp_v.Ecc_t.Ens_t.Entity_local_symbol "chemicalset"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
   Exclp_v.Ecc_t.Cfs_t.Implementation_symbol),
  [(Entity_symbol_t.Exs_t.Messages, Exclp_v.Cfs_t.Implementation_symbol)]);
 
((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
     (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "polyproline"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
   Exclp_v.Ecc_t.Cfs_t.Implementation_symbol),
  [(Entity_symbol_t.Exs_t.Tree, Exclp_v.Cfs_t.Interface_symbol)]);
 ((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol

    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "aggregate"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
   Exclp_v.Ecc_t.Cfs_t.Implementation_symbol),
  [(Entity_symbol_t.Exs_t.Doublet, Exclp_v.Cfs_t.Implementation_symbol);
   (Entity_symbol_t.Exs_t.Error_messages, Exclp_v.Cfs_t.Type_symbol)]);

 ((Exclp_v.Ecc_t.Ens_t.Entity_proper_symbol
    (Exclp_v.Ecc_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine"),
   Exclp_v.Ecc_t.Cts_t.Symbol_symbol,
   Exclp_v.Ecc_t.Cfs_t.Implementation_symbol),
  [(Entity_symbol_t.Exs_t.Triplet, Exclp_v.Cfs_t.Implementation_symbol)])]
);;

