(** {3 A Shrub data structure.} *)
(**
{[

                   A uno
                   |
                   B duo
                  /  \
                C trio D zero
              / | \
            E   F  G  

It is a kind of tree in which eah Inner has a defined number of sons.
 
]}
*)


type 'a shrub = 
  | Empty
  | Zero of 'a 
  | Uno of 'a * (('a shrub) Uno_t.uno)
  | Duo of 'a * (('a shrub) Duo_t.duo )
  | Trio of 'a * (('a shrub) Trio_t.trio )
;;

