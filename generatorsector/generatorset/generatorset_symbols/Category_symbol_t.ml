(** {3 The Symbol for a Category.}  *)

(** {6 Aliasing} *)

(** {6 Typing} *)

type category_symbol = 
  | Any              (* a *)
  | Formula          (* f *)
  | Mark             (* m *)
  | Path             (* p *)
  | Property         (* w for what ? *)
  | Provider         (* r for retrieve ? *)
  | Symbol           (* s *)
  | Tag              (* t *)
  | Value            (* v *)
  | Empty            (* for external entity *)
;;
(** 
Depending of the kind of information provided, an Entity is declined in several
aspects which each need to be implemented in a well defined Framestypes.
 
These aspects are named `Category' (other possible names declension, inflexion, flection). 
    
An Entity is declined in two main Categories : Symbol and Formula

e.g. triangle_symbol which enumerates all the possible kinds of Triangle
 and triangle_formula which defines what Datastructure holds the Point
 and the Vector making a Triangle.

Each Category has a name, an abbreviation_argument and an abbreviation_module
Example : symbol 
      name                  is symbol 
      abbreviation_argument is sym
      abbreviation_module   is s
 *)
