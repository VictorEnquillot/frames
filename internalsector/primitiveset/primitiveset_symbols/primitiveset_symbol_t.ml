(** {3 A Symbol for a Primitive_set.} *)

(** {6 Modules.} *)

module Hbs_t = Hsbf_bundle_symbol_t
module Hcs_t = Hsbf_cluster_symbol_t
module Hxs_t = Hsbf_expanded_symbol_t
module Hms_t = Hsbf_molbasis_symbol_t
module Hps_t = Hsbf_pack_symbol_t
module Hss_t = Hsbf_single_symbol_t
module Xxs_t = Xfp_expanded_symbol_t
module Xss_t = Xfp_single_symbol_t

(** {6 Types.} *)
 
type primitiveset_symbol =
  | Hsbf_bundle_symbol of Hbs_t.hsbf_bundle_symbol
  | Hsbf_cluster_symbol of Hcs_t.hsbf_cluster_symbol
  | Hsbf_expanded_symbol of Hxs_t.hsbf_expanded_symbol
  | Hsbf_molbasis_symbol of Hms_t.hsbf_molbasis_symbol
  | Hsbf_pack_symbol of Hps_t.hsbf_pack_symbol
  | Hsbf_single_symbol of Hss_t.hsbf_single_symbol
  | Xfp_expanded_symbol of Xxs_t.xfp_expanded_symbol
  | Xfp_single_symbol of Xss_t.xfp_single_symbol
;;

(** created by ./do_entity_set_category_t_ml symbol 07 octobre 2009. *)

