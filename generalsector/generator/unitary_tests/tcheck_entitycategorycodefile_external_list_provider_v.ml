open Gentest_v;;

testing "Entity_external_n_codefile_list_provider_v";;

(* toplevel 
   #use "tentity_external_n_codefile_list_provider_v.ml";;
 *)

let nam_cod = "tentity_external_n_codefile_list_provider_v.ml";;

module Ecmxlp_v = Entity_external_n_codefile_list_provider_v
module Ecm_t = Entitycategorycodefile_t
module Ecm_v = Entitycategorycodefile_v
module Fln_v = Filename_p
module Fio_v = Fileio_v
module Reg_t = Register_t
module Reg_v = Register_v
module Str_v = String_v
module Dbt_v = Doublet_v
module Dbl_v = Doublet_list_v

let ecp_atm = Ecm_v.entitycategorycodefile_proper_of_string_of_string_of_string "atom" "symbol" "implementation";;

let ecp_agg = Ecm_v.entitycategorycodefile_proper_of_string_of_string_of_string "aggregate" "symbol" "implementation";;
(*
let fln = Filename_p.filename "entitycategorycodefile_external.dat";;
let str_l = List.sort String.compare (Fio_v.string_list_of_filename fln);;

let ecx_l_by_ecm : 
    (Ecm_t.entitycategorycodefile_proper, 
     Ecm_t.entitycategorycodefile_external list) 
    Reg_t.register = Reg_v.make 137;;

let store ecm_ppr ecx_l =
  try Reg_v.store ecx_l_by_ecm ecm_ppr ecx_l;
    Format.fprintf Format.err_formatter 
      "Storing key >%s<\
      @.with value >%s<@."
    (Ecm_v.name_of_entitycategorycodefile_proper ecm_ppr)
    (List_v.name_with_separator Ecm_v.name_of_entitycategorycodefile_external "; " ecx_l);

  with Failure ("Already_stored:Reg_v.store") ->
    Format.fprintf Format.err_formatter 
      "Already stored key >%s<\
       @.key list is:@.\
     %s@."
    (Ecm_v.name_of_entitycategorycodefile_proper ecm_ppr)
(List_v.name_with_separator Ecm_v.name_of_entitycategorycodefile_proper "; "
(Reg_v.key_list ecx_l_by_ecm)) ;
    assert (false)
;;

let ecp_n_ecx_l = (* [(ecp, ecx); ...] *)
  List.map 
    Ecmxlp_v.entitycategorycodefile_n_entitycategorycodefile_external_of_string 
    str_l
;;
    
let dbl = ecp_n_ecx_l;;

let or_l =  (* once right list *)
    List.rev (List_v.once_list_of_list (fst (List.split dbl)));;

let ll =  
    List.map (fun e -> 
      Dbl_v.doublet_left_once_list_of_left_off_doublet_list e dbl) or_l ;;

let r_l = List.map Dbl_v.first_left_n_right_list_of_doublet_list ll;;

let ecp_n_ecxl_l = 
  Dbl_v.once_left_n_right_list_list_of_doublet_list
    ecp_n_ecx_l
;;

let result = List.iter 
    (fun (e, x_l) -> store e x_l) 
    ecp_n_ecxl_l
;;
 
testi 0 (
str_l 
(* : String.t list *)
=
["atom             symbol implementation error_messages interface";
 "chemicalset      symbol implementation messages       implementation";
 "molecule_polymer symbol implementation doublet        type";
 "polyglycine      symbol implementation triplet        implementation";
 "polyproline      symbol implementation tree           interface"]
);;

testi 1 (
 ecp_n_ecx_l 
(* :
  (Entitycategorycodefile_t.entitycategorycodefile_proper,
   Entitycategorycodefile_t.entitycategorycodefile_external)
  Doublet_t.doublet list *)
=
  [((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),

    (Entitycategorycodefile_t.Ens_t.Exs_t.Error_messages,
     Entitycategorycodefile_t.Cfs_t.Interface_symbol));

   ((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "chemicalset",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),

    (Entitycategorycodefile_t.Ens_t.Exs_t.Messages,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol));

   ((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "molecule_polymer",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),

    (Entitycategorycodefile_t.Ens_t.Exs_t.Doublet,
     Entitycategorycodefile_t.Cfs_t.Type_symbol));

   ((Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),

    (Entitycategorycodefile_t.Ens_t.Exs_t.Triplet,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol));

   ((Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "polyproline",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),

    (Entitycategorycodefile_t.Ens_t.Exs_t.Tree,
     Entitycategorycodefile_t.Cfs_t.Interface_symbol))]
);;

testi 2 (
ecp_n_ecxl_l

(*: Entitycategorycodefile_t.entitycategorycodefile_proper *
   Entitycategorycodefile_t.entitycategorycodefile_external list)
  list *)
=
  [((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),
    [(Entitycategorycodefile_t.Ens_t.Exs_t.Error_messages,
      Entitycategorycodefile_t.Cfs_t.Interface_symbol)]);

   ((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "chemicalset",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),
    [(Entitycategorycodefile_t.Ens_t.Exs_t.Messages,
      Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]);

   ((Entitycategorycodefile_t.Ens_t.Entity_local_symbol "molecule_polymer",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),
    [(Entitycategorycodefile_t.Ens_t.Exs_t.Doublet,
      Entitycategorycodefile_t.Cfs_t.Type_symbol)]);

   ((Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),
    [(Entitycategorycodefile_t.Ens_t.Exs_t.Triplet,
      Entitycategorycodefile_t.Cfs_t.Implementation_symbol)]);

   ((Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "polyproline",
     Entitycategorycodefile_t.Cts_t.Symbol_symbol,
     Entitycategorycodefile_t.Cfs_t.Implementation_symbol),
    [(Entitycategorycodefile_t.Ens_t.Exs_t.Tree,
      Entitycategorycodefile_t.Cfs_t.Interface_symbol)])]
);;
(**************
testi 3 (
ecp_atm 
(* : Entitycategorycodefile_t.entitycategorycodefile_proper *)
 =
  (Entitycategorycodefile_t.Ens_t.Entity_local_symbol "atom",
   Entitycategorycodefile_t.Cts_t.Symbol_symbol,
   Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;

testi 4 (
ecp_agg 
(* : Entitycategorycodefile_t.entitycategorycodefile_proper *)
=
(Entitycategorycodefile_t.Ens_t.Entity_proper_datastructure_symbol "aggregate",
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
);;
(*
testi 5 (
Ecmxlp_v.provide ecp_atm
(* : Ecmxlp_v.Ecm_t.entitycategorycodefile_external list *)
=
[(Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Error_messages,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet, 
  Ecmxlp_v.Ecm_t.Cfs_t.Type_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol)]
);;

testi 6 (
Ecmxlp_v.provide ecp_agg
(* : Ecmxlp_v.Ecm_t.entitycategorycodefile_external list *)
=
[(Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet, 
  Ecmxlp_v.Ecm_t.Cfs_t.Type_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Error_messages,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);
 (Ecmxlp_v.Ecm_t.Ens_t.Exs_t.Doublet,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol)]
);;
*)
testi 7 (
Reg_v.key_list ecx_l_by_ecm
(* : Ecmxlp_v.Ecm_t.entitycategorycodefile_proper list *)
=
[(Ecmxlp_v.Ecm_t.Ens_t.Entity_local_symbol "chemicalset",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_proper_datastructure_symbol "polyglycine",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_proper_datastructure_symbol "aggregate",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol, Ecmxlp_v.Ecm_t.Cfs_t.Type_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_local_symbol "molecule_polymer",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_proper_datastructure_symbol "polyproline",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_local_symbol "atom",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol);

 (Ecmxlp_v.Ecm_t.Ens_t.Entity_proper_datastructure_symbol "aggregate",
  Ecmxlp_v.Ecm_t.Cts_t.Symbol_symbol,
  Ecmxlp_v.Ecm_t.Cfs_t.Implementation_symbol)]
);;

testi 8 (
Reg_v.value_list ecx_l_by_ecm
=
[]
);;

testi 9 (
Reg_v.entry_list ecx_l_by_ecm
=
[]
);;
****************)
