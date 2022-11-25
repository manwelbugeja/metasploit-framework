.class Leu/chainfire/lumen/drivers/m$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/m;->H(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:J

.field final synthetic d:Leu/chainfire/lumen/drivers/m;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/m;J)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m$d;->d:Leu/chainfire/lumen/drivers/m;

    iput-wide p2, p0, Leu/chainfire/lumen/drivers/m$d;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Leu/chainfire/lumen/drivers/m$d;->a:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Leu/chainfire/lumen/drivers/m$d;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$d;->d:Leu/chainfire/lumen/drivers/m;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->w(Leu/chainfire/lumen/drivers/m;)V

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/m$d;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Leu/chainfire/lumen/drivers/m$d;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Leu/chainfire/lumen/drivers/m$d;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Leu/chainfire/lumen/drivers/m$d;->c:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Leu/chainfire/lumen/drivers/m$d;->b:J

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$d;->d:Leu/chainfire/lumen/drivers/m;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->t(Leu/chainfire/lumen/drivers/m;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$d;->d:Leu/chainfire/lumen/drivers/m;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->u(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$d;->d:Leu/chainfire/lumen/drivers/m;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Leu/chainfire/lumen/drivers/m;->v(Leu/chainfire/lumen/drivers/m;Z)Z

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
