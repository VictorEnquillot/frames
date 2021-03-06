Field Formats

   Each record type is presented in a table which contains the division
 of the records into fields by column number, defined data type, field
 name or a quoted string which must appear in the field, and field
 definition. Any column not specified must be left blank.
   Each field contains an identified data type which can be validated by a
 program.
 These are:

AChar	           An alphabetic character (A-Z, a-z).
                	"%[A-Z-a-z]"
Atom	           Atom name which follow the naming rules in Appendix 3.
                   	"%s" ???
Character	   Any non-control character in the ASCII character set or a
                   space.
                   	"%[\020-\255]"
Continuation	   A two-character field that is either blank (for the first
                   record of a set) or contains a two digit number
                   right-justified and blank-filled which counts continuation
                   records starting with 2.  The continuation number must be
                   followed by a blank.
                   	" %2s@ " (fun n -> ....)
Date	           A 9 character string in the form dd-mmm-yy where DD is the
                   day of the month, zero-filled on the left (e.g., 04); MMM is
                   the common English 3-letter abbreviation of the month; and
                   YY is a year in the 20th century.  This must represent a
                   valid date.
                   	"%9s"
IDcode	           A PDB identification code which consists of 4 characters,
                   the first of which is a digit in the range 0 - 9; the
                   remaining 3 are alpha-numeric, and letters are upper case
                   only.  Entries with a 0 as the first character do not
                   contain coordinate data.
                   	"%1i%3[A-Z0-9]"
Integer	           Right-justified blank-filled integer value.
                   	"%d"
Token	           A sequence of non-space characters followed by a colon and a
                   space.
                   	"%[^ ]: "
List	           A String that is composed of text separated with commas.
                   	" ?? "
LString	           A literal string of characters.  All spacing is significant
                   and must be preserved.
                   	"%S" ??
LString(n)	   An LString with exactly n characters.
                   	"%ns" ???
Real(n,m)	   Real (floating point) number in the FORTRAN format Fn.m.
                   	"%f" ???
Record name	   The name of the record: 6 characters, left-justified and
                   blank-filled.
                   	"%6s "
Residue name	   One of the standard amino acid or nucleic acids, as listed
                   below, or the non-standard group designation as defined in
                   the HET dictionary.  Field is right-justified.
                   	" %s"
SList	           A String that is composed of text separated with
                   semi-colons.
                   	"%s" ???
Specification	   A String composed of a token and its associated value
                   separated by a colon.
                   	"%s@:%s" ???
Specification list	  A sequence of Specifications, separated
                          by semi-colons.
                   	" ; " ???
String	           A sequence of characters.  These characters may have
                   arbitrary spacing, but should be interpreted as directed
                   below.
                   	" %s " ???
String(n)	   A String with exactly n characters.
                   	"%ns" ???
SymOP	           An integer field of from 4 to 6 digits, right-justified, of
                   the form nnnMMM where nnn is the symmetry operator number and
                   MMM is the translation vector.  See details in Appendix 1.
                   	" %6d"
