
(** {3 The functionalities for a Symbol for a Musicset.} *)

let nam_cod = "musicset_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Musicset_symbol_t.Mp3_file_symbol sym_mpf ->
      Mp3_file_symbol_v.name sym_mpf
  | Musicset_symbol_t.Id3_tag_symbol sym_idt ->
      Id3_tag_symbol_v.name sym_idt
  | Musicset_symbol_t.Mp3_header_symbol sym_mph ->
      Mp3_header_symbol_v.name sym_mph
  | Musicset_symbol_t.Mp3_header_field_symbol sym_mhf ->
      Mp3_header_field_symbol_v.name sym_mhf
;;


(** {6 Upgrading} *)


let musicset_symbol_of_mp3_file_symbol sym_mpf = 
  Musicset_symbol_t.Mp3_file_symbol sym_mpf
;;

let musicset_symbol_of_file_id3v1_symbol sym_fii = 
  let sym_mpf = Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v1_symbol sym_fii in
    musicset_symbol_of_mp3_file_symbol sym_mpf
;;

let musicset_symbol_of_file_id3v2_symbol sym_fii = 
  let sym_mpf = Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v2_symbol sym_fii in
    musicset_symbol_of_mp3_file_symbol sym_mpf
;;

let musicset_symbol_of_id3_tag_symbol sym_idt = 
  Musicset_symbol_t.Id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v1_tag_symbol sym_idt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_symbol sym_idt in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v1_tag_128_symbol sym_it1 = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_128_symbol sym_it1 in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v1_tag_227_symbol sym_it2 = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_227_symbol sym_it2 in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_tag_symbol sym_idt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_symbol sym_idt in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_base_tag_symbol sym_ibt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_base_tag_symbol sym_ibt in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_unique_symbol sym_itu in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_tag_specific_symbol sym_its = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_specific_symbol sym_its in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts in
    musicset_symbol_of_id3_tag_symbol sym_idt
;;

let musicset_symbol_of_mp3_header_symbol sym_mph = 
  Musicset_symbol_t.Mp3_header_symbol sym_mph
;;

let musicset_symbol_of_mp3_header_field_symbol sym_mhf = 
  Musicset_symbol_t.Mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_mp3_header_field_onebit_symbol sym_hf1 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_hf1 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_version_symbol sym_ven = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_version_symbol sym_ven in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_mp3_header_field_twobits_symbol sym_hf2 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_twobits_symbol sym_hf2 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_mp3_header_field_fourbits_symbol sym_hf4 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol sym_hf4 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_mp3_header_field_elevenbits_symbol sym_hfe = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol sym_hfe in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf
;;


(** {6 Abbreviating} *)


let file_id3v1_mp3_header_1 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v1_mp3_header_1;;

let file_id3v1_mp3_header_2 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v1_mp3_header_2;;

let file_id3v1_mp3_header_2_5 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v1_mp3_header_2_5;;

let file_id3v2_mp3_header_1 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v2_mp3_header_1;;

let file_id3v2_mp3_header_2 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v2_mp3_header_2;;

let file_id3v2_mp3_header_2_5 = musicset_symbol_of_mp3_file_symbol Mp3_file_symbol_v.file_id3v2_mp3_header_2_5;;

let header_3 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.header_3;;

let title_30 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.title_30;;

let artist_30 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.artist_30;;

let album_30 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.album_30;;

let year_4 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.year_4;;

let comment_28 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.comment_28;;

let comment_30 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.comment_30;;

let zero_byte_1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.zero_byte_1;;

let track_1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.track_1;;

let genre_1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.genre_1;;

let header_4 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.header_4;;

let title_60 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.title_60;;

let artist_60 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.artist_60;;

let album_60 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.album_60;;

let speed_1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.speed_1;;

let genre_30 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.genre_30;;

let start_time_6 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.start_time_6;;

let end_time_6 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.end_time_6;;

let id3v1_1_tag = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.id3v1_1_tag;;

let AENC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.AENC;;

let APIC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.APIC;;

let COMM = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.COMM;;

let COMR = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.COMR;;

let ENCR = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.ENCR;;

let ETCO = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.ETCO;;

let GEOB = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.GEOB;;

let GRID = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.GRID;;

let LINK = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.LINK;;

let MCDI = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.MCDI;;

let MLLT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.MLLT;;

let OWNE = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.OWNE;;

let PCNT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.PCNT;;

let POPM = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.POPM;;

let POSS = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.POSS;;

let PRIV = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.PRIV;;

let RBUF = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.RBUF;;

let RVRB = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.RVRB;;

let SYLT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.SYLT;;

let SYTC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.SYTC;;

let TALB = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TALB;;

let TBPM = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TBPM;;

let TCON = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TCON;;

let TCOP = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TCOP;;

let TDLY = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDLY;;

let TENC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TENC;;

let TFLT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TFLT;;

let TIT1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TIT1;;

let TIT2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TIT2;;

let TIT3 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TIT3;;

let TKEY = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TKEY;;

let TLAN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TLAN;;

let TLEN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TLEN;;

let TMED = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TMED;;

let TOAL = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TOAL;;

let TOFN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TOFN;;

let TOWN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TOWN;;

let TPE2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPE2;;

let TPE3 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPE3;;

let TPE4 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPE4;;

let TPOS = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPOS;;

let TPUB = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPUB;;

let TRCK = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TRCK;;

let TRSN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TRSN;;

let TRSO = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TRSO;;

let TSRC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSRC;;

let TSSE = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSSE;;

let TXXX = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TXXX;;

let UFID = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.UFID;;

let USER = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.USER;;

let USLT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.USLT;;

let WCOM = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WCOM;;

let WCOP = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WCOP;;

let WOAF = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WOAF;;

let WOAR = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WOAR;;

let WOAS = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WOAS;;

let WORS = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WORS;;

let WPAY = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WPAY;;

let WPUB = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WPUB;;

let WXXX = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.WXXX;;

let TPE1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPE1;;

let TCOM = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TCOM;;

let TEXT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TEXT;;

let TOLY = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TOLY;;

let TOPE = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TOPE;;

let EQUA = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.EQUA;;

let IPLS = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.IPLS;;

let RVAD = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.RVAD;;

let TDAT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDAT;;

let TIME = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TIME;;

let TORY = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TORY;;

let TRDA = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TRDA;;

let TYER = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TYER;;

let TSIZ = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSIZ;;

let ASPI = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.ASPI;;

let EQU2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.EQU2;;

let RVA2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.RVA2;;

let SEEK = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.SEEK;;

let SIGN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.SIGN;;

let TDEN = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDEN;;

let TDOR = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDOR;;

let TDRC = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDRC;;

let TDRL = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDRL;;

let TDTG = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TDTG;;

let TIPL = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TIPL;;

let TMCL = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TMCL;;

let TMOO = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TMOO;;

let TPRO = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TPRO;;

let TSOA = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSOA;;

let TSOP = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSOP;;

let TSOT = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSOT;;

let TSST = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.TSST;;

let mp3_header_1 = musicset_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_1;;

let mp3_header_2 = musicset_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_2;;

let mp3_header_2_5 = musicset_symbol_of_mp3_header_symbol Mp3_header_symbol_v.mp3_header_2_5;;

let version_1 = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_1;;

let version_2 = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_2;;

let version_2_5 = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_2_5;;

let error_protection = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.error_protection;;

let pad_bit = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.pad_bit;;

let intensity_stereo = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.intensity_stereo;;

let ms_stereo = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.ms_stereo;;

let private_bit = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.private_bit;;

let copyright = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.copyright;;

let original = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.original;;

let layer = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.layer;;

let frequency = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.frequency;;

let mode = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.mode;;

let mode_extension = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.mode_extension;;

let emphasis = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.emphasis;;

let bit_rate = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.bit_rate;;

let sync_word = musicset_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.sync_word;;


(** {6 Making} *)


let make nam s =
  try musicset_symbol_of_mp3_file_symbol
      (Mp3_file_symbol_v.make nam s)
  with Failure "Not_Mp3_file_symbol:mp3_file_symbol_v:make" ->
  try musicset_symbol_of_id3_tag_symbol
      (Id3_tag_symbol_v.make nam s)
  with Failure "Not_Id3_tag_symbol:id3_tag_symbol_v:make" ->
  try musicset_symbol_of_mp3_header_symbol
      (Mp3_header_symbol_v.make nam s)
  with Failure "Not_Mp3_header_symbol:mp3_header_symbol_v:make" ->
  try musicset_symbol_of_mp3_header_field_symbol
      (Mp3_header_field_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_symbol:mp3_header_field_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Musicset subtype" nam s)
      "it does not exists"
      "Check file musicset_symbol_v.ml" 
;;


(** {6 Extracting} *)


let mp3_file_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_file_symbol sym_mpf -> sym_mpf
  | sym_mut -> Error_messages_v.print_fatal_error
      nam_cod "mp3_file_symbol_off_musicset_symbol"
      "Mp3_file_symbol"
      (name sym_mut) "check"
;;

let file_id3v1_symbol_off_musicset_symbol sym_mut = 
  let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mut in 
    Mp3_file_symbol_v.file_id3v1_symbol_off_mp3_file_symbol sym_mpf
;;

let file_id3v2_symbol_off_musicset_symbol sym_mut = 
  let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mut in 
    Mp3_file_symbol_v.file_id3v2_symbol_off_mp3_file_symbol sym_mpf
;;

let id3_tag_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Id3_tag_symbol sym_idt -> sym_idt
  | sym_mut -> Error_messages_v.print_fatal_error
      nam_cod "id3_tag_symbol_off_musicset_symbol"
      "Id3_tag_symbol"
      (name sym_mut) "check"
;;

let id3v1_tag_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v1_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v1_tag_128_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt
;;

let id3v1_tag_227_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_base_tag_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_unique_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_multiple_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_specific_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_3_tag_specific_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_4_tag_specific_symbol_off_musicset_symbol sym_mut = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
    Id3_tag_symbol_v.id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let mp3_header_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_symbol sym_mph -> sym_mph
  | sym_mut -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_symbol_off_musicset_symbol"
      "Mp3_header_symbol"
      (name sym_mut) "check"
;;

let mp3_header_field_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_field_symbol sym_mhf -> sym_mhf
  | sym_mut -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_symbol_off_musicset_symbol"
      "Mp3_header_field_symbol"
      (name sym_mut) "check"
;;

let mp3_header_field_onebit_symbol_off_musicset_symbol sym_mut = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
    Mp3_header_field_symbol_v.mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
;;

let version_symbol_off_musicset_symbol sym_mut = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
    Mp3_header_field_symbol_v.version_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_twobits_symbol_off_musicset_symbol sym_mut = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
    Mp3_header_field_symbol_v.mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_fourbits_symbol_off_musicset_symbol sym_mut = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
    Mp3_header_field_symbol_v.mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_elevenbits_symbol_off_musicset_symbol sym_mut = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
    Mp3_header_field_symbol_v.mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
;;


(** {6 Querying} *)


let is_mp3_file_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_file_symbol _ -> true
  | _ -> false
;;

let is_file_id3v1_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_file_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mut in 
     Mp3_file_symbol_v.is_file_id3v1_symbol_off_mp3_file_symbol sym_mpf
    end
;;

let is_file_id3v2_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_file_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mut in 
     Mp3_file_symbol_v.is_file_id3v2_symbol_off_mp3_file_symbol sym_mpf
    end
;;

let is_id3_tag_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Id3_tag_symbol _ -> true
  | _ -> false
;;

let is_id3v1_tag_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v1_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v1_tag_128_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v1_tag_227_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_base_tag_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_unique_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_multiple_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_specific_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_3_tag_specific_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_4_tag_specific_symbol_off_musicset_symbol sym_mut =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mut in 
     Id3_tag_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_mp3_header_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_field_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_onebit_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
     Mp3_header_field_symbol_v.is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_version_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
     Mp3_header_field_symbol_v.is_version_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_twobits_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
     Mp3_header_field_symbol_v.is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_fourbits_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
     Mp3_header_field_symbol_v.is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_elevenbits_symbol_off_musicset_symbol sym_mut =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mut)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mut in 
     Mp3_header_field_symbol_v.is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;



(** created by ./generator musicset implementation symbol at 17:43 6 Jun 2012. *)



