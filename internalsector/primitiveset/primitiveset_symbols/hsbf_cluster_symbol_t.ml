(** {3 A Symbol for a Hsbf Cluster ( N ).} *)

type hsbf_cluster_symbol = Shell_ordinal_p.shell_ordinal (* Shell Ordinal N *)
;;
(**
   {[          Charactristic           Composition
   Pack    <-> c ( Center )            loop on all n of basisset of c
*  Cluster <-> n ( Shell Ordinal )     loop on all l of that n in basisset of c
   Bundle  <-> n,l ( Shell Name )      loop on all m : -l to +l 
   Single  <-> l,m ( Quantum Numbers ) loop on all expanded_xfp of basisset of c,l,n
   ]}
 *)
 
