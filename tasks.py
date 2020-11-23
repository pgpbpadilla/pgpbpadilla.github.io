from invoke import task


@task
def build(ctx, runner='docker'):
    jekyll_build = 'jekyll build'
    docker_build = 'docker run -v `pwd`:/srv/jekyll -p "4000:4000" jekyll/jekyll jekyll build'

    build_cmd = docker_build
    if runner is not 'docker':
        build_cmd = jekyll_build

    ctx.run(build_cmd)
