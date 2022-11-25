.class Leu/chainfire/lumen/drivers/m$a;
.super Leu/chainfire/librootjava/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leu/chainfire/librootjava/g<",
        "Leu/chainfire/lumen/root/IPC;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic r:Leu/chainfire/lumen/drivers/m;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/m;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-direct {p0, p2, p3}, Leu/chainfire/librootjava/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic t(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Leu/chainfire/lumen/root/IPC;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/m$a;->x(Leu/chainfire/lumen/root/IPC;)V

    return-void
.end method

.method public bridge synthetic u(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Leu/chainfire/lumen/root/IPC;

    invoke-virtual {p0, p1}, Leu/chainfire/lumen/drivers/m$a;->y(Leu/chainfire/lumen/root/IPC;)V

    return-void
.end method

.method public x(Leu/chainfire/lumen/root/IPC;)V
    .locals 3

    const-string v0, "IPC"

    const-string v1, "onConnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1, p1}, Leu/chainfire/lumen/drivers/m;->r(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/root/IPC;)Leu/chainfire/lumen/root/IPC;

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->w(Leu/chainfire/lumen/drivers/m;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public y(Leu/chainfire/lumen/root/IPC;)V
    .locals 2

    const-string p1, "IPC"

    const-string v0, "onDisconnect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/m;->r(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/root/IPC;)Leu/chainfire/lumen/root/IPC;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->x(Leu/chainfire/lumen/drivers/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$a;->r:Leu/chainfire/lumen/drivers/m;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->y(Leu/chainfire/lumen/drivers/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
