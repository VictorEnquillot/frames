(** {3 A Symbol for an Hsbf Bundle ( N, L ).} *)

type hsbf_bundle_symbol = Shell_name_p.shell_name
;;
(**
   {[          Charactristic           Composition
   Pack    <-> c ( Center )            loop on all n of basisset of c
   Cluster <-> n ( Shell Ordinal )     loop on all l of that n in basisset of c
 * Bundle  <-> n,l ( Shell Name )      loop on all m : -l to +l 
   Single  <-> l,m ( Quantum Numbers ) loop on all expanded_xfp of basisset of c,l,n
   ]}
 *)
 
