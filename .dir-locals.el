;; How this file works:
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Directory-Variables.html

;; Adapted from:
;; https://librephoenix.com/2023-11-19-my-blog-setup-with-jekyll-org-mode-and-gitlab-pages
((nil . (
  (org-publish-project-alist .
   (("html"
          ;; Path to your org files.
          :base-directory "~/blog/org/"
          :base-extension "org"
          ;; Path to your Jekyll project.
          :publishing-directory "~/blog/org/jekyll/"
          ;; Path is relative to :base-directory
          :exclude "jekyll/assets/org/.*$" ;; exclude all Org assets
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :html-extension "html"
          :body-only t ;; Only export section between <body> </body>
    )

    ;; No need to duplicate assets, keep a single copy in org/jekyll/assets
    ;; ("assets"
    ;;       :base-directory "~/blog/org/"
    ;;       :base-extension "svg\\|css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
    ;;       :publishing-directory "~/blog/jekyll/"
    ;;       :recursive t
    ;;       :publishing-function org-publish-attachment)

    ("site" :components ("html"))))
  )
))
