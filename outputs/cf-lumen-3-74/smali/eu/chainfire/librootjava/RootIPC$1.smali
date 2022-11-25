.class Leu/chainfire/librootjava/RootIPC$1;
.super Leu/chainfire/librootjava/IRootIPC$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/librootjava/RootIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/librootjava/RootIPC;


# direct methods
.method constructor <init>(Leu/chainfire/librootjava/RootIPC;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-direct {p0}, Leu/chainfire/librootjava/IRootIPC$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bye(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v0}, Leu/chainfire/librootjava/RootIPC;->b(Leu/chainfire/librootjava/RootIPC;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v1, p1}, Leu/chainfire/librootjava/RootIPC;->f(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder;)Leu/chainfire/librootjava/RootIPC$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    :try_start_1
    invoke-virtual {p1}, Leu/chainfire/librootjava/RootIPC$a;->a()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Leu/chainfire/librootjava/RootIPC$a;->b()Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v1}, Leu/chainfire/librootjava/RootIPC;->b(Leu/chainfire/librootjava/RootIPC;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {p1}, Leu/chainfire/librootjava/RootIPC;->g(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v0}, Leu/chainfire/librootjava/RootIPC;->g(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public getUserIPC()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v0}, Leu/chainfire/librootjava/RootIPC;->e(Leu/chainfire/librootjava/RootIPC;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public hello(Landroid/os/IBinder;)V
    .locals 5

    new-instance v0, Leu/chainfire/librootjava/RootIPC$1$a;

    invoke-direct {v0, p0}, Leu/chainfire/librootjava/RootIPC$1$a;-><init>(Leu/chainfire/librootjava/RootIPC$1;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v1}, Leu/chainfire/librootjava/RootIPC;->b(Leu/chainfire/librootjava/RootIPC;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v2}, Leu/chainfire/librootjava/RootIPC;->b(Leu/chainfire/librootjava/RootIPC;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Leu/chainfire/librootjava/RootIPC$a;

    iget-object v4, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-direct {v3, v4, p1, v0}, Leu/chainfire/librootjava/RootIPC$a;-><init>(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Leu/chainfire/librootjava/RootIPC;->c(Leu/chainfire/librootjava/RootIPC;Z)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {p1}, Leu/chainfire/librootjava/RootIPC;->d(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v0}, Leu/chainfire/librootjava/RootIPC;->d(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_0
    :goto_1
    return-void
.end method
