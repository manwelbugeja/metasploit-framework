.class Leu/chainfire/librootjava/g$b;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/librootjava/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/librootjava/g;


# direct methods
.method constructor <init>(Leu/chainfire/librootjava/g;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "eu.chainfire.librootjava.RootIPCReceiver.BROADCAST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "eu.chainfire.librootjava.RootIPCReceiver.BROADCAST.EXTRA"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "binder"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {v1}, Leu/chainfire/librootjava/g;->e(Leu/chainfire/librootjava/g;)I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p1, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p1}, Leu/chainfire/librootjava/g;->f(Leu/chainfire/librootjava/g;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p1}, Leu/chainfire/librootjava/g;->a(Leu/chainfire/librootjava/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2, v0}, Leu/chainfire/librootjava/g;->h(Leu/chainfire/librootjava/g;Landroid/os/IBinder;)Landroid/os/IBinder;

    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2}, Leu/chainfire/librootjava/g;->g(Leu/chainfire/librootjava/g;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/librootjava/IRootIPC$Stub;->asInterface(Landroid/os/IBinder;)Leu/chainfire/librootjava/IRootIPC;

    move-result-object v0

    invoke-static {p2, v0}, Leu/chainfire/librootjava/g;->j(Leu/chainfire/librootjava/g;Leu/chainfire/librootjava/IRootIPC;)Leu/chainfire/librootjava/IRootIPC;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2}, Leu/chainfire/librootjava/g;->i(Leu/chainfire/librootjava/g;)Leu/chainfire/librootjava/IRootIPC;

    move-result-object v0

    invoke-interface {v0}, Leu/chainfire/librootjava/IRootIPC;->getUserIPC()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p2, v0}, Leu/chainfire/librootjava/g;->l(Leu/chainfire/librootjava/g;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Leu/chainfire/librootjava/g;->k(Leu/chainfire/librootjava/g;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_3
    invoke-static {p2}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2}, Leu/chainfire/librootjava/g;->i(Leu/chainfire/librootjava/g;)Leu/chainfire/librootjava/IRootIPC;

    move-result-object p2

    iget-object v0, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {v0}, Leu/chainfire/librootjava/g;->m(Leu/chainfire/librootjava/g;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Leu/chainfire/librootjava/IRootIPC;->hello(Landroid/os/IBinder;)V

    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2}, Leu/chainfire/librootjava/g;->c(Leu/chainfire/librootjava/g;)Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {v0}, Leu/chainfire/librootjava/g;->n(Leu/chainfire/librootjava/g;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p2

    :try_start_5
    invoke-static {p2}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_2
    iget-object p2, p0, Leu/chainfire/librootjava/g$b;->a:Leu/chainfire/librootjava/g;

    invoke-static {p2}, Leu/chainfire/librootjava/g;->a(Leu/chainfire/librootjava/g;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p2

    :cond_1
    :goto_3
    return-void
.end method
