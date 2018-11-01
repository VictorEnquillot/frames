Program Generator.
File : $FRM/generatorset/README

This program aims at generating automatically the Caml Code that implements 
any triplet (Entity, Category, Camlfile) (ecc) from minimal information.

There are two worlds 

  Code world (Caml modules)

  Data world (Entity Data definition)

In other words it translates the Data world into the Code world.

= The Code World =

see ./generatorset_tags/README/Entity
see ./generatorset_formulas/README

* Entity 
An `Entity' is any concept implemented as a `Module' 
     e.g. "Atom" is implemented as Modules 
              Atom_symbol_t Atom_symbol_v
              Atom_tag_t Atom_tag_v
	      Atom_path_t Atom_path_v
	      Atom_formula_t Atom_formula_v
              Atom_value_t Atom_value_v
     or "Triangle"

N.B. : atom_twotied is NOT and Entity, it is used only as a subtype for atom_symbol.

There are three main kinds of `Entities' :
- Proper   
      which are defined by `Camltypes' and therefore by `Module' files in the
      current directory 
      They are Inner Nodes of the Constructor Tree (CT).
      (e.g. Atom, Triangle).

-- Proper are of two kinds 
      Rootentity | Subentity
      A Root Entity corresponds to the Root Symbol for an Entity (e.g. Atom)
      A Subentity corresponds to any other 

- Fictive 
      which are only `Constructors' and therefore have no Camlfile nor Category
      They are Leaves of the Constructor Tree (CT).
      (e.g. He - Mendeleev symbol, X - Coordinate)
- External
      which are already implemented in an other Domainset of Frames.
      (e.g. Ordinal, Tree defined in general/tools )

* Camltype 
    It is defined by the "type" keyword in Caml.
    Types in frames/general/ subdirectories are of such types.

* Frametype
    It is used to define the Camltype of an Entity in a Set of Frames.
    They are generated automatically by the Generator Program. 
    They are divided in two kinds :

    Essential   
      which never involve tuples and list
      It is the couple (Entity, Category)

    Container 
      which involve tuples and list

  and two other kinds :

    Monoconstructor 
      One line is enough to define it.  

      Essential :
           type x = R_a_category of Rac_t.r_a_category
           type y = U

      Container :
           type h = (a, b) couple 
           type l = r_a_category list
           type t = r_a_category tree

    Polyconstructor   
       Several lines are needed to define it.
  
      Essential :
           type z =
               | R_a_category of Rac_t.r_a_category
               | R_b_category of Rac_t.r_b_category
               ...
               | U

      Container :
           type i = 
	     | C of (a, b) couple 
             | D of d singlet

    x, y and z are Camltypes.

  and two other kinds :

    Constrained
    Unconstrained

** Summary of Camltype kinds :

  Typestatus :
    Constrained | Unconstrained 
    is defined by the User in the .set file

  Typearity :
    Monoconstructor | Polyconstructor
    is defined in the .set file by counting the constructors.

  Typenature :
    Essential | Container 
    is implied by the Category
   
* Constructor
    it is what follows a "|" (or and "=" when camltype is monoconstructor) in 
    the definition of a Camltype.
 
  Constructorarity :
    Nullary | Unary | N-ary

  Constructornature :
    Descriptive | Datastructure

  Examples :
    Descriptive
      Nullary   
         | N

      Unary 
         | U of u

      No N-ary

    Datastructure
      No Nullary

      N-ary
         | M of (a, b) datastructure

      data structure is : 
         couple, triplet, ..., list, tree, etc...
      it is always a parametrizable type made combining tuples and lists
      and therefore N-Ary 

    U is a Unary Constructor
    N is a Nullary Constructor
    M is a N-Ary Constructor
    a, b are Camltypes

* Category (declension, inflexion, flection)

    Depending of the kind of information provided an entity is declined
    in several aspects which each need to be implemented with a
    well defined Camltypes. 

    We named these aspects "categories". 
    An Entity is declined in to Main Categories : Symbol and Formula

    The Symbol allows to parametrize the (provide) function that encapsulates
      the calculation of the function which builds the Value of an Entity from
      the Values of its Sons.
      The information it contains tells what kind of Entity is to be provided, 
      it  is independant of the Value of the Entity, which is yet not known.
      It could NOT be a Container, it is a Descriptive Camltype.

      This concept is related to the Constructor Tree

    The Formula contains - and is therefore necessarily a Container Camltype -
    the Symbols of the Sons of an Entity.  
    Applying the specific provide function each element (Son Symbol) of the 
    Formula will return a Container containing Son Values instead of Son Symbols.
    This is the Value Category of the Entity.
    If the Container used to defined ths Formula is uniquely indexed (Uindex)
    it is convenient to define the Category Tag which couples the Symbol and 
    its Uindex in the Formula and then the Category Path as the list of Tags 
    containing all Tags of the ancestors of an Entity.

    From these definitions we see that the information (Tags) contained in a
    Path flows from the Top (Target of a Program) to the Entity under 
    calculation.
    While the information contained in a Value flows through the Formulas 
    recursively from the Input Data of the Program up to the Value of the Entity 
    under calculation.

    This concept is related to the Production Tree

    This implies that Symbols, Tags and Paths must be implemented into files
    compiled independently from Formulas and Values.

    All Categories are listed below :
     
    Symbol   it defines the fact that a given Entity exists
              e.g. Atom_symbol
 
    Tag      it couples a Symbol and a Uindex
    Path     it is a list of Tags 
    Formula  it is a container containing the Tags of the Son entities
    Value    it is the same container as the Formula 
              containing the values of the Son entities
    Property it an Entity defined from the Value of an Entity
    Provider it provides a Property from the Path of an Entity

     which represents the different concept of the IRP.

    Each Category has a name, an abbreviation_argument and an abbreviation_module

** Symbol  
    It is designed by the programmer.
    it is implemented as an Essential Camltype, it can use Mono or Polyconstructors.

    For entities E, F and G
    type e_symbol = L
    type f_symbol = A_symbol of a_symbol
    type g_symbol = 
       | A_symbol of a_symbol
       | L

   Remark : Constructor A which is not a leaf of the Constructor Tree (CT)
            is used as Constructor A_symbol because it has a Symbol Camltype
            defined in a Camlfile a_symbol_t.ml as
            type a_symbol =

            Constructor L which is a leaf of CT (nullary) does not need the
            "_symbol" suffix.


    The Symbol of a Triangle (triangle_symbol) tells that an Entity named Triangle exists in the code.
    A Symbol does not tell anything about what is contained in an Entity.

Remark:
    The Symbol Polyglycine_symbol should not include any information about the number of Glycines it includes.

    Symbols are Hierarchical or Essential or "Zero-ary (Nullary) Types" because they are not defined from other types. 

    Nevertheless it is convenient to subdivize (classify) them in a hierarchy of subtypes (The Constructor Tree - CT) : the Type Family. This CT tree is defined by the relation "is a subtype of".
 
    They are opposed to "Datastructure Types" which are N-ary types because they are defined from one or more other arbitrary types. These datastructures are defined by the relation "is necessary to compute".

Note : 
     A hierachical type is a tree for the relation "is a subtype of" but not a datastructure tree for which the relation is "is contained in" 

Remark :
       There is no tuple, list and ... datastructure.
       It is a finite enumerated type (it implies : no recursion)

Example : 
	an integer has symbol : type integer_symbol = Integer;;
        a float has symbol : type float_symbol = Float;;

** Formula 
     it is implemented as a Container Camltype, it can use Mono 
     or Polyconstructors.

     For entities E, F and G
     type e_formula = u singlet
     type f_formula = u list
     type g_formula = A of a list
     type h_formula = 
        | A of a list
        | B of b list
        | U of u singlet

     val retrieve : tag -> formula

** Tag
     it is implemented as a couple between a Tag and a Sole Index (SI).

** Value
     it is implemented with the same Container Camltype as the Formula
     with all Tags replaced recursively by the Values of the Sons until
     the Calculation Conditions or Parameters are reached.

     It contains the necessary and sufficient information to calculate
     any Property of an Entity.

     val make : tag -> value

** Property
     it is an Entity of any Camltype computed using the Value of that Entity.
     for example, the surface of a Triangle.

     val make : tag -> property

== Entities for Generator ==

* Categorizedentity 
     it is the couple (Entity, Category)

* Typestatus

* Camlfile 
     it is a disk file where the Caml code is stored.
     There is 2 or 3 Camlfiles for each Categorized_entity depending of the 
     kind of Camltype of the Entity. 
 
** Camlfileusage
     Implementation | Interface
     
     implies suffix .ml .mli
     
** Camlfilecontent 
     it is what a Camlfile contains :
     Type | Value | Typevalue

     (e.g. Type  : atom_symbol_t
           Value : atom_symbol_v
           Typevalue : ordinal_p

     Three files for Unconstrained Camltypes :
         unconstrained_type_implementation   (suffix _t.ml)    
         unconstrained_value_implementation  (suffix _v.ml) 
         unconstrained_value_interface       (suffix _v.mli) 

     Two files for Constrained Camltypes (private) :
         constraint_typevalue_implementation (suffix _p.ml)
         constraint_typevalue_interface      (suffix _p.mli) 
 
     There is a Camlfile for one Ecc triplet.


This triplet is named "entitycategorycodefile" or "ecc" for short.

** Camlfilename
     it is the triplet (Entity, Category, Camlfile)
     Abbreviation : ecc
     A Camlfile name is typically built from "ecc" :

     e.g. "atom_symbol_v.ml" 
          "atom_tag_v.ml" 
          "atom_path_v.ml" 
          "atom_formula_v.ml" 
          "atom_value_v.ml"

** Module
     it is the triplet (Entity, Category, Camlfilecontent)
     Abbreviation : ecc

     it is what is meant in Caml by the keyword "module M = ".
     It is only possible to define such a module for Implementation Camlfile.

     There are two cases :
     1. Constrained Camltypes correspond to one Module 
     2. Unconstrained Camltypes correspond to two Modules (e_t.ml and (e_v.ml, e_v.mli))

= The Formula World =

* Camlfile 
it is the Root Entity (Target) to be produced by a run Generator.

** Camlfile_formula : Item_tag list

** Item_formula : Camlparagraph_tag tree

** Camlparagraph_formula : Camlline_tag list
*** Camlparagraph_formula_constrained : (Comment_tag, Camlline_tag capped_list

** Camlline_formula : ((Entity, Category, Camlfilecontent) triplet ) list

* see  frames/generatorset/generatorset_formulas/README

Special cases : 
- the Root Entity which has no Upgrading Item.


= The Data world =

Four Camltypes need to be defined by the User : 
     
  Symbol Formula Value and Property

  Tag and Path are derived automatically from the Symbols.

== Data : Symbol ==
* see file : frames/generatorset/generatorset_databases/README

== The Constructor Tree (CT) ==

* see file : frames/generatorset/generatorset_tags/constructor_tree_symbol_t.ml

=== Container entity ===

Here we shall keep only the "storing" property to define a container.

A container type describes the way data (values) are stored.

For example : a list, a tree, a tuple are containers. 
A container tells how some types are clustered together.

For example :
  type 'a tree =
    | Empty
    | Leaf of 'a
    | Node of 'a * ('a tree) list 
  ;;
 
  defines a tree of any type 'a.

  type aggregate = (molecule, int) doublet;;

  associates a molecule and an integer to define an aggregate of 
  n molecule of the same chemical formula.

It is a non Nullary Camltype

Question : Is it possible that a container could always be parametrized, that is to say : is it always an abstract data-type ?

=== Essential entity Camltype ===

A essential type is a type defined as an "exclusive or" of subtypes not being container.

For example see frames/geometryset/README#

== The production tree (PT) == 

The production_tree of the value of an entity A, defines the relation

 "the value of A needs the value of B to be computed". 

Or B belongs to the Formula of A. 

A path in PT or pt_path is an indexed list of node symbols related by the "is_needed_by relation" 

The CT for a Triangle Symbol is :


                              triangle_symbol
                  /                   |                  \
       Equilateral             Isoceles                        Scalene
                            /            \                  /           \
                   Isoceles_right Isoceles_oblique   Scalene_right Scalene_oblique
                                       /         \                    /   \
                           Isoceles_oblique_obtuse\  Scalene_oblique_obtuse\ 
                                Isoceles_oblique_acute   Scalene_oblique_acute


== The categories ==

=== The Symbol ===

A symbol A is a name which tells that there exists an entity "a" it is a Essential type and never a Container, having A as type constructor.

For example the type triangle above defines the symbol for the entity "triangle", subdivided in several subsymbol constructors.

A concrete triangle is always described by one of the leaf contructors :

Equilateral, Scalene_right, Isoceles_right, Isoceles_obtuse, Isoceles_acute, Scalene_right, Scalene_oblique_acute, Scalene_oblique_acute.

The type of a Symbol is not allowed to use a container as constructor, because Containers are used to define Formulas and not Symbols.

For example it is possible in Caml to write

type triangle_symbol =
  | Equilateral
  | Isoceles
  | Obtuse
  | Acute
  | Right	    

and isoceles_right = Isoceles * Right
and Isoceles_obtuse = Isoceles * Obtuse
and Isoceles_acute = Isoceles * Acute

and Scalene_right = Scalene * Right
and Scalene_obtuse = Scalene * Obtuse
and Scalene_acute = Scalene * Acute
;;

=== The Formula ===

To compute the value e_value of an entity E you need to store the values s1_value, ..., sn_value of pre-calculated entities of E1, ..., En in order to apply the building function of E on them.
 
E1, ..., En are called the sons of E, their symbols S1,..., Sn are stored in a datasstructure : the formula F of E.

For example to compute any value on a triangle we need to know the values od the coordinates of the 3 points it is made of.

We first need to define the Symbols for a Point and a Vector.

type point_symbol = 
  | One_dimension_point
  | Two_dimension_point
  | Three_dimension_point
  | Huge_dimension_point
;;

type vector_symbol = 
  | One_dimension_vector
  | Two_dimension_vector
  | Three_dimension_vector
  | Huge_dimension_vector
;;

Therefore we propose the following design for triangle_formula : 

type triangle_formula = (point_symbol, vector_symbol) doublet;;

This tells that any value computed for a Triangle should use that 
of a point (its summit) and of a vector (its basis).

Remark I :
  Such a design defines a unique triangle : 
  each vertex point could not be confused with the two others. 
  The summit is not confused with the basis points and the basis is made of two 
  individuated points the origin and the end of the vector (see below).

Remark II :
  This design has a drawback : 
  it is possible to mix a two-dimension point with a 3-dimension vector. 

  To circumvent this, it should be necessary to define a Formula_constrained
  which should couple specific Camltypes (one for each dimension case). 
  This is not very elegant for this simple example.

  It has nevertheless been done for Molecule Formula (tree) where each specific 
  topological location in the Tree is occupied by a specific Atom sub-type.

------------------ alternative design not beeing a true symbol --------  ----------
Of course a way of avoiding this would have been to parametrize the dimension of the space like this :

type 'd point_symbol = Point of 'd;;

type 'd vector_symbol = Vector of 'd;;

type 'd point_symbol = string;;

type 'd coordinate_symbol = Coordinate of 'd 
;;

type x_symbol = Coordinate 1;;
type y_symbol = Coordinate 2;;
type z_symbol = Coordinate 3;;


N.B.:
By introducing the dimension as a parameter 'd, the design is no more that of a symbol - a name - but a kind of Formula.

type 'd triangle_formula = ('d point_symbol, 'd vector_symbol) doublet;;

The dimension is constrained to be the same for all types, but the parameter "'d" isnot constrained to some domain (int for example)

We introduced a parameter.

We also have :

type 'd vector_formula = ('d point_symbol, 'd point_symbol) doublet;;

type 'd point_formula = 'd coordinate_symbol list;;

type coordinate = float;;


A point has NO formula : it is a leaf of the Production tree (PT), which describes the relation given by the formulas :

                    'd Triangle
                    /         \                  
               'd Point    'd Vector
                 / \          /     \
       coordinate   \   'd Point    'd Point
              coordinate    / \      /     \
                  coordinate   \ coordinate \
                           coordinate        coordinate
=== The Path ===

==== Tree Sole Index ===

It is a list of integer associated with each node :

1. the index of root is [1]
2. the index of any son is obtained by pre-appending its ordinal in the set of its brother to the index of its father

Properties :
1. any node is uniquely associated to its canonical index.
2. the depth of a path is the length of its index.
3. the index of a father can be deduced from 

==== The path of an entity ===

The Path of 'd is reduced to a string "space_dimension" 

The Path of the triangle is

   the list [('d triangle_symbol, [1])]

The Path of the summit is

   the list [('d point_symbol, [1; 1]), ('d triangle_symbol, [1])]

The Path of the basis is

   the list [('d vector_symbol, [2; 1]), ('d triangle_symbol, [1])]

The Path of the origin of the basis is

   the list [('d point_symbol, [1; 2; 1]); ('d vector_symbol, [2; 1]); ('d triangle_symbol, [1])]

The Path of the end of the basis is

   the list [('d point_symbol, [2; 2; 1]); ('d vector_symbol, [2; 1]); ('d triangle_symbol, [1])]


Given the PT of an entity "e", the Path a node "n" to the Root "e" is the list of the Indexed-Symbol of all its ancestor nodes including itself.

Properties :

1. Each path defines uniquely the Value of an entity.


=== The Value ===

A value is a Formula in which all son Symbol have been replaced by the Values of the Sons. Iterating ob Sons of Sons we see that the Value of any entity "e" can always be expressed as an expression of the Values of the leaves of its PT.

The Values of the leaves of a PT and of the parameters of the problem (here 'd) are called Data or Calculation Conditions of "e" and provided by a Databank external to the Code.

For a triangle :
  type 'd coordinate_value = extracted from Database.

  type 'd point_value = ('d coordinate_value) list;;
  type 'd vector_value = ('d point_value, 'd point_value) doublet;;
  type 'd triangle_value = ('d point_value, 'd vector_value) doublet;;

The values of the parameter 'd and the three Points are taken from a Databank, using
as Key the "path" of each data.

Each value is generated by applying a function make :

val make : 
  'a symbol -> 'a value

through this : 
  ('a symbol, sole_index) -> 'a formula -> 'a value 


The value of triangle T is :

                     Triangle [1]
                    /       \                  
                Point        Vector [2;1]
                 / \        /     \
                2.  2.   Point   Point  [2; 2; 1]
                         /  \    /  \
                        1.   1. 1.   4. [2; 2; 2; 1]
     
In fact, it is nothing else than the list of the 6 coordinates associated the Sole_index of each
Coordinate.
 [(2., [1;1;1]) (2., [2;1;1]); [ [(1., [1;1;2;1]) (1., [2;1;2;1])]; [(1., [1;2;2;1]) (4., [2;2;2;1])] ]

Remark :

The values here are coordinates i.e. float number
It could also be a color ...
So the coordinate or the color are not values but properties built on values
              
== Database ==

A Database belongs to the Data World.
It is a repository where all Information are accessed with a Key.

In Caml an information is obtained through a function provide :

   let value = Data_base.provide key;;


Databases usually contain two kinds of information : Formula and Data.

For example 
1. a Basisset Database contains the composition (Formula) of a Basis function entry (how many gaussians of what kind) and the Values of Data associated (the coefficient and the exponents of each gaussian).

A DataBase is structured hierarchicaly like a Tree.
It has its own entities Symbol, Formulas and Paths. 

For the triangle a Database could be :

                  y

                  ^
                2.-           A
                  |           
                  |
                  |  
                1.-     B                 C
                  |
      ------|-----|-----|-----|-----|-----|-> x
                  0.    1.    2.    3.    4.

Database file I :
triangle T
summit   A
basis    B C

vertex A       2. 2. 
vertex B       1. 1. 
vertex C       1. 4. 

triangle U
summit   A
basis    B C

vertex A       1. -1.
vertex B       0. 0. 
vertex C       2. 0. 


The Database Tree.

     x y z   x y z   x y z
    
       A       B      C
                 
     summit      basis

          triangle
 
                                   database 


Database path for a triangle [T]
Database path for a summit [A; T]; 
Database path for a x coordinate of summit [x; A; T] 
Database path for a y coordinate of basis origin  [x; A; A B; T] 
