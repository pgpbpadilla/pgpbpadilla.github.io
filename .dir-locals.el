((nil . (
  (org-publish-project-alist .
   (("html"
          ;; Path to your org files.
          :base-directory "~/blog/org/"
          :base-extension "org"

          ;; Path to your Jekyll project.
          :publishing-directory "~/blog/jekyll/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )

    ("assets"
          :base-directory "~/Projects/librephoenix.com/org/"
          :base-extension "svg\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
          :publishing-directory "~/org/jekyll/"
          :recursive t
          :publishing-function org-publish-attachment)

    ("site" :components ("html" "assets"))))
  )
))
