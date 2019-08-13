list_annotated_tags() {
    git for-each-ref --format '%(objecttype) %(refname)' refs/tags |
        while read reftype refname; do
            case $reftype in tag) echo $refname;; esac
        done
}
