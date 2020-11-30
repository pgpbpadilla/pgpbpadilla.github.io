from invoke import task


@task
def build(ctx, docker=True):
    jekyll_build = 'jekyll build'
    docker_build = 'docker run -v `pwd`:/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll build'
    build_cmd = docker_build
    if not docker:
        build_cmd = jekyll_build
    ctx.run(build_cmd)


@task
def serve(ctx, docker=True):
    jekyll_serve = 'bundle exec jekyll serve'
    docker_serve = 'docker run -v `pwd`:/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll serve'
    serve_cmd = docker_serve if docker else jekyll_serve
    ctx.run(serve_cmd)


@task
def run(ctx, docker=True):
    build(ctx, docker)
    serve(ctx, docker)
