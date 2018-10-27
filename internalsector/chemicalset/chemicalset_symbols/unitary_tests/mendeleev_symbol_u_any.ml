open Make_test;;

(** {3 Tests for Mendeleev_symbol_v.} *)

testing "Mendeleev_symbol_v";;

(* toplevel 
   #use "mendeleev_symbol_u_any.ml";; 
 *)

(* Modules *)


(** c *)

let mnd_s = Mendeleev_symbol_t.S;;

let val_s = Mendeleev_symbol_v.default_valence_of_mendeleev_symbol mnd_s ;;

test_number 0 (
val_s
=
Index_p.two
);;

test_number 1 (
Mendeleev_symbol_v.allowed_valence_of_mendeleev_symbol mnd_s Index_p.four
=
Index_p.four
);;

test_number 2 (
Mendeleev_symbol_v.read (Scanf.Scanning.from_string "He")
=
Mendeleev_symbol_t.He
);;

test_number 3 (
Mendeleev_symbol_v.read (Scanf.Scanning.from_string "Uuu")
=
Mendeleev_symbol_t.Uuu
);;

