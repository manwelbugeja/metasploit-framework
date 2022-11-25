.class Leu/chainfire/lumen/drivers/d$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:J

.field private final b:Leu/chainfire/lumen/a$d;

.field final synthetic c:Leu/chainfire/lumen/drivers/d;


# direct methods
.method public constructor <init>(Leu/chainfire/lumen/drivers/d;JLeu/chainfire/lumen/a$d;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Leu/chainfire/lumen/drivers/d$d;->a:J

    iput-object p4, p0, Leu/chainfire/lumen/drivers/d$d;->b:Leu/chainfire/lumen/a$d;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/drivers/d$d;)J
    .locals 2

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/d$d;->a:J

    return-wide v0
.end method

.method static synthetic b(Leu/chainfire/lumen/drivers/d$d;)Leu/chainfire/lumen/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/d$d;->b:Leu/chainfire/lumen/a$d;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 6

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->a(Leu/chainfire/lumen/drivers/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Leu/chainfire/lumen/drivers/d;->c(Leu/chainfire/lumen/drivers/d;Z)Z

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->k(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    :try_start_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->l(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->m:Leu/chainfire/lumen/a$f;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$d;->b:Leu/chainfire/lumen/a$d;

    invoke-virtual {v1, v2}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    :try_start_2
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/d;->D()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->m(Leu/chainfire/lumen/drivers/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->f0(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->n(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a$d;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->k(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->p(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v1

    iget-wide v3, p0, Leu/chainfire/lumen/drivers/d$d;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->q(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$d;->b:Leu/chainfire/lumen/a$d;

    invoke-static {v1, v2}, Leu/chainfire/lumen/drivers/d;->o(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v3}, Leu/chainfire/lumen/drivers/d;->d(Leu/chainfire/lumen/drivers/d;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Leu/chainfire/lumen/drivers/d$d$a;

    invoke-direct {v4, p0}, Leu/chainfire/lumen/drivers/d$d$a;-><init>(Leu/chainfire/lumen/drivers/d$d;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/d;->b(Leu/chainfire/lumen/drivers/d;)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
