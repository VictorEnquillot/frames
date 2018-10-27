constructor_count () {
    txt=`do_${1}_constructor_set*`
    echo $txt | wc -w
}
