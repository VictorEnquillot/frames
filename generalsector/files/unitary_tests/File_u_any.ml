open Make_test_v;;

testing "File_v with
   File_u_any.ml";;

(* toplevel 
   #use "File_u_any.ml";;

*)

let fin = Filename_p.filename "Essai_1.html";;

test_number 1 (
fin 
(* : Filename_p.filename *)
 =
Filename_p.filename "Essai_1.html"
);;

test_number 2 (
File_v.has_extension_of_fullnameoffile "Essai_1"
=
false
);;

let nof = "/keep/sources/ocaml_top/setup/frames/databaseset/database_db1" ;;
let is_dir = File_v.is_a_directory_of_fullnameoffile nof;;

test_number 3 (
is_dir
);;

let ext = File_v.nameoffile_extension "Essai_1.html";;

test_number 4 (
ext
(* : string *)
 =
"html"
);;

test_number 5 (
Filename_p.read_string_list_of_filename fin
(* : string list *)
=
[
"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">";
 "<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"fr\" xml:lang=\"fr\">";
 "  <head>";
 "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />";
 "    <title>Chine : arr\195\170t\195\169 pour un article sur des esclaves sexuelles</title>";
 "    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />";
 "<script type=\"text/javascript\">var _sf_startpt=(new Date()).getTime()</script>";
 "    <meta name='robots' content='noindex, nofollow' />";
 "    <base href='http://www.rue89.com/chinatown/2011/09/25/chine-arrete-pour-un-article-sur-des-esclaves-sexuelles-223504' />";
 "    <link rel='shortcut icon' href='http://asset.rue89.com/files/rue89dev_favicon.ico' type='image/x-icon' />";
 "    <style type=\"text/css\" media=\"all\">@import \"http://asset.rue89.com/sites/all/modules/simplenews/simplenews.css\";</style>";
 "<style type=\"text/css\" media=\"all\">@import \"http://asset.rue89.com/files/css/85d0ceebd167e6094b68ed042f218d8a.css\";</style>";
 "<link type='text/css' rel='stylesheet' media='all' href='/sites/all/themes/rue89dev/print.css' />";
 "  </head>"; "  <body>";
 "    <div><img class='print-logo' src='http://asset.rue89.com/sites/all/themes/rue89dev/layout/rue89_logo.gif' alt='' />";
 "</div>";
 "    <div class=\"print-site_name\">Published on <em>Rue89</em> (<a href=\"http://www.rue89.com\">http://www.rue89.com</a>)</div>";
 "    <div class=\"print-title\">Chine : arr\195\170t\195\169 pour un article sur des esclaves sexuelles</div>";
 "    <div class=\"print-submitted\">By <em>Pierre Haski</em></div>";
 "    <div class=\"print-created\">Created <em>09/25/2011 - 11:15</em></div>";
 "    <p />";
 "    <div class=\"print-content\"><div class=\"field field-type-text field-field-large-header\"><div class=\"field-label\">Ent\195\170te large:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\"><!--paging_filter--></div></div></div><!-- google_ad_section_start --><div class=\"field field-type-number-integer field-field-external-feed-display\"><div class=\"field-label\">Flux externe:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\">Normal</div></div></div><div class=\"field field-type-nodereference field-field-blog-context\"><div class=\"field-label\">Blog principal:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\"><a href=\"http://www.rue89.com/chinatown\">Chinatown</a> <span class=\"print-footnote\">[1]</span></div></div></div><div class=\"field field-type-text field-field-ad-bottom\"><div class=\"field-label\">ad_bottom:&nbsp;</div><div class=\"field-items\"><div class=\"field-item odd\">Ligatus</div></div></div><!--paging_filter--><p>Au d\195\169part, c'est juste un fait divers sordide&nbsp;: un ancien pompier de <a href=\"http://fr.wikipedia.org/wiki/Luoyang\" target=\"_blank\" target=\"_blank\">Luoyang</a> <span class=\"print-footnote\">[2]</span>, une ville du centre de la Chine, a kidnapp\195\169 six jeunes femmes gard\195\169es comme esclaves sexuelles dans une cave pendant un an, et a tu\195\169 deux d'entre elles. Mais pour avoir r\195\169v\195\169l\195\169 ce crime, un journaliste chinois a \195\169t\195\169 arr\195\170t\195\169 par le d\195\169partement de la S\195\169curit\195\169 publique et accus\195\169 de divulguer des \194\171&nbsp;secrets d'Etat&nbsp;\194\187.</p>";
 "<p>Li Hao, l'ancien pompier devenu employ\195\169 municipal dans cette ville banale de la province du Henan, avait am\195\169nag\195\169 une cave dans laquelle il avait enferm\195\169 six jeunes filles kidnapp\195\169es dans un club de karaok\195\169. Il les nourrissait \195\160 peine pour qu'elles n'aient pas la force de s'enfuir, et abusait d'elles selon son bon plaisir. Deux d'entre elles ont \195\169t\195\169 tu\195\169es dans des circonstances encore non \195\169lucid\195\169es.</p>";
 "<p>Un journaliste du <a href=\"http://nf.nfdaily.cn/\" target=\"_blank\" target=\"_blank\">Nanfang Dushi Bao</a> <span class=\"print-footnote\">[3]</span>, un quotidien de Canton connu pour son audace journalistique, a appris par hasard l'arrestation du suspect alors qu'il enqu\195\170tait sur une autre affaire, et a d\195\169cid\195\169 d'en savoir plus. Les autorit\195\169s avaient gard\195\169 l'affaire secr\195\168te. </p>";
 "<p>Le reporter, Xi Juguang, s'est aussit\195\180t retrouv\195\169 entre les mains de la S\195\169curit\195\169 publique, la police politique chinoise, accus\195\169 de r\195\169v\195\169ler des \194\171&nbsp;secrets d'Etat&nbsp;\194\187, un crime grave en Chine.</p>";
 "<h2>L'attitude du journaliste, une nouveaut\195\169 en Chine<br /></h2>";
 "<p><a href=\"http://www.nytimes.com/2011/09/24/world/asia/china-detains-journalist-for-article-on-sex-slaves.html?_r=3\" target=\"_blank\" target=\"_blank\">Le New York Times, qui raconte</a> <span class=\"print-footnote\">[4]</span> cette m\195\169saventure \195\169difiante, rapporte n\195\169anmoins qu'\195\160 sa lib\195\169ration, le journaliste a eu le courage \226\128\147 l'inconscience&nbsp;? \226\128\147 de publier un article accusant la S\195\169curit\195\169 publique de chercher \195\160 \195\169touffer un crime qui s'est d\195\169roul\195\169 tout pr\195\168s du si\195\168ge de la police \195\160 Luoyang.</p>";
 "<blockquote><p>\194\171&nbsp;Je ne cherchais qu'\195\160 faire un article le plus complet et exact possible, pour satisfaire le droit du public \195\160 savoir ce qui s'est pass\195\169, mais j'avais n\195\169glig\195\169 l'\195\169l\195\169ment le plus important&nbsp;: la face [\226\128\156sauver la face\226\128\157 est un \195\169l\195\169ment-cl\195\169 dans les rapports entre individus en Chine, et plus important encore s'agissant d'officiels, ndlr]. Mais avant que la v\195\169rit\195\169 ne devienne un secret d'Etat, le public, et moi-m\195\170me, avons le droit de savoir.&nbsp;\194\187</p>";
 "</p></blockquote>";
 "<p>Cette attitude d'un journaliste qui n'accepte pas le refus officiel comme r\195\169ponse, est nouvelle, et d\195\169coule du r\195\180le de plus en plus actif des r\195\169seaux sociaux comme Weibo, le \194\171&nbsp;Twitter chinois&nbsp;\194\187, qui sert d'aiguillon aux m\195\169dias officiels. La presse contr\195\180l\195\169e par l'Etat et le Parti communiste courent derri\195\168re les infos de Weibo, au grand dam des autorit\195\169s qui viennent de faire <a href=\"http://blogs.telegraph.co.uk/news/peterfoster/100102881/weibo-chinas-answer-to-twitter-is-causing-sleepless-nights-for-the-countrys-control-freak-security-establishment/\" target=\"_blank\" target=\"_blank\">pression sur le r\195\169seau social</a> <span class=\"print-footnote\">[5]</span>, qui appartient au site priv\195\169 <a href=\"http://www.sina.com/\" target=\"_blank\" target=\"_blank\">Sina.com</a> <span class=\"print-footnote\">[6]</span>, pour qu'il censure les contenus.</p>";
 "<p>L'affaire de Luyoang en serait risible, si elle n'\195\169tait tragique, quand on comprend la raison pour laquelle les autorit\195\169s ont voulu \195\169touffer ce crime&nbsp;: selon le New York Times, Luoyang participe \195\160 un concours national pour le prix de la \194\171&nbsp;ville la plus civilis\195\169e&nbsp;\194\187, et redoutait que cette mauvaise publicit\195\169 n'handicape ses chances. C'est fait&nbsp;! </p>";
 "<div class=\"print-source_url\"><strong>URL source:</strong> <a href=\"http://www.rue89.com/chinatown/2011/09/25/chine-arrete-pour-un-article-sur-des-esclaves-sexuelles-223504\">http://www.rue89.com/chinatown/2011/09/25/chine-arrete-pour-un-article-sur-des-esclaves-sexuelles-223504</a></div>";
 "    <div class=\"print-links\"><p><strong>Links:</strong><br />[1] http://www.rue89.com/chinatown<br />";
 "[2] http://fr.wikipedia.org/wiki/Luoyang<br />";
 "[3] http://nf.nfdaily.cn/<br />";
 "[4] http://www.nytimes.com/2011/09/24/world/asia/china-detains-journalist-for-article-on-sex-slaves.html?_r=3<br />";
 "[5] http://blogs.telegraph.co.uk/news/peterfoster/100102881/weibo-chinas-answer-to-twitter-is-causing-sleepless-nights-for-the-countrys-control-freak-security-establishment/<br />";
 "[6] http://www.sina.com/<br />";
 "[7] http://www.rue89.com/chinatown/2011/08/16/weibo-le-twitter-chinois-une-revolution-en-marche-217502<br />";
 "[8] http://www.rue89.com/chinatown/2011/09/19/la-chine-interdit-la-trop-populaire-star-ac-nationale-222611<br />";
 "[9] http://www.rue89.com/chinatown/2011/09/15/si-hu-vient-diner-ne-vous-rasez-pas-vous-aurez-lair-plus-rustique-222137<br />";
 "[10] http://www.rue89.com/chinatown/2011/09/09/une-entreprise-detat-chinoise-se-paye-une-copie-de-versailles-221266<br />";
 "[11] http://livre.fnac.com/a3622610/Isabelle-Attane-Au-pays-des-enfants-rares?Origin=RUE89_EDITO<br />";
 "</p></div>"; "  </body>"; "</html>"]
);;
