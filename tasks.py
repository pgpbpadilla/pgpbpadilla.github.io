from invoke import task


@task
def hello(ctx):
    ctx.run('echo hello')
    ctx.run('ls -la')
