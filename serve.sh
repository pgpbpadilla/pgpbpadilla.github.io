set -x
docker run \
       -v $(pwd)/org/jekyll:/blog \
       -w /blog \
       -p 4000:4000 \
       blog:ruby3 \
       bundle exec jekyll serve --livereload
