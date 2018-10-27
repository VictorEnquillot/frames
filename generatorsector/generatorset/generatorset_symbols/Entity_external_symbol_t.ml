(** {3 The Symbol for an Entity External.}  *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type entity_external_symbol =
  | Entity_external_constrained_symbol of Entity_external_constrained_symbol_t.entity_external_constrained_symbol 
  | Entity_external_tool_symbol of Entity_external_tool_symbol_t.entity_external_tool_symbol 
  | Entity_external_datastructure_symbol of Entity_external_datastructure_symbol_t.entity_external_datastructure_symbol 
;;
(** 
An Entity External has no Category
An Entity External is already implemented in an other Domainset of Frames.
There are three main kinds of such Entities :
- Constrained which are implemented by a `private' type and two Camlfiles 
  (_p.ml and _p.mli) (e.g. Ordinal in general/tools)
- Datastructure which are implemented by 3 Camlfiles Modules
  (_t.ml, _v.ml and _v.mli) (e.g. Tree defined in general/tools)
- Tool which are implemented by 2 Camlfiles Modules
  (_v.ml and _v.mli) (e.g. Error_messages)
*)
