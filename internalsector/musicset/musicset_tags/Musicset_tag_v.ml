(** {3 Musicset_tag_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Musicset_tag_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name tag_mus =
let sym_mus = Tag_v.symbol_off_tag tag_mus in
  Musicset_symbol_v.name sym_mus
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)



















(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)



















(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)



















(** {6 Abbreviating_grandson} *)

let file_id3v1_mp3_header_1 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v1_mp3_header_1;;

let file_id3v1_mp3_header_2 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v1_mp3_header_2;;

let file_id3v1_mp3_header_2_5 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v1_mp3_header_2_5;;

let file_id3v2_mp3_header_1 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v2_mp3_header_1;;

let file_id3v2_mp3_header_2 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v2_mp3_header_2;;

let file_id3v2_mp3_header_2_5 = musicset_tag_of_mp3_file_tag Mp3_file_tag_v.file_id3v2_mp3_header_2_5;;

let header_3 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.header_3;;

let title_30 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.title_30;;

let artist_30 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.artist_30;;

let album_30 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.album_30;;

let year_4 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.year_4;;

let comment_28 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.comment_28;;

let comment_30 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.comment_30;;

let zero_byte_1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.zero_byte_1;;

let track_1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.track_1;;

let genre_1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.genre_1;;

let header_4 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.header_4;;

let title_60 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.title_60;;

let artist_60 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.artist_60;;

let album_60 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.album_60;;

let speed_1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.speed_1;;

let genre_30 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.genre_30;;

let start_time_6 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.start_time_6;;

let end_time_6 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.end_time_6;;

let id3v1_1_tag = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.id3v1_1_tag;;

let aenc = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.aenc;;

let apic = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.apic;;

let comm = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.comm;;

let comr = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.comr;;

let encr = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.encr;;

let etco = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.etco;;

let geob = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.geob;;

let grid = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.grid;;

let link = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.link;;

let mcdi = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.mcdi;;

let mllt = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.mllt;;

let owne = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.owne;;

let pcnt = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.pcnt;;

let popm = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.popm;;

let poss = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.poss;;

let priv = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.priv;;

let rbuf = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.rbuf;;

let rvrb = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.rvrb;;

let sylt = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.sylt;;

let sytc = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.sytc;;

let talb = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.talb;;

let tbpm = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tbpm;;

let tcon = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tcon;;

let tcop = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tcop;;

let tdly = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdly;;

let tenc = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tenc;;

let tflt = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tflt;;

let tit1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tit1;;

let tit2 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tit2;;

let tit3 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tit3;;

let tkey = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tkey;;

let tlan = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tlan;;

let tlen = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tlen;;

let tmed = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tmed;;

let toal = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.toal;;

let tofn = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tofn;;

let town = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.town;;

let tpe2 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpe2;;

let tpe3 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpe3;;

let tpe4 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpe4;;

let tpos = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpos;;

let tpub = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpub;;

let trck = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.trck;;

let trsn = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.trsn;;

let trso = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.trso;;

let tsrc = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsrc;;

let tsse = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsse;;

let txxx = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.txxx;;

let ufid = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.ufid;;

let user = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.user;;

let uslt = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.uslt;;

let wcom = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wcom;;

let wcop = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wcop;;

let woaf = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.woaf;;

let woar = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.woar;;

let woas = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.woas;;

let wors = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wors;;

let wpay = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wpay;;

let wpub = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wpub;;

let wxxx = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.wxxx;;

let tpe1 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpe1;;

let tcom = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tcom;;

let text = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.text;;

let toly = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.toly;;

let tope = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tope;;

let equa = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.equa;;

let ipls = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.ipls;;

let rvad = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.rvad;;

let tdat = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdat;;

let time = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.time;;

let tory = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tory;;

let trda = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.trda;;

let tyer = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tyer;;

let tsiz = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsiz;;

let aspi = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.aspi;;

let equ2 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.equ2;;

let rva2 = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.rva2;;

let seek = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.seek;;

let sign = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.sign;;

let tden = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tden;;

let tdor = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdor;;

let tdrc = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdrc;;

let tdrl = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdrl;;

let tdtg = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tdtg;;

let tipl = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tipl;;

let tmcl = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tmcl;;

let tmoo = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tmoo;;

let tpro = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tpro;;

let tsoa = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsoa;;

let tsop = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsop;;

let tsot = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsot;;

let tsst = musicset_tag_of_id3_tag_tag Id3_tag_tag_v.tsst;;

let mp3_header_1 = musicset_tag_of_mp3_header_tag Mp3_header_tag_v.mp3_header_1;;

let mp3_header_2 = musicset_tag_of_mp3_header_tag Mp3_header_tag_v.mp3_header_2;;

let mp3_header_2_5 = musicset_tag_of_mp3_header_tag Mp3_header_tag_v.mp3_header_2_5;;

let version_1 = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.version_1;;

let version_2 = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.version_2;;

let version_2_5 = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.version_2_5;;

let error_protection = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.error_protection;;

let pad_bit = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.pad_bit;;

let intensity_stereo = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.intensity_stereo;;

let ms_stereo = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.ms_stereo;;

let private_bit = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.private_bit;;

let copyright = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.copyright;;

let original = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.original;;

let layer = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.layer;;

let frequency = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.frequency;;

let mode = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.mode;;

let mode_extension = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.mode_extension;;

let emphasis = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.emphasis;;

let bit_rate = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.bit_rate;;

let sync_word = musicset_tag_of_mp3_header_field_tag Mp3_header_field_tag_v.sync_word;;

let elementary_stream_audio = musicset_tag_of_elementary_stream_tag Elementary_stream_tag_v.elementary_stream_audio;;

let elementary_stream_video = musicset_tag_of_elementary_stream_tag Elementary_stream_tag_v.elementary_stream_video;;

let elementary_stream_closed_caption = musicset_tag_of_elementary_stream_tag Elementary_stream_tag_v.elementary_stream_closed_caption;;


(** {6 Abbreviating_topson} *)


(** {6 Making} *)

let make soi_mus nam_mus s =
  let sym_mus = Musicset_symbol_v.make nam_mus s in
  Tag_v.make sym_mus soi_mus
;;


(** created by ./generator musicset implementation tag at 11:9 14 Jul 2012. *)



