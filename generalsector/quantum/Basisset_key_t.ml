(** {3 The Doublet used as a key to store Basisset Information.} *)

module Doublet_t = Doublet_t
module Mendeleev_symbol_t = Mendeleev_symbol_t
module Shell_name_p = Shell_name_p

type basisset_key = (Mendeleev_symbol_t.mendeleev_symbol, Shell_name_p.shell_name) Doublet_t.doublet
;;
(** Shell_name is (Sho_p.shell_ordinal, Lss_t.shell_symmetry) Doublet. *)


