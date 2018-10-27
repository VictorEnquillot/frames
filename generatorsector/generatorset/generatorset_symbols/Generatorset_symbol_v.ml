(** {3 Generatorset_symbol_v}  *)

let nam_cod = "Generatorset_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Generatorset_symbol_t.Camlline_symbol s -> Camlline_symbol_v.name s
  | Generatorset_symbol_t.Camlparagraph_symbol s -> Camlparagraph_symbol_v.name s
  | Generatorset_symbol_t.Category_symbol s -> Category_symbol_v.name s
  | Generatorset_symbol_t.Contentfile_symbol s -> Contentfile_symbol_v.name s
  | Generatorset_symbol_t.Domain_symbol s -> Domain_symbol_v.name s
  | Generatorset_symbol_t.Entity_symbol s -> Entity_symbol_v.name s
  | Generatorset_symbol_t.Group_symbol s -> Group_symbol_v.name s
  | Generatorset_symbol_t.Item_symbol s -> Item_symbol_v.name s
  | Generatorset_symbol_t.Kind_symbol s -> Kind_symbol_v.name s
  | Generatorset_symbol_t.Section_symbol s -> Section_symbol_v.name s
  | Generatorset_symbol_t.Usagefile_symbol s -> Usagefile_symbol_v.name s
;;

let longname = function
  | Generatorset_symbol_t.Camlline_symbol s -> "Generatorset_symbol_t.Camlline_symbol_v"
  | Generatorset_symbol_t.Camlparagraph_symbol s -> "Camlparagraph_symbol_v.longname s"
  | Generatorset_symbol_t.Category_symbol s -> Category_symbol_v.longname s
  | Generatorset_symbol_t.Contentfile_symbol s -> Contentfile_symbol_v.longname s
  | Generatorset_symbol_t.Domain_symbol s -> Domain_symbol_v.longname s
  | Generatorset_symbol_t.Entity_symbol s -> Entity_symbol_v.longname s
  | Generatorset_symbol_t.Group_symbol s -> "Generatorset_symbol_t.Section_symbol_v"
  | Generatorset_symbol_t.Item_symbol s -> "Generatorset_symbol_t.Item_symbol_v"
  | Generatorset_symbol_t.Kind_symbol s -> Kind_symbol_v.longname s
  | Generatorset_symbol_t.Section_symbol s -> "Generatorset_symbol_t.Section_symbol"
  | Generatorset_symbol_t.Usagefile_symbol s -> "Generatorset_symbol_t.Usagefile_symbol"
;;

let string_off = function
  | Generatorset_symbol_t.Camlline_symbol s -> Camlline_symbol_v.string_off s
  | Generatorset_symbol_t.Camlparagraph_symbol s -> Camlparagraph_symbol_v.string_off s
  | Generatorset_symbol_t.Category_symbol s -> Category_symbol_v.string_off s
  | Generatorset_symbol_t.Contentfile_symbol s -> Contentfile_symbol_v.string_off s
  | Generatorset_symbol_t.Domain_symbol s -> Domain_symbol_v.string_off s
  | Generatorset_symbol_t.Entity_symbol s -> Entity_symbol_v.string_off s
  | Generatorset_symbol_t.Group_symbol s -> Group_symbol_v.string_off s
  | Generatorset_symbol_t.Item_symbol s -> Item_symbol_v.string_off s
  | Generatorset_symbol_t.Kind_symbol s -> Kind_symbol_v.string_off s
  | Generatorset_symbol_t.Section_symbol s -> Section_symbol_v.string_off s
   | Generatorset_symbol_t.Usagefile_symbol s -> Usagefile_symbol_v.string_off s
;;

let fullname sym_ges =
  Format.sprintf "%s \"%s\"" (longname sym_ges) (string_off sym_ges)
;;

(** {6 Ugrading} *)
(*
let generatorset_symbol_of_camlfile_symbol sym_caf =
  Generatorset_symbol_t.Camlfile_symbol sym_caf
;;
*)
let generatorset_symbol_of_camlline_symbol sym_cal =
  Generatorset_symbol_t.Camlline_symbol sym_cal
;;

let generatorset_symbol_of_camlparagraph_symbol sym_cap =
  Generatorset_symbol_t.Camlparagraph_symbol sym_cap
;;

let generatorset_symbol_of_contentfile_symbol sym_cof =
  Generatorset_symbol_t.Contentfile_symbol sym_cof
;;

let generatorset_symbol_of_domain_symbol sym_dos =
  Generatorset_symbol_t.Domain_symbol sym_dos
;;

let generatorset_symbol_of_category_symbol sym_cat =
  Generatorset_symbol_t.Category_symbol sym_cat
;;

let generatorset_symbol_of_entity_symbol sym_ent =
  Generatorset_symbol_t.Entity_symbol sym_ent
;;

let generatorset_symbol_of_kind_symbol sym_ite =
  Generatorset_symbol_t.Kind_symbol sym_ite
;;

let generatorset_symbol_of_item_symbol sym_ite =
  Generatorset_symbol_t.Item_symbol sym_ite
;;

let generatorset_symbol_of_section_symbol sym_ite =
  Generatorset_symbol_t.Section_symbol sym_ite
;;

let generatorset_symbol_of_group_symbol sym_ite =
  Generatorset_symbol_t.Group_symbol sym_ite
;;

let generatorset_symbol_of_usagefile_symbol sym_usf =
  Generatorset_symbol_t.Usagefile_symbol sym_usf
;;
(*
let generatorset_symbol_of_statustype_symbol sym_stt =
  Generatorset_symbol_t.Statustype_symbol sym_stt
;;
*)

let generatorset_symbol_of_entity_fictive_symbol sym_enf =
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_fictive_symbol sym_enf in
  Generatorset_symbol_t.Entity_symbol sym_ent
;;

let generatorset_symbol_of_entity_fictive_nullary_symbol sym_efn =
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_fictive_nullary_symbol sym_efn in
  Generatorset_symbol_t.Entity_symbol sym_ent
;;

let generatorset_symbol_of_entity_fictive_basicnullary_symbol sym_efb =
  let sym_ent = Entity_symbol_v.entity_symbol_of_entity_fictive_basicnullary_symbol sym_efb in
  Generatorset_symbol_t.Entity_symbol sym_ent
;;

(** {6 Basic types} *)

let generatorset_symbol_of_float_symbol sym_flo =
  let str_f = Float_symbol_v.name sym_flo in
  let sym_ent = Entity_symbol_v.basicnullary "float" str_f in
  Generatorset_symbol_t.Entity_symbol sym_ent
;;

(** {6 Extracting topsons} *)

let contentfile_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Contentfile_symbol sym -> sym
  | _ -> failwith "contentfile_symbol_off_generatorset_symbol"
;;

let usagefile_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Usagefile_symbol sym -> sym
  | _ -> failwith "usagefile_symbol_off_generatorset_symbol"
;;
(*
let statustype_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Statustype_symbol sym -> sym
  | _ -> failwith "statustype_symbol_off_generatorset_symbol"
;;
*)
let domain_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Domain_symbol sym -> sym
  | _ -> failwith "domain_symbol_off_generatorset_symbol"
;;

let entity_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Entity_symbol sym -> sym
  | _ -> failwith "entity_symbol_off_generatorset_symbol"
;;

let category_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Category_symbol sym -> sym
  | _ -> failwith "category_symbol_off_generatorset_symbol"
;;
(*
let camlfile_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Camlfile_symbol sym -> sym
  | _ -> failwith "camlline_symbol_off_generatorset_symbol"
;;
*)
let kind_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Kind_symbol sym -> sym
  | _ -> failwith "kind_symbol_off_generatorset_symbol"
;;

let item_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Item_symbol sym -> sym
  | gss -> 
      Error_messages_v.print_fatal_error nam_cod "item_symbol_off_generatorset_symbol"
	"Generatorset_symbol_t.Item_symbol sym_ite"
	(Format.sprintf "this Generatorset_symbol >%s<" (fullname gss)
	) "Check"
;;

let section_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Section_symbol sym -> sym
  | _ -> failwith "section_symbol_off_generatorset_symbol"
;;

let group_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Group_symbol sym -> sym
  | _ -> failwith "group_symbol_off_generatorset_symbol"
;;

let camlparagraph_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Camlparagraph_symbol sym -> sym
  | _ -> failwith "camlparagraph_symbol_off_generatorset_symbol"
;;

let camlline_symbol_off_generatorset_symbol = function
  | Generatorset_symbol_t.Camlline_symbol sym -> sym
  | _ -> failwith "camlline_symbol_off_generatorset_symbol"
;;

(** {6 Extracting grandsons} *)

let entity_proper_symbol_off_generatorset_symbol sym_ges =
  let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
  Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent
;;

let entity_fictive_symbol_off_generatorset_symbol sym_ges =
  let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
  Entity_symbol_v.entity_fictive_symbol_off_entity_symbol sym_ent
;;

let entity_fictive_nullary_symbol_off_generatorset_symbol sym_ges =
  let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
  Entity_symbol_v.entity_fictive_nullary_symbol_off_entity_symbol sym_ent
;;

(** {6 Querying} *)

let is_domain_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Domain_symbol _ -> true
  | _ -> false
;;

let is_kind_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Kind_symbol _ -> true
  | _ -> false
;;

let is_item_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Item_symbol _ -> true
  | _ -> false
;;

let is_category_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Category_symbol _ -> true
  | _ -> false
;;

let is_contentfile_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Contentfile_symbol _ -> true
  | _ -> false
;;

let is_usagefile_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Usagefile_symbol _ -> true
  | _ -> false
;;

let is_entity_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Entity_symbol _ -> true
  | _ -> false
;;

let is_camlparagraph_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Camlparagraph_symbol _ -> true
  | _ -> false
;;

let is_section_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Section_symbol _ -> true
  | _ -> false
;;

let is_group_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Group_symbol _ -> true
  | _ -> false
;;

let is_camlline_symbol_off_generatorset_symbol = function 
  | Generatorset_symbol_t.Camlline_symbol _ -> true
  | _ -> false
;;

let is_entity_fictive_symbol_off_generatorset_symbol sym_ges =
  if not (is_entity_symbol_off_generatorset_symbol sym_ges)
  then false
  else
    begin
      let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
      Entity_symbol_v.is_entity_fictive_symbol_off_entity_symbol sym_ent
    end
;;

let is_entity_fictive_nullary_symbol_off_generatorset_symbol sym_ges =
  if not (is_entity_symbol_off_generatorset_symbol sym_ges)
  then false
  else
    begin
      let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
      Entity_symbol_v.is_entity_fictive_nullary_symbol_off_entity_symbol sym_ent
    end
;;

let is_entity_proper_symbol_off_generatorset_symbol sym_ges =
  if not (is_entity_symbol_off_generatorset_symbol sym_ges)
  then false
  else
    begin
      let sym_ent = entity_symbol_off_generatorset_symbol sym_ges in
      Entity_symbol_v.is_entity_proper_symbol_off_entity_symbol sym_ent
    end
;;

(** {6 Listing} *)

let generatorset_symbol_list str = [] ;;
