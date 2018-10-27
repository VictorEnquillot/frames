Types of Records

   The PDB file may also be viewed as a collection of record types.
 Each record type consists of one or more lines.
 Each record type is further divided into fields.


Single

   Single records may only appear one time (without continuations)
 in a file.

CRYST1	          Unit cell parameters, space group, and Z.
END	          Last record in the file.
HEADER	          First line of the entry, contains PDB ID code,
                  classification, and date of deposition.
MASTER	          Control record for bookkeeping.
ORIGXn	          Transformation from orthogonal coordinates to the submitted
                  coordinates (n = 1, 2, or 3).
SCALEn	          Transformation from orthogonal coordinates to fractional
                  crystallographic coordinates (n = 1, 2, or 3).

Single Continued

   These are records that conceptually exist only once in an entry, but the
 information content may exceed the number of columns available.
 These records are therefore continued on subsequent lines.
 Listed alphabetically, these are:

AUTHOR	          List of contributors.
CAVEAT	          Severe error indicator.  Entries with this record must be
                  used with care.
COMPND	          Description of macromolecular contents of the entry.
EXPDTA	          Experimental technique used for the structure determination.
KEYWDS	          List of keywords describing the macromolecule.
OBSLTE	          Statement that the entry has been removed from distribution
                  and list of the ID code(s) which replaced it.
SOURCE	          Biological source of macromolecules in the entry.
SPRSDE	          List of entries withdrawn from release and replaced by
                  current entry.
TITLE	          Description of the experiment represented in the entry.

Multiple

   Most record types appear multiple times, often in groups where the
 information is not logically concatenated but is presented in the form
 of a list. Many of these record types have a custom serialization that
 may be used not only to order the records, but also to connect to other
 record types.
 Listed alphabetically, these are:

ANISOU	          Anisotropic temperature factors.
ATOM	          Atomic coordinate records for standard groups.
CISPEP	          Identification of peptide residues in cis conformation.
CONECT	          Connectivity records.
DBREF	          Reference to the entry in the sequence database(s).
HELIX	          Identification of helical substructures.
HET	          Identification of non-standard groups or residues (heterogens)
HETSYN	          Synonymous compound names for heterogens.
HYDBND	          Identification of hydrogen bonds.
LINK	          Identification of inter-residue bonds.
MODRES	          Identification of modifications to standard residues.
MTRIXn	          Transformations expressing non-crystallographic symmetry
                  (n = 1, 2, or 3).
                  There may be multiple sets of these records.
REVDAT	          Revision date and related information.
SEQADV	          Identification of conflicts between PDB and the named sequence
                  database.
SEQRES	          Primary sequence of backbone residues.
SHEET	          Identification of sheet substructures.
SIGATM	          Standard deviations of atomic parameters.
SIGUIJ	          Standard deviations of anisotropic temperature factors.
SITE	          Identification of groups comprising important sites.
SLTBRG	          Identification of salt bridges
SSBOND	          Identification of disulfide bonds.
TURN	          Identification of turns.
TVECT	          Translation vector for infinite covalently connected
                  structures.
USER	          Note that a PDB file existing outside of the PDB official
                  release may contain locally-defined records beginning
                  with "USER".

Multiple Continued

   These are records that conceptually exist multiple times in an entry,
 but the information content may exceed the number of columns available.
 These records are therefore continued on subsequent lines.
 Listed alphabetically, these are:

FORMUL	          Chemical formula of non-standard groups.
HETATM	          Atomic coordinate records for heterogens.
HETNAM	          Compound name of the heterogens.

Grouping

   There are three record types used to group other records.
 Listed alphabetically, these are:

ENDMDL	          End-of-model record for multiple structures in a single
                  coordinate entry.
MODEL	          Specification of model number for multiple structures in a
                  single coordinate entry.
TER	          Chain terminator.

Other

   The remaining record types have a detailed inner structure.
 Listed alphabetically, these are:

JRNL	          Literature citation that defines the coordinate set.
REMARK	          General remarks, some are structured and some are free form.
NULL	          When mandatory data are not provided, the record name
                  must appear in the entry with a NULL indicator.
