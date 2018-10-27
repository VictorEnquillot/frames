(** {3 The Formula for the Caml Code Generator for Frames}  *)

(** {Codefiles.} *)

module Its_v = Item_symbol_v
module Cfs_t = Codefile_symbol_t

(** {Retrieving.} *)

let retrieve = function
  | (Cfs_t.Type_symbol, _) ->
      [Its_v.heading; Its_v.modules; Its_v.typing; Its_v.ending]

  | (Cfs_t.Implementation_symbol, _) ->
      [Its_v.heading; Its_v.modules; Its_v.naming; Its_v.printing;  
       Its_v.extracting; Its_v.querying; 
       Its_v.upgrading; Its_v.including; Its_v.ending]

  | (Cfs_t.Interface_symbol, _) ->
      [Its_v.heading; Its_v.naming; Its_v.printing; Its_v.extracting; 
       Its_v.querying; Its_v.upgrading; Its_v.including; 
       Its_v.ending]
  
  | (Cfs_t.Empty, _) -> []
 ;;
