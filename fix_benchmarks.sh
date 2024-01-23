for file in $1/*.smt2; do
    abspath=$(realpath $file)
    exp=$(basename $file)
    echo $abspath
    sed -i '1s/^/(set-option :print-success false)\n/' $abspath
    sed -i 's/~/_/g' $abspath
done
