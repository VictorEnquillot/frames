(** {3 The Symbol for an Entity_external.}  *)

type entity_external_symbol =
  | Entity_external_type_symbol of entity_external_type_symbol 
  | Entity_external_tool_symbol of entity_external_tool_symbol 
  | Entity_external_datastructure_symbol of entity_external_datastructure_symbol 
  | Empty

and entity_external_type_symbol = (* t and v *)
  | Index
  | Ordinal

and entity_external_tool_symbol = (* only v *)
  | Error_messages
  | Messages
  | String_frames
  | Utils

and entity_external_datastructure_symbol = (* t and v *)
  | Doublet
  | List_frames
  | Pair
  | Tree
  | Trio
  | Triplet
 ;;
(** 

*)
