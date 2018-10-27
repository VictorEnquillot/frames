open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

*)

let tra_cat = [("category", "symbol"); ("domain", "natural")];;

let dbr_l = Database_record_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
dbr_l
(* : string list *)
=
 ["constructors   natural                  =   digit   expression   token";
   "constructors   expression               =   expression_atomic   expression_composite";
   "constructors   expression_atomic        =   expression_zero   variable:ofstring";
   "constructors   token                    =   operation   leftparenthesis   rightparenthesis";
   "constructors   operation                =   successor   addition   multiplication";
   "constructors   digit                    =   zero   one   two   three   four   five   six   seven   eight   nine"]
);;

