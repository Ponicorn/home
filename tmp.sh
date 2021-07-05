for f in *.png; do
    mv -- "$f" "$(basename -- "$f" .png).low.png"
done