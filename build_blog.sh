docker run \
       -v $(pwd)/org/jekyll:/blog \
       -w /blog \
       blog:ruby3 \
       bundle exec jekyll build