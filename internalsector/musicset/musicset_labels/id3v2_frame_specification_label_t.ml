(** {3 Type for a Mp3 Tag} *)

(*http://en.wikipedia.org/w/index.php?title=ID3 *)

type id3v2_frame_specification_label =
  | AENC
  | APIC
  | COMM
  | COMR
  | ENCR
  | EQUA
  | ETCO
  | GEOB
  | GRID
  | IPLS
  | LINK
  | MCDI
  | MLLT
  | OWNE
  | PCNT
  | POPM
  | POSS
  | PRIV
  | RBUF
  | RVAD
  | RVRB
  | SYLT
  | SYTC
  | TALB
  | TBPM
  | TCOM
  | TCON
  | TCOP
  | TDAT
  | TDLY
  | TENC
  | TEXT
  | TFLT
  | TIME
  | TIT1
  | TIT2
  | TIT3
  | TKEY
  | TLAN
  | TLEN
  | TMED
  | TOAL
  | TOFN
  | TOLY
  | TOPE
  | TORY
  | TOWN
  | TPE1
  | TPE2
  | TPE3
  | TPE4
  | TPOS
  | TPUB
  | TRCK
  | TRDA
  | TRSN
  | TRSO
  | TSIZ
  | TSRC
  | TSSE
  | TXXX
  | TYER
  | UFID
  | USER
  | USLT
  | WCOM
  | WCOP
  | WOAF
  | WOAR
  | WOAS
  | WORS
  | WPAY
  | WPUB
  | WXXX
;;

(**
 
 http://en.wikipedia.org/w/index.php?title=ID3

 ID3v2 Frame Specification (Version 2.3)

 AENC Audio encryption
 APIC Attached picture

 COMM Comments
 COMR Commercial frame

 ENCR Encryption method registration
 EQUA Equalization (replaced by EQU2 in v2.4)
 ETCO Event timing codes

 GEOB General encapsulated object
 GRID Group identification registration

 IPLS Involved people list (replaced by TMCL and TIPL in v2.4)

 LINK Linked information

 MCDI Music CD identifier
 MLLT MPEG location lookup table

 OWNE Ownership frame

 PRIV Private frame
 PCNT Play counter
 POPM Popularimeter
 POSS Position synchronisation frame

 RBUF Recommended buffer size
 RVAD Relative volume adjustment (replaced by RVA2 in v2.4)
 RVRB Reverb

 SYLT Synchronized lyric/text
 SYTC Synchronized tempo codes

 TALB Album/Movie/Show title
 TBPM BPM (beats per minute)
 TCOM Composer
 TCON Content type
 TCOP Copyright message
 TDAT Date (replaced by TDRC in v2.4)
 TDLY Playlist delay
 TENC Encoded by
 TEXT Lyricist/Text writer
 TFLT File type
 TIME Time (replaced by TDRC in v2.4)
 TIT1 Content group description
 TIT2 Title/songname/content description
 TIT3 Subtitle/Description refinement
 TKEY Initial key
 TLAN Language(s)
 TLEN Length
 TMED Media type
 TOAL Original album/movie/show title
 TOFN Original filename
 TOLY Original lyricist(s)/text writer(s)
 TOPE Original artist(s)/performer(s)
 TORY Original release year (replaced by TDOR in v2.4)
 TOWN File owner/licensee
 TPE1 Lead performer(s)/Soloist(s)
 TPE2 Band/orchestra/accompaniment
 TPE3 Conductor/performer refinement
 TPE4 Interpreted, remixed, or otherwise modified by
 TPOS Part of a set
 TPUB Publisher
 TRCK Track number/Position in set
 TRDA Recording dates (replaced by TDRC in v2.4)
 TRSN Internet radio station name
 TRSO Internet radio station owner
 TSIZ Size (deprecated in v2.4)
 TSRC ISRC (international standard recording code)
 TSSE Software/Hardware and settings used for encoding
 TYER Year (replaced by TDRC in v2.4)
 TXXX User defined text information frame

 UFID Unique file identifier
 USER Terms of use
 USLT Unsynchronized lyric/text transcription

 WCOM Commercial information
 WCOP Copyright/Legal information
 WOAF Official audio file webpage
 WOAR Official artist/performer webpage
 WOAS Official audio source webpage
 WORS Official internet radio station homepage
 WPAY Payment
 WPUB Publishers official webpage
 WXXX User defined URL link frame
*)
