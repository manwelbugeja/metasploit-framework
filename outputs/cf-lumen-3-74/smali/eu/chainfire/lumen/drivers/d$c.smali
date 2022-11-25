.class Leu/chainfire/lumen/drivers/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/d;->E(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/drivers/d;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    iput-object p2, p0, Leu/chainfire/lumen/drivers/d$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->a(Leu/chainfire/lumen/drivers/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Leu/chainfire/lumen/drivers/d;->c(Leu/chainfire/lumen/drivers/d;Z)Z

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->e(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a$d;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/d;->f(Leu/chainfire/lumen/drivers/d;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/d;->l(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a;

    move-result-object v2

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v3}, Leu/chainfire/lumen/drivers/d;->f(Leu/chainfire/lumen/drivers/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Leu/chainfire/lumen/a;->d(Ljava/lang/String;)Leu/chainfire/lumen/drivers/c;

    move-result-object v2

    new-instance v3, Leu/chainfire/lumen/a$d;

    sget-object v4, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    invoke-direct {v3, v4}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Leu/chainfire/lumen/a$d;->p(Z)V

    invoke-virtual {v2, v3}, Leu/chainfire/lumen/drivers/c;->e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Leu/chainfire/lumen/drivers/c;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v3, v2}, Leu/chainfire/lumen/drivers/d;->h(Leu/chainfire/lumen/drivers/d;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v3}, Leu/chainfire/lumen/drivers/d;->i(Leu/chainfire/lumen/drivers/d;)V

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v3}, Leu/chainfire/lumen/drivers/d;->j(Leu/chainfire/lumen/drivers/d;)Lc/a/a/c$d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc/a/a/c$d;->s([Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Leu/chainfire/lumen/drivers/d;->g(Leu/chainfire/lumen/drivers/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v2, v1}, Leu/chainfire/lumen/drivers/d;->o(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$c;->b:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->b(Leu/chainfire/lumen/drivers/d;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
