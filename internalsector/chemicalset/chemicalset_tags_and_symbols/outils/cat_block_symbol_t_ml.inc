(***
http://fr.wikipedia.org/wiki/Complexe_%28chimie%29

    On a regroupé ci-dessous la liste des structures les plus répandues en fonction du nombre de coordination (NC) (ou coordinance) :

    * NC = 2 : linéaire,
    * NC = 3 : trigonale plane,
    * NC = 4 : tétraédrique ou plan carrée
    * NC = 5 : bipyramidale à base triangulaire ou pyramidale à base carrée
    * NC = 6 : octaédrique ou prisme trigonale
    * NC = 7 : bipyramidale à base pentagonale

***)

(** In a molecule a [Block] is made of one 'core' atom 
    and zero or several 'onetied' or 'leaf' atoms exclusively bonded to it. 

    A Block is never closed (only Molecules are closed) as an element of
    the bonding system.

    The nature of a Block is to be part of a fragment which has a 
        linear structure.

    In a fragment a block is bonded zero or one times backwards
    A block is located 
      - at the head of a fragment
      - in the body of a fragment
      - at the tail of a fragment
      
    The Symbol of a Block defines the topology of its bonding capabilities.
    Which are the same as those of its core atom.

 Ties :

    We define a tie as a bond regardless of its kind (a single, conjugated, 
                    double or triple bond is one tie)  

    The Symbols used for a tie are as follows :

        "z" when there is no tie 
        "s" when the tie is a single bond
        "c" when the tie is a conjugated bond
        "d" when the tie is a double bond
        "t" when the tie is a triple bond

 Block Symbol :
 
     A Block Symbol defines the nature of the Block.
     It has at most three parts :

     Atomic composition - bonding structure - charge

      Nh3_zs_p1 
      ||  || |
      ||  || |---- "p1" the charge is +1
      ||  ||
      ||  ||------ "s" right tie is a single bond
      ||  |
      ||  |
      ||  |------- "z" left tie is absent (zero)
      |----------- "h3" 3 leaf H atoms
      |
      |----------- "N" core atom


      Other examples :

      Nh2_dz_1p    =N+H2 
      Nh2_zd_1p    N+H2= 
      Ch_zs3       Ch<-
      Ch2_zss_     Ch2<-
      Ch2_zss_     Ch2<-
      Ch_ss2       -Ch<
      Ch2_ss       -Ch2-
      Chcl_ss      -Chcl-
      Cclh_ss      -Cclh-

      Atomic composition :
        Atoms are named according to their Mendeleev symbol.
        The Core atom is the first and is in uppercase
        The leaf atoms are in lowercase and in anticlockwise order arounf the
            left tie.

      Bonding structure :

        A Block makes zero or one left tie 
                  and zero, one, two, three or four right ties.

        The first character says which kind of bond is the left tie.
        The other characters defines the right open ties of the Core Atom  

      Charge :
        "2p" means +2
        "1m" means -1

      For example : Nh2__d_1p means a Block with 
                    a N atom as Core atom
                    two H atoms linked to it 
                    and a remaining open double bond rightwards
                    the whole Block as +1 charge
 
                    Nh2_d__1p means the same with a double bond leftwards.
 
    - A Block Symbol caracterizes the stereochemical chemical formula 
                   and the bonding properties of the Block 

    - module names

      zerozero  means a closed block ( Oh2 )  (o|o)
      zeroone   means a closed block ( Oh2 )  (o|-)
      zerobiforksinglesingle                  (o|<)
      zerobiforksingleconjugated              (o|<.)
      zerobiforksingledouble                  (o|<\ or o|</)
      zerobiforkdoubleledouble                (o|<<)
      zerotriforksinglesinglesingle           (o|<-)
      zeroquadriforksinglesinglesinglesingle  (o|<:)

    When upgraded a Chemical a leaf (methyl -Ch3)
                  a Rchemical is a head  (rmethyl Ch3-)


    A known chemical entity is designed 
    - by its chemical name when Block_symbol
    - by its chemical name suffixed 
          by _h if it is a head  methyl_h
          by _l if it is a leaf  methyl_l
          by _c if it is closed  water_c 
    - by its chemical name prefixed
          by r_ if is a Block_symbol head (reversed)
*) 

(* TODO divide oneend into its components 
  change one by uno o -> u
       fork -> furca
       bifork -> bifurca

*)

(* o|< zo cannot exist in Fragments -see fragment definition 
          may exit in arbitrary decomposition like segments. *)