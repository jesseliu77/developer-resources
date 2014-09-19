for file in `find . -mindepth 2 -name "*.adoc"`; do
   echo "Rendering $file"
   filename=${file##*/}
   filename=${filename%.adoc}
   asciidoctor -a source-highlighter=codemirror -T _templates/wordpress $file -o deploy/${filename}.html
done

#git add .
#git commit -m "content-update for github-pages"
#git push origin gh-pages
