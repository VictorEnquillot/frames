(** {3 The functionalities for Symbol for a Globalset}  *)

let nam_cod = "Globalset_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Globalset_symbol_t.Chemicalset_symbol sym_che -> Chemicalset_symbol_v.name sym_che
  | Globalset_symbol_t.Figureset_symbol sym_fig -> Figureset_symbol_v.name sym_fig
  | Globalset_symbol_t.Generatorset_symbol sym_gen -> Generatorset_symbol_v.name sym_gen
  | Globalset_symbol_t.Musicset_symbol sym_mus -> Musicset_symbol_v.name sym_mus
;;

let string_off = function
  | Globalset_symbol_t.Chemicalset_symbol sym_che -> Chemicalset_symbol_v.string_off sym_che
  | Globalset_symbol_t.Figureset_symbol sym_fig -> Figureset_symbol_v.string_off sym_fig
  | Globalset_symbol_t.Generatorset_symbol sym_gen -> Generatorset_symbol_v.string_off sym_gen
  | Globalset_symbol_t.Musicset_symbol sym_mus -> Musicset_symbol_v.string_off sym_mus
;;

let typename = function
  | Globalset_symbol_t.Chemicalset_symbol _ -> "chemicalset_symbol"
  | Globalset_symbol_t.Figureset_symbol _ -> "figureset_symbol"
  | Globalset_symbol_t.Generatorset_symbol _ -> "generatorset_symbol"
  | Globalset_symbol_t.Musicset_symbol _ -> "musicset_symbol"
;;

let longname sym_dos =
  Format.sprintf "%s_t.%s" (String.capitalize (typename sym_dos)) (String.capitalize (name sym_dos))
;;

let fullname sym_dos =
  Format.sprintf "%s \"%s\"" (longname sym_dos) (string_off sym_dos)
;;

(** {6 Upgrading} *)

let globalset_symbol_of_chemicalset_symbol sym_che = 
  Globalset_symbol_t.Chemicalset_symbol sym_che
;; 

let globalset_symbol_of_generatorset_symbol sym_che = 
  Globalset_symbol_t.Generatorset_symbol sym_che
;; 

let globalset_symbol_of_figureset_symbol sym_che = 
  Globalset_symbol_t.Figureset_symbol sym_che
;; 

let globalset_symbol_of_musicset_symbol sym_mus = 
  Globalset_symbol_t.Musicset_symbol sym_mus
;; 

(** {6 Extracting topsons} *)

let chemicalset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Chemicalset_symbol gss -> gss
  | _ -> failwith "chemicalset_symbol_off_globalset_symbol"
;;

let figureset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Figureset_symbol gss -> gss
  | _ -> failwith "figureset_symbol_off_globalset_symbol"
;;

let generatorset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Generatorset_symbol gss -> gss
  | _ -> failwith "generatorset_symbol_off_globalset_symbol"
;;

let musicset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Musicset_symbol gss -> gss
  | _ -> failwith "musicset_symbol_off_globalset_symbol"
;;

(** {6 Querying} *)

let is_chemicalset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Chemicalset_symbol _ -> true
  | _ -> false
;;

let is_figureset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Figureset_symbol _ -> true
  | _ -> false
;;

let is_generatorset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Generatorset_symbol _ -> true
  | _ -> false
;;

let is_musicset_symbol_off_globalset_symbol = function
  | Globalset_symbol_t.Musicset_symbol _ -> true
  | _ -> false
;;

(** {6 Making_for_symbol} *)

let make nam = 
  Utilities_v.not_yet_implemented nam_cod "make"
;;

(** {6 Listing} *)

let globalset_symbol_list str =  (* alphabetic *)
  let sym_che_l = Chemicalset_symbol_v.chemicalset_symbol_list str in
  let sym_fig_l = Figureset_symbol_v.figureset_symbol_list str in
  let sym_gen_l = Generatorset_symbol_v.generatorset_symbol_list str in
  let sym_mus_l = Musicset_symbol_v.musicset_symbol_list str in
  
  (List.map globalset_symbol_of_chemicalset_symbol sym_che_l)
  @
    (List.map globalset_symbol_of_figureset_symbol sym_fig_l)
  @
    (List.map globalset_symbol_of_generatorset_symbol sym_gen_l)
  @
    (List.map globalset_symbol_of_musicset_symbol sym_mus_l)
      
;;

(** {6 Indexing} *)

let list_index_of_globalset_symbol sym_dos =
  1 + (List_v.index_of_element_of_list sym_dos (globalset_symbol_list ()))
;;

let globalset_index_of_globalset_name nam_dos =
  let sym_dos = make nam_dos in
  list_index_of_globalset_symbol sym_dos
;;

let abbreviation sym_dos =
  match sym_dos with
  | Globalset_symbol_t.Chemicalset_symbol _ -> "che"
  | Globalset_symbol_t.Figureset_symbol _ -> "geo"
  | Globalset_symbol_t.Generatorset_symbol _ -> "gen"
  | Globalset_symbol_t.Musicset_symbol _ -> "mus"
;;



