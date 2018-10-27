(* $Id: Exp $ *)

open Make_test_v;;

testing "Recordpdb_header_v";;

(* toplevel #use "trecordpdb_header_v.ml";; *)

let str =
"HEADER    PROTEINASE INHIBITOR (TRYPSIN)          27-SEP-82   4GA_      4GA_   3  ";;

test_number 1 (
Recordpdb_header_v.get_current_word str Fieldpdb_symbol_t.Record_label
=
 "HEADER"
);;

test_number 2 (
Recordpdb_header_v.get_current_word str Fieldpdb_symbol_t.Chemical_species
=
"PROTEINASE INHIBITOR (TRYPSIN)          "
);;

test_number 3 (
Recordpdb_header_v.header_record_of_string  str
=
{
 Recordpdb_header_t.record_label = Recordpdb_symbol_t.HEADER;
 Recordpdb_header_t.chemical_species =
 "PROTEINASE INHIBITOR (TRYPSIN)          ";
 Recordpdb_header_t.date = (27, "SEP", 82);
 Recordpdb_header_t.id_pdb = "4GA_"
}
);;
