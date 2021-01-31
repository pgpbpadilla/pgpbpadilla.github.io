from invoke import task


def build_cmd(parts):
    return ' '.join(parts)


DOCKER_JEKYLL_CMD_PARTS = ['docker', 'run',
                           '-v', '`pwd`:/srv/jekyll',
                           '-p', '"4000:4000"',
                           'jekyll/jekyll']

BUNDLE_EXEC = ['bundle', 'exec']


@task
def update_gems(ctx):
    """Updates bundler and reinstall all Blog dependencies"""
    ctx.run('gem update bundler')
    ctx.run('bundle update')
    ctx.run('bundle install')


@task(pre=[update_gems])
def build(ctx, docker=False):
    """Use Jekyll to build the Blog"""
    jekyll_build = ['jekyll', 'build']
    if docker is True:
        docker_build = build_cmd(DOCKER_JEKYLL_CMD_PARTS + jekyll_build)
        ctx.run(docker_build)
    else:
        local_build = build_cmd(BUNDLE_EXEC + jekyll_build)
        ctx.run(local_build)


@task
def serve(ctx, drafts=True, docker=False):
    """Serves the Blog locally"""
    jekyll_serve = ['jekyll', 'serve']
    if drafts:
        jekyll_serve.append('--drafts')
    if docker:
        docker_serve_cmd = build_cmd(DOCKER_JEKYLL_CMD_PARTS + jekyll_serve)
        ctx.run(docker_serve_cmd)
    else:
        local_serve_cmd = build_cmd(BUNDLE_EXEC + jekyll_serve)
        ctx.run(local_serve_cmd)


@task
def run(ctx, docker=False):
    """Build+Run the Blog locally"""
    build(ctx, docker)
    serve(ctx, docker)


@task
def view(ctx):
    """Open live website in the default browser"""
    ctx.run('open https://pgpbpadilla.github.io/')
