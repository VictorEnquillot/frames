cp $BDB1/files_mli.mk .
cp $BDB1/*ml .

modify_strings_and_rename_files.sh db1points nwchem *ml *mk
modify_strings_and_rename_files.sh Db1points Nwchem *ml *mk

modify_string.pl _dbo  _nbo *ml
modify_string.pl _dba  _nba *ml
modify_string.pl _dcd  _ncd *ml
modify_string.pl _dcs  _ncs *ml
modify_string.pl _db1_ _nwc_ *ml

do_provider_register_translator_extractor_all.sh force > o

sed -e 's/^$(SPECIFIC_TAG_SUBTREES_V_MLI)/# $(SPECIFIC_TAG_SUBTREES_V_MLI)/' files_mli.mk > f
mv f files_mli.mk
