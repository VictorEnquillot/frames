(** {3 The Designator for any Entity in any State.} *)

 type ('a, 'b) designator = {
     symbol : 'a;
     state : 'b;
   }
 ;;
 (** - [symbol] allows to define the canonical nature of the Entity.
     - [state] modulates the symbol. 

     For example : all Histidine are symbolized with HIS in the polypeptide
     sequence. Though depending on the simulation they have to be modulated in 
     4 instances HISD, HISE, HISDE, HIS (deprotonated) .
*)
