(** {3 Musicset_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Musicset_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


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
  | Musicset_symbol_t.Elementary_stream_symbol sym_els ->
      Elementary_stream_symbol_v.name sym_els
;;


(** {6 Extracting_topson} *)

let mp3_file_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_file_symbol sym_mpf -> sym_mpf
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_file_symbol_off_musicset_symbol"
      "Mp3_file_symbol"
      (name sym_mus) "check"
;;

let id3_tag_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Id3_tag_symbol sym_idt -> sym_idt
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "id3_tag_symbol_off_musicset_symbol"
      "Id3_tag_symbol"
      (name sym_mus) "check"
;;

let mp3_header_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_symbol sym_mph -> sym_mph
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_symbol_off_musicset_symbol"
      "Mp3_header_symbol"
      (name sym_mus) "check"
;;

let mp3_header_field_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_field_symbol sym_mhf -> sym_mhf
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_symbol_off_musicset_symbol"
      "Mp3_header_field_symbol"
      (name sym_mus) "check"
;;

let elementary_stream_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Elementary_stream_symbol sym_els -> sym_els
  | sym_mus -> Error_messages_v.print_fatal_error
      nam_cod "elementary_stream_symbol_off_musicset_symbol"
      "Elementary_stream_symbol"
      (name sym_mus) "check"
;;


(** {6 Extracting_grandson} *)

let file_id3v1_symbol_off_musicset_symbol sym_mus = 
  let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mus in 
    Mp3_file_symbol_v.file_id3v1_symbol_off_mp3_file_symbol sym_mpf
;;

let file_id3v2_symbol_off_musicset_symbol sym_mus = 
  let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mus in 
    Mp3_file_symbol_v.file_id3v2_symbol_off_mp3_file_symbol sym_mpf
;;

let id3v1_tag_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v1_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v1_tag_128_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt
;;

let id3v1_tag_227_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_base_tag_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_unique_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_multiple_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_tag_specific_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_3_tag_specific_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let id3v2_4_tag_specific_symbol_off_musicset_symbol sym_mus = 
  let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
    Id3_tag_symbol_v.id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt
;;

let mp3_header_field_onebit_symbol_off_musicset_symbol sym_mus = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
    Mp3_header_field_symbol_v.mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
;;

let version_symbol_off_musicset_symbol sym_mus = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
    Mp3_header_field_symbol_v.version_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_twobits_symbol_off_musicset_symbol sym_mus = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
    Mp3_header_field_symbol_v.mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_fourbits_symbol_off_musicset_symbol sym_mus = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
    Mp3_header_field_symbol_v.mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_elevenbits_symbol_off_musicset_symbol sym_mus = 
  let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
    Mp3_header_field_symbol_v.mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
;;


(** {6 Querying_topson} *)

let is_mp3_file_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_file_symbol _ -> true
  | _ -> false
;;

let is_id3_tag_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Id3_tag_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Mp3_header_field_symbol _ -> true
  | _ -> false
;;

let is_elementary_stream_symbol_off_musicset_symbol = function
  | Musicset_symbol_t.Elementary_stream_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)

let is_file_id3v1_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_file_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mus in 
     Mp3_file_symbol_v.is_file_id3v1_symbol_off_mp3_file_symbol sym_mpf
    end
;;

let is_file_id3v2_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_file_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mpf = mp3_file_symbol_off_musicset_symbol sym_mus in 
     Mp3_file_symbol_v.is_file_id3v2_symbol_off_mp3_file_symbol sym_mpf
    end
;;

let is_id3v1_tag_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v1_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v1_tag_128_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v1_tag_128_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v1_tag_227_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v1_tag_227_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_base_tag_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_base_tag_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_unique_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_tag_unique_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_multiple_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_tag_multiple_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_tag_specific_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_3_tag_specific_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_id3v2_4_tag_specific_symbol_off_musicset_symbol sym_mus =
  if not (is_id3_tag_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_idt = id3_tag_symbol_off_musicset_symbol sym_mus in 
     Id3_tag_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3_tag_symbol sym_idt
    end
;;

let is_mp3_header_field_onebit_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
     Mp3_header_field_symbol_v.is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_version_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
     Mp3_header_field_symbol_v.is_version_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_twobits_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
     Mp3_header_field_symbol_v.is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_fourbits_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
     Mp3_header_field_symbol_v.is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_elevenbits_symbol_off_musicset_symbol sym_mus =
  if not (is_mp3_header_field_symbol_off_musicset_symbol sym_mus)
  then false
  else
    begin
     let sym_mhf = mp3_header_field_symbol_off_musicset_symbol sym_mus in 
     Mp3_header_field_symbol_v.is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;


(** {6 Upgrading_topson} *)

let musicset_symbol_of_mp3_file_symbol sym_mpf = 
  Musicset_symbol_t.Mp3_file_symbol sym_mpf
;;

let musicset_symbol_of_id3_tag_symbol sym_idt = 
  Musicset_symbol_t.Id3_tag_symbol sym_idt
;;

let musicset_symbol_of_mp3_header_symbol sym_mph = 
  Musicset_symbol_t.Mp3_header_symbol sym_mph
;;

let musicset_symbol_of_mp3_header_field_symbol sym_mhf = 
  Musicset_symbol_t.Mp3_header_field_symbol sym_mhf
;;

let musicset_symbol_of_elementary_stream_symbol sym_els = 
  Musicset_symbol_t.Elementary_stream_symbol sym_els
;;


(** {6 Upgrading_grandson} *)

let musicset_symbol_of_file_id3v1_symbol sym_fii = 
  let sym_mpf = Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v1_symbol sym_fii in
    musicset_symbol_of_mp3_file_symbol sym_mpf

let musicset_symbol_of_file_id3v2_symbol sym_fii = 
  let sym_mpf = Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v2_symbol sym_fii in
    musicset_symbol_of_mp3_file_symbol sym_mpf

let musicset_symbol_of_id3v1_tag_symbol sym_idt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_symbol sym_idt in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v1_tag_128_symbol sym_it1 = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_128_symbol sym_it1 in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v1_tag_227_symbol sym_it2 = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v1_tag_227_symbol sym_it2 in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_tag_symbol sym_idt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_symbol sym_idt in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_base_tag_symbol sym_ibt = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_base_tag_symbol sym_ibt in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_tag_unique_symbol sym_itu = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_unique_symbol sym_itu in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_tag_multiple_symbol sym_itm = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_multiple_symbol sym_itm in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_tag_specific_symbol sym_its = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_tag_specific_symbol sym_its in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_3_tag_specific_symbol sym_3ts = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_3_tag_specific_symbol sym_3ts in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_id3v2_4_tag_specific_symbol sym_4ts = 
  let sym_idt = Id3_tag_symbol_v.id3_tag_symbol_of_id3v2_4_tag_specific_symbol sym_4ts in
    musicset_symbol_of_id3_tag_symbol sym_idt

let musicset_symbol_of_mp3_header_field_onebit_symbol sym_hf1 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_hf1 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf

let musicset_symbol_of_version_symbol sym_ver = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_version_symbol sym_ver in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf

let musicset_symbol_of_mp3_header_field_twobits_symbol sym_hf2 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_twobits_symbol sym_hf2 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf

let musicset_symbol_of_mp3_header_field_fourbits_symbol sym_hf4 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol sym_hf4 in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf

let musicset_symbol_of_mp3_header_field_elevenbits_symbol sym_hfe = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol sym_hfe in
    musicset_symbol_of_mp3_header_field_symbol sym_mhf


(** {6 Abbreviating_topson} *)


(** {6 Abbreviating_grandson} *)

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

let aenc = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.aenc;;

let apic = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.apic;;

let comm = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.comm;;

let comr = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.comr;;

let encr = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.encr;;

let etco = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.etco;;

let geob = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.geob;;

let grid = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.grid;;

let link = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.link;;

let mcdi = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.mcdi;;

let mllt = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.mllt;;

let owne = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.owne;;

let pcnt = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.pcnt;;

let popm = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.popm;;

let poss = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.poss;;

let priv = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.priv;;

let rbuf = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.rbuf;;

let rvrb = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.rvrb;;

let sylt = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.sylt;;

let sytc = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.sytc;;

let talb = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.talb;;

let tbpm = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tbpm;;

let tcon = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tcon;;

let tcop = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tcop;;

let tdly = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdly;;

let tenc = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tenc;;

let tflt = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tflt;;

let tit1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tit1;;

let tit2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tit2;;

let tit3 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tit3;;

let tkey = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tkey;;

let tlan = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tlan;;

let tlen = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tlen;;

let tmed = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tmed;;

let toal = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.toal;;

let tofn = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tofn;;

let town = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.town;;

let tpe2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpe2;;

let tpe3 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpe3;;

let tpe4 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpe4;;

let tpos = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpos;;

let tpub = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpub;;

let trck = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.trck;;

let trsn = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.trsn;;

let trso = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.trso;;

let tsrc = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsrc;;

let tsse = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsse;;

let txxx = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.txxx;;

let ufid = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.ufid;;

let user = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.user;;

let uslt = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.uslt;;

let wcom = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wcom;;

let wcop = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wcop;;

let woaf = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.woaf;;

let woar = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.woar;;

let woas = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.woas;;

let wors = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wors;;

let wpay = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wpay;;

let wpub = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wpub;;

let wxxx = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.wxxx;;

let tpe1 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpe1;;

let tcom = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tcom;;

let text = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.text;;

let toly = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.toly;;

let tope = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tope;;

let equa = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.equa;;

let ipls = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.ipls;;

let rvad = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.rvad;;

let tdat = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdat;;

let time = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.time;;

let tory = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tory;;

let trda = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.trda;;

let tyer = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tyer;;

let tsiz = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsiz;;

let aspi = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.aspi;;

let equ2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.equ2;;

let rva2 = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.rva2;;

let seek = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.seek;;

let sign = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.sign;;

let tden = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tden;;

let tdor = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdor;;

let tdrc = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdrc;;

let tdrl = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdrl;;

let tdtg = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tdtg;;

let tipl = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tipl;;

let tmcl = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tmcl;;

let tmoo = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tmoo;;

let tpro = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tpro;;

let tsoa = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsoa;;

let tsop = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsop;;

let tsot = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsot;;

let tsst = musicset_symbol_of_id3_tag_symbol Id3_tag_symbol_v.tsst;;

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

let elementary_stream_audio = musicset_symbol_of_elementary_stream_symbol Elementary_stream_symbol_v.elementary_stream_audio;;

let elementary_stream_video = musicset_symbol_of_elementary_stream_symbol Elementary_stream_symbol_v.elementary_stream_video;;

let elementary_stream_closed_caption = musicset_symbol_of_elementary_stream_symbol Elementary_stream_symbol_v.elementary_stream_closed_caption;;


(** {6 Making} *)

let make nam s =
  try musicset_symbol_of_mp3_file_symbol
      (Mp3_file_symbol_v.make nam s)
  with Failure "Not_Mp3_file_symbol:Mp3_file_symbol_v:make" ->
  try musicset_symbol_of_id3_tag_symbol
      (Id3_tag_symbol_v.make nam s)
  with Failure "Not_Id3_tag_symbol:Id3_tag_symbol_v:make" ->
  try musicset_symbol_of_mp3_header_symbol
      (Mp3_header_symbol_v.make nam s)
  with Failure "Not_Mp3_header_symbol:Mp3_header_symbol_v:make" ->
  try musicset_symbol_of_mp3_header_field_symbol
      (Mp3_header_field_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_symbol:Mp3_header_field_symbol_v:make" ->
  try musicset_symbol_of_elementary_stream_symbol
      (Elementary_stream_symbol_v.make nam s)
  with Failure "Not_Elementary_stream_symbol:Elementary_stream_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Musicset subtype" nam s)
      "it does not exists"
      "Check file musicset_symbol_v.ml" 
;;


(** created by ./generator musicset implementation symbol at 9:23 14 Jul 2012. *)



