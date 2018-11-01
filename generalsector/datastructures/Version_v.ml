let name = "v2.5";;

let attributes = 
[
 "31st of October 2018";
 "Symbols and Formulas (for List) work";
 "Only Symbols have a Domain global type (to store Symbols by Sole_index) : type domain_symbol =";
 "Formulas are not Stored";
 "in Entity_builder_symbol_tree_by_entity_proper_tritup_provider_v added Once list for builder_main";
 "Move Target in Commonset";
]

let done_improvements = 
[
 "Architecture modified : Formulas -> Interfaces -> Databases -> Files -> Datastructures -> Basics";
 "Architecture modified :             Interfaces -> Tags -> Symbols -> Datastructures -> Basics";
];;


let future_improvements = 
[
 "Improve : Atom_zerotied -> Molecule";
 "Improve : Formulas Datastructures generalized with Tuples";
 "Improve : Generation of modules for selected Entities not yet implemented";
 "Improve : the Cpu problem is not yet solved";
 "Improve : the Generatorset directories interface and databases should be cleared";
 "Improve : the Generatorset key tags should be introduced instead of tuples";
 "Improve : Camlline value string -> string list";
 "Improve : Domain, Domain_symbol and Domainset concepts are still confusing";
 "Improve : Values as Basic type Datastructures are Stored and Provided";
 "Improve : Cttag, Bttag and Dbtag must be introduced";
 "Improve : Builder main should be taken off";
 "Improve : Target read from file";
]
;;

let string_of_attributes () =
  List_v.name_with_separator Utilities_v.identity ";\n " attributes
;;

let string_of_done_improvements () =
  List_v.name_with_separator Utilities_v.identity ";\n " done_improvements
;;

let string_of_future_improvements () =
  List_v.name_with_separator Utilities_v.identity ";\n " future_improvements
;;
