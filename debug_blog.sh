docker run -it \
       -v $(pwd)/org/jekyll:/blog \
       -w /blog \
       --entrypoint /bin/bash \
       blog:ruby3
