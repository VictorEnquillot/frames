(** {3 The functionalities for a Symbol for a Constructor.}  *)

let nam_cod = "constructor_symbol_v.ml";;

(** {6 Modules.} *)

module Cns_t = Constructor_symbol_t
module Erm_v = Error_messages_v
module Edp_v = Entity_data_provider_v
module End_v = Entity_data_v
module Ens_t = Entity_symbol_t
module Ens_v = Entity_symbol_v
module Exs_v = Entity_external_symbol_v
module Idx_p = Index_p
module Lst_v = List_v
module Str_v = String_v

(** {6 Displaying.} *)

let name_constructor_proper_datastructure_symbol = function
  | Cns_t.Constructor_proper_doublet_symbol str -> String.uncapitalize str
  | Cns_t.Constructor_proper_triplet_symbol str -> String.uncapitalize str
  | Cns_t.Constructor_proper_tree_symbol str -> String.uncapitalize str
;;

let name_constructor_fictive_symbol = function
  | Cns_t.Constructor_bare_symbol smb_eba ->
      Ens_v.name_of_entity_bare_symbol smb_eba
  | Cns_t.Constructor_barebasic_symbol smb_ebb -> 
      Ens_v.name_of_entity_barebasic_symbol smb_ebb
;;

let name_constructor_oneline_symbol = function
  | Cns_t.Constructor_proper_datastructure_symbol smb_dnc ->
      name_constructor_proper_datastructure_symbol smb_dnc

  | Cns_t.Constructor_external_symbol smb_enr ->
      Exs_v.name smb_enr

  | Cns_t.Constructor_nodeoneline_symbol smb_enl -> 
      Ens_v.name_of_entity_local_symbol smb_enl
;;

let name_constructor_proper_symbol = function
  | Cns_t.Constructor_several_symbol str -> String.uncapitalize str
  | Cns_t.Constructor_oneline_symbol smb_snc ->
      name_constructor_oneline_symbol smb_snc
;;

let name = function
  | Cns_t.Constructor_proper_symbol smb_ecn ->
      name_constructor_proper_symbol smb_ecn
  | Cns_t.Constructor_fictive_symbol smb_pcn ->
      name_constructor_fictive_symbol smb_pcn
;;

let name_capitalized smb_cnt =
  String.capitalize (name smb_cnt)
;;

let key smb_cnt =
  Key_v.make "constructor" (name smb_cnt)
;;

(** {6 Querying off Entity.} *)

let is_constructor_proper_datastructure_symbol_off_entity_proper_symbol = function
  | Ens_t.Entity_proper_datastructure_symbol _ -> true
  | _ -> false
;;

let is_constructor_several_symbol_off_entity_local_symbol smb_enl =
  let nam_ent = smb_enl in
  let cnt_son = End_v.count_son_of_entityname nam_ent in
  Idx_p.int_of_index cnt_son > 1
;;

let is_constructor_oneline_symbol_off_entity_local_symbol smb_enl =
  let nam_ent = smb_enl in
  let cnt_son = End_v.count_son_of_entityname nam_ent in
  Idx_p.int_of_index cnt_son = 1
;;

let is_constructor_nodeoneline_symbol_off_entity_proper_symbol smb_epr =
  not (is_constructor_proper_datastructure_symbol_off_entity_proper_symbol smb_epr)
;;

let is_constructor_barebasic_symbol_off_entity_fictive_symbol smb_enf =
  Ens_v.is_entity_barebasic_symbol_off_entity_fictive_symbol smb_enf
;;

let is_constructor_bare_symbol_off_entity_fictive_symbol smb_enf =
  Ens_v.is_entity_bare_symbol_off_entity_fictive_symbol smb_enf
;;

(** {6 Upgrading.} *)

let constructor_symbol_of_constructor_proper_symbol smb_cpr =
  Cns_t.Constructor_proper_symbol smb_cpr
;;

let constructor_symbol_of_constructor_fictive_symbol smb_cfv =
  Cns_t.Constructor_fictive_symbol smb_cfv
;;

let constructor_proper_symbol_of_constructor_oneline_symbol smb_col =
  Cns_t.Constructor_oneline_symbol smb_col
;;

let constructor_symbol_of_constructor_oneline_symbol smb_col =
  let smb_cpr = 
    constructor_proper_symbol_of_constructor_oneline_symbol smb_col 
  in
  constructor_symbol_of_constructor_proper_symbol smb_cpr
;;

let constructor_oneline_symbol_of_constructor_proper_datastructure_symbol smb_cds =
  Cns_t.Constructor_proper_datastructure_symbol smb_cds
;;

let constructor_oneline_symbol_of_constructor_external_symbol smb_cnr =
  Cns_t.Constructor_external_symbol smb_cnr
;;

let constructor_symbol_of_constructor_proper_symbol smb_ncn =
  Cns_t.Constructor_proper_symbol smb_ncn
;;

let constructor_oneline_symbol_of_constructor_oneline_basicnamed_symbol smb_bnc =
  Cns_t.Constructor_external_symbol smb_bnc
;;

let constructor_fictive_symbol_of_constructor_bare_symbol str =
  Cns_t.Constructor_bare_symbol str
;;

let constructor_proper_symbol_of_constructor_oneline_symbol smb_onc =
  Cns_t.Constructor_oneline_symbol smb_onc
;;

let constructor_symbol_of_constructor_proper_datastructure_symbol smb_cds =
  let smb_col = 
    constructor_oneline_symbol_of_constructor_proper_datastructure_symbol smb_cds 
  in
  constructor_symbol_of_constructor_oneline_symbol smb_col
;;

let constructor_symbol_of_constructor_external_symbol smb_cnr =
  let smb_col = 
    constructor_oneline_symbol_of_constructor_external_symbol smb_cnr 
  in
  constructor_symbol_of_constructor_oneline_symbol smb_col
;;

(** {6 Making of Entity.} *)

let constructor_fictive_symbol_of_entity_fictive_symbol smb_enf =
  Cns_t.Constructor_barebasic_symbol smb_enf
;;

let constructor_proper_datastructure_symbol_of_entity_proper_datastructure_symbol smb_end =
  let kind = End_v.datastructure_kind_of_entityname smb_end in
  match kind with 
  | "doublet" -> Cns_t.Constructor_proper_doublet_symbol smb_end
  | "triplet" -> Cns_t.Constructor_proper_triplet_symbol smb_end
  | "tree" -> Cns_t.Constructor_proper_tree_symbol smb_end
  | _ -> Erm_v.print_fatal_error nam_cod 
	"constructor_proper_datastructure_symbol_of_entity_local_symbol" 
	"doublet|triplet|tree" smb_end "check"
;;

let constructor_oneline_symbol_of_entity_external_symbol smb_enr =
  Cns_t.Constructor_external_symbol smb_enr
;;

let constructor_proper_symbol_of_entity_proper_symbol = function
  | Ens_t.Entity_proper_datastructure_symbol smb_end ->
      Cns_t.Constructor_oneline_symbol
	(Cns_t.Constructor_proper_datastructure_symbol 
	   (constructor_proper_datastructure_symbol_of_entity_proper_datastructure_symbol smb_end))

  | Ens_t.Entity_local_symbol smb_enl ->
      if (is_constructor_several_symbol_off_entity_local_symbol smb_enl)
      then Cns_t.Constructor_several_symbol smb_enl
      else
	if (is_constructor_oneline_symbol_off_entity_local_symbol smb_enl)
	then (Cns_t.Constructor_oneline_symbol 
		(Cns_t.Constructor_nodeoneline_symbol smb_enl))
	else Erm_v.print_fatal_error nam_cod
	    "constructor_proper_symbol_of_entity_proper_symbol "
	    "entity with some module file" smb_enl "check code"
;;

let constructor_symbol_of_entity_proper_symbol smb_enp =
  Cns_t.Constructor_proper_symbol
    (constructor_proper_symbol_of_entity_proper_symbol smb_enp)
;;

let constructor_fictive_symbol_of_entity_fictive_symbol = function
  | Ens_t.Entity_bare_symbol smb_eba ->
	(Cns_t.Constructor_bare_symbol smb_eba)	

  | Ens_t.Entity_barebasic_symbol smb_ebb ->
	(Cns_t.Constructor_barebasic_symbol smb_ebb)	
;;

let constructor_symbol_of_entity_fictive_symbol smb_enf =
  let smb_cfv = 
    constructor_fictive_symbol_of_entity_fictive_symbol smb_enf 
  in
  Cns_t.Constructor_fictive_symbol smb_cfv
;;

let make = function  
  | Ens_t.Entity_fictive_symbol smb_enf -> 
      constructor_symbol_of_entity_fictive_symbol smb_enf 

  | Ens_t.Entity_proper_symbol smb_enp -> 
      constructor_symbol_of_entity_proper_symbol smb_enp

  | Ens_t.Entity_external_symbol smb_enr ->
      Cns_t.Constructor_proper_symbol
	(Cns_t.Constructor_oneline_symbol
	   (Cns_t.Constructor_external_symbol smb_enr))
;;

let constructor_symbol_of_entityname nam_ent =
  let smb_ent = Ens_v.make nam_ent in
  make smb_ent
;;

(** {6 Extracting Entity.} *)

let entity_proper_symbol_off_constructor_proper_datastructure_symbol = function
  | Cns_t.Constructor_proper_doublet_symbol smb_end
  | Cns_t.Constructor_proper_triplet_symbol smb_end
  | Cns_t.Constructor_proper_tree_symbol smb_end ->
      Ens_v.entity_proper_symbol_of_entity_proper_datastructure_symbol smb_end
;;

let entity_symbol_off_constructor_oneline_symbol = function
  | Cns_t.Constructor_proper_datastructure_symbol smb_cnd ->
      Ens_t.Entity_proper_symbol 
	(entity_proper_symbol_off_constructor_proper_datastructure_symbol smb_cnd)
	
  | Cns_t.Constructor_nodeoneline_symbol smb_enl ->
      Ens_t.Entity_proper_symbol 
	(Ens_v.entity_proper_symbol_of_entity_local_symbol smb_enl)
	
  | Cns_t.Constructor_external_symbol smb_enr ->
       Ens_t.Entity_external_symbol smb_enr
 ;;

let entity_symbol_off_constructor_proper_symbol = function
  | Cns_t.Constructor_several_symbol str -> 
      Ens_t.Entity_proper_symbol 
	(Ens_v.entity_proper_symbol_of_string str)

  | Cns_t.Constructor_oneline_symbol smb_ocn ->
      entity_symbol_off_constructor_oneline_symbol smb_ocn
;;

let entity_fictive_symbol_off_constructor_fictive_symbol = function
  | Cns_t.Constructor_bare_symbol smb_eba -> 
      Ens_t.Entity_bare_symbol smb_eba
  | Cns_t.Constructor_barebasic_symbol smb_ebb ->
      Ens_t.Entity_barebasic_symbol smb_ebb
;;

let entity_external_symbol_off_constructor_external_symbol smb_cnr =
  smb_cnr
;;

let entity_symbol_off_constructor_symbol = function
  | Cns_t.Constructor_proper_symbol smb_cpr -> 
      entity_symbol_off_constructor_proper_symbol smb_cpr 

  | Cns_t.Constructor_fictive_symbol smb_cfv ->
      let smb_enf =
	entity_fictive_symbol_off_constructor_fictive_symbol smb_cfv 
      in
      Ens_v.entity_symbol_of_entity_fictive_symbol smb_enf
;;

(** {6 Extracting Constructor.} *)

let constructor_fictive_symbol_off_constructor_symbol = function
  | Cns_t.Constructor_fictive_symbol smb_cfv -> smb_cfv
  | _ -> failwith "Not_constructor_proper_symbol:Cns_v.constructor_proper_symbol_off_constructor_symbol"
;;

let constructor_proper_symbol_off_constructor_symbol = function
  | Cns_t.Constructor_proper_symbol smb_cpr -> smb_cpr
  | _ -> failwith "Not_constructor_proper_symbol:Cns_v.constructor_proper_symbol_off_constructor_symbol"
;;

let constructor_oneline_symbol_off_constructor_proper_symbol = function
  | Cns_t.Constructor_oneline_symbol smb_cfv -> smb_cfv
  | _ -> failwith "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_proper_symbol"
;;

let constructor_oneline_symbol_off_constructor_symbol smb_cnt =
  let smb_cnp = 
    try constructor_proper_symbol_off_constructor_symbol smb_cnt
    with Failure "Not_constructor_proper_symbol:Cns_v.constructor_proper_symbol_off_constructor_symbol" -> 
      failwith "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_symbol"
  in
  try constructor_oneline_symbol_off_constructor_proper_symbol smb_cnp 
  with Failure "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_proper_symbol" ->
    failwith "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_symbol"
;;

let constructor_external_symbol_off_constructor_oneline_symbol = function
  | Cns_t.Constructor_external_symbol smb_cnr -> smb_cnr
  | _ -> failwith "Not_constructor_external_symbol:Cns_v.constructor_external_symbol_off_constructor_oneline_symbol"
;;

let constructor_external_symbol_off_constructor_symbol smb_cnt =
  let smb_cnp = 
    try constructor_oneline_symbol_off_constructor_symbol smb_cnt
    with Failure "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_symbol" -> 
      failwith "Not_constructor_external_symbol:Cns_v.constructor_external_symbol_off_constructor_symbol"
  in
  try constructor_external_symbol_off_constructor_oneline_symbol smb_cnp 
  with Failure "Not_constructor_external_symbol:Cns_v.constructor_external_symbol_off_constructor_oneline_symbol" ->
    failwith "Not_constructor_external_symbol:Cns_v.constructor_external_symbol_off_constructor_symbol"
;;

let constructor_proper_datastructure_symbol_off_constructor_oneline_symbol = function
  | Cns_t.Constructor_proper_datastructure_symbol smb_cnr -> smb_cnr
  | _ -> failwith "Not_constructor_proper_datastructure_symbol:Cns_v.constructor_proper_datastructure_symbol_off_constructor_oneline_symbol"
;;

let constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt =
  let smb_cnp = 
    try constructor_oneline_symbol_off_constructor_symbol smb_cnt
    with Failure "Not_constructor_oneline_symbol:Cns_v.constructor_oneline_symbol_off_constructor_symbol" -> 
      failwith "Not_constructor_proper_datastructure_symbol:Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol"
  in
  try constructor_proper_datastructure_symbol_off_constructor_oneline_symbol smb_cnp 
  with Failure "Not_constructor_proper_datastructure_symbol:Cns_v.constructor_proper_datastructure_symbol_off_constructor_oneline_symbol" ->
    failwith "Not_constructor_proper_datastructure_symbol:Cns_v.constructor_proper_datastructure_symbol_off_constructor_symbol"
;;


(** {6 Querying.} *)

let is_constructor_fictive_symbol_off_constructor_symbol = function
  | Cns_t.Constructor_fictive_symbol _ -> true
  | _ -> false
;;

let is_constructor_barebasic_symbol_off_constructor_fictive_symbol = function
  | Cns_t.Constructor_barebasic_symbol _ -> true
  | _ -> false
;;

let is_constructor_barebasic_symbol_off_constructor_symbol smb_cnt = 
  if not (is_constructor_fictive_symbol_off_constructor_symbol smb_cnt)
  then false
  else
    begin
      let smb_cnf = constructor_fictive_symbol_off_constructor_symbol smb_cnt in
      (is_constructor_barebasic_symbol_off_constructor_fictive_symbol smb_cnf)
    end
;;

let is_constructor_proper_symbol_off_constructor_symbol = function
  | Cns_t.Constructor_proper_symbol _ -> true
  | _ -> false
;;

let is_constructor_oneline_symbol_off_constructor_proper_symbol = function
  | Cns_t.Constructor_oneline_symbol _ -> true
  | _ -> false
;;

let is_constructor_exterbnal_symbol_off_oneline_proper_symbol = function
  | Cns_t.Constructor_external_symbol _ -> true
  | _ -> false
;;

let is_constructor_oneline_symbol_off_constructor_symbol smb_cnt =
  if not (is_constructor_proper_symbol_off_constructor_symbol smb_cnt)
  then false
  else
    begin
      let smb_cnp = constructor_proper_symbol_off_constructor_symbol smb_cnt in
      (is_constructor_oneline_symbol_off_constructor_proper_symbol smb_cnp)
    end
;;

let is_constructor_proper_datastructure_symbol_off_constructor_oneline_symbol = function
  | Cns_t.Constructor_proper_datastructure_symbol _ -> true
  | _ -> false
;;

let is_constructor_proper_datastructure_symbol_off_constructor_symbol smb_cnt =
  if not (is_constructor_oneline_symbol_off_constructor_symbol smb_cnt)
  then false
  else
    begin
      let smb_cno = constructor_oneline_symbol_off_constructor_symbol smb_cnt in
      (is_constructor_proper_datastructure_symbol_off_constructor_oneline_symbol smb_cno)
    end
;;

let is_constructor_external_symbol_off_constructor_oneline_symbol = function
  | Cns_t.Constructor_external_symbol _ -> true
  | _ -> false
;;

let is_constructor_external_symbol_off_constructor_symbol smb_cnt =
  if not (is_constructor_oneline_symbol_off_constructor_symbol smb_cnt)
  then false
  else
    begin
      let smb_cno = constructor_oneline_symbol_off_constructor_symbol smb_cnt in
      (is_constructor_external_symbol_off_constructor_oneline_symbol smb_cno)
    end
;;

