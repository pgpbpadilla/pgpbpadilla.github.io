docker run \
       -v $(pwd):/blog \
       -w /blog \
       blog:ruby3 \
       bundle exec jekyll build
