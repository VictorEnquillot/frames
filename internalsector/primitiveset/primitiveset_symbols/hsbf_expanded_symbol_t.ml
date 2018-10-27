(** {3 Pripath functionalities A Symbol for an Hsbf Expanded.} *)

type hsbf_expanded_symbol = Quantum_numbers_p.quantum_numbers_lm
;;
(** Refers to an Hsbf Expanded (and Ylm). 
    Using private type quantum_numbers ensure to 
    build correct relation between them. *)

(**
   {[             charactristic         composition
   Pack    <-> c (Center)            loop on all l of basisset of c
   Cluster <-> l                     loop on all n of that l in basisset of c
   Bundle  <-> shell name n,l        loop on all m : -l to +l 
   Single  <-> quantum_number l,m    loop on all expanded_xfp of basisset of c,l,n
   ]}
 *)
