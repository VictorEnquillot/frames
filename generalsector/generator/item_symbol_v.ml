(** {3 The functionalities for a Symbol for an Item in a Codefile.}  *)

(** {3 Codefiles.} *)

module Dbt_v = Doublet_v
module Its_t = Item_symbol_t

(** {6 Making.} *)

let make = function 
  | "abbreviating" -> Its_t.Abbreviating_symbol
  | "building" -> Its_t.Building_symbol
  | "naming" -> Its_t.Naming_symbol
  | "printing" -> Its_t.Printing_symbol
  | "ending" -> Its_t.Ending_symbol
  | "extracting" -> Its_t.Extracting_symbol
  | "heading" -> Its_t.Heading_symbol
  | "including" -> Its_t.Including_symbol
  | "making" -> Its_t.Making_symbol
  | "modules" -> Its_t.Modules_symbol
  | "providing" -> Its_t.Providing_symbol
  | "querying" -> Its_t.Querying_symbol
  | "register" -> Its_t.Register_symbol
  | "retrieving" -> Its_t.Retrieving_symbol
  | "storing" -> Its_t.Storing_symbol
  | "typing" -> Its_t.Typing_symbol
  | "upgrading" -> Its_t.Upgrading_symbol
  | _ -> failwith "Unknown string:Its_v.make"
;;

(** {6 Naming.} *)

let name = function 
  | Its_t.Abbreviating_symbol -> "abbreviating"
  | Its_t.Building_symbol -> "building"
  | Its_t.Naming_symbol -> "naming"
  | Its_t.Printing_symbol -> "printing"
  | Its_t.Ending_symbol -> "ending"
  | Its_t.Extracting_symbol -> "extracting"
  | Its_t.Heading_symbol -> "heading"
  | Its_t.Including_symbol -> "including"
  | Its_t.Making_symbol -> "making"
  | Its_t.Modules_symbol -> "modules"
  | Its_t.Providing_symbol -> "providing"
  | Its_t.Querying_symbol -> "querying"
  | Its_t.Register_symbol -> "register"
  | Its_t.Retrieving_symbol -> "retrieving"
  | Its_t.Storing_symbol -> "storing"
  | Its_t.Typing_symbol -> "typing"
  | Its_t.Upgrading_symbol -> "upgrading"
;;

let key smb_itm =
  Dbt_v.make "item" (name smb_itm)
;;

(** {6 Abbreviating} *)

let abbreviating = Its_t.Abbreviating_symbol;;
let building = Its_t.Building_symbol;;
let naming = Its_t.Naming_symbol;;
let printing = Its_t.Printing_symbol;;
let ending = Its_t.Ending_symbol;;
let extracting = Its_t.Extracting_symbol;;
let heading = Its_t.Heading_symbol;;
let including = Its_t.Including_symbol;;
let making = Its_t.Making_symbol;;
let modules = Its_t.Modules_symbol;;
let providing = Its_t.Providing_symbol;;
let querying = Its_t.Querying_symbol;;
let register = Its_t.Register_symbol;;
let retrieving = Its_t.Retrieving_symbol;;
let storing = Its_t.Storing_symbol;;
let typing = Its_t.Typing_symbol;;
let upgrading = Its_t.Upgrading_symbol;;
