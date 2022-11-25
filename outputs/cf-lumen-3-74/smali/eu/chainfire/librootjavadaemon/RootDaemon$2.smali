.class final Leu/chainfire/librootjavadaemon/RootDaemon$2;
.super Leu/chainfire/librootjavadaemon/IRootDaemonIPC$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/librootjavadaemon/RootDaemon;->d(Ljava/lang/String;IZLeu/chainfire/librootjavadaemon/RootDaemon$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjavadaemon/RootDaemon$2;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Leu/chainfire/librootjavadaemon/IRootDaemonIPC$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcast()V
    .locals 3

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Re-broadcasting IPC interfaces"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->b()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/chainfire/librootjava/RootIPC;

    invoke-virtual {v2}, Leu/chainfire/librootjava/RootIPC;->h()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Leu/chainfire/librootjavadaemon/RootDaemon$2;->val$version:Ljava/lang/String;

    return-object v0
.end method

.method public terminate()V
    .locals 0

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->e()V

    return-void
.end method
