(** {3 Type for Mp3_ID3v1} *)

(* http://en.wikipedia.org/wiki/ID3            *)

type mp3_id3_v1 = {
    header : string;
    title : string;
    artist : string;
    album : string;
    year  : int;
    comment : string;
    zero_byte : bool;
    track : int;
    genre : int;
  }

(* 
Layout

Strings are either space- or zero-padded. Unset string entries are filled using an empty string.

ID3v1: 128 bytes
Field 	Length 	Description
header 	3 	"TAG"
title 	30 	30 characters of the title
artist 	30 	30 characters of the artist name
album 	30 	30 characters of the album name
year 	4 	A four-digit year
comment 	28[3] or 30 	The comment.
zero-byte[3] 	1 	If a track number is stored, this byte contains a binary 0.
track[3] 	1 	The number of the track on the album, or 0. Invalid, if previous byte is not a binary 0.
genre 	1 	Index in a list of genres, or 255

Extended tag (placed before the ID3v1 tag): 227 bytes
Field 	Length 	Description
header 	4 	"TAG+"
title 	60 	Next 60 characters of the title (90 characters total)
artist 	60 	Next 60 characters of the artist name
album 	60 	Next 60 characters of the album name
speed 	1 	0=unset, 1=slow, 2= medium, 3=fast, 4=hardcore
genre 	30 	A free-text field for the genre
start-time 	6 	the start of the music as mmm:ss
end-time 	6 	the end of the music as mmm:ss
*)
