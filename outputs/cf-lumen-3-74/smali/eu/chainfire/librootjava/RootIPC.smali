.class public Leu/chainfire/librootjava/RootIPC;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/librootjava/RootIPC$a;,
        Leu/chainfire/librootjava/RootIPC$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/IBinder;

.field private final c:I

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/librootjava/RootIPC$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private final h:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/librootjava/RootIPC;->d:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    new-instance v1, Leu/chainfire/librootjava/RootIPC$1;

    invoke-direct {v1, p0}, Leu/chainfire/librootjava/RootIPC$1;-><init>(Leu/chainfire/librootjava/RootIPC;)V

    iput-object v1, p0, Leu/chainfire/librootjava/RootIPC;->h:Landroid/os/IBinder;

    iput-object p1, p0, Leu/chainfire/librootjava/RootIPC;->a:Ljava/lang/String;

    iput-object p2, p0, Leu/chainfire/librootjava/RootIPC;->b:Landroid/os/IBinder;

    iput p3, p0, Leu/chainfire/librootjava/RootIPC;->c:I

    invoke-virtual {p0}, Leu/chainfire/librootjava/RootIPC;->h()V

    if-gez p4, :cond_0

    const/16 p4, 0x7530

    :cond_0
    if-lez p4, :cond_3

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/librootjava/RootIPC;->m()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    int-to-long p1, p4

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Leu/chainfire/librootjava/RootIPC;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-exit v0

    goto :goto_0

    :cond_2
    new-instance p1, Leu/chainfire/librootjava/RootIPC$b;

    const-string p2, "librootjava: timeout waiting for IPC connection"

    invoke-direct {p1, p2}, Leu/chainfire/librootjava/RootIPC$b;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_3
    :goto_0
    if-eqz p5, :cond_5

    iget-object p1, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    monitor-enter p1

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Leu/chainfire/librootjava/RootIPC;->l()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_4

    :try_start_4
    iget-object p2, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    :try_start_5
    monitor-exit p1

    return-void

    :cond_4
    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p2

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic a(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder$DeathRecipient;)Leu/chainfire/librootjava/RootIPC$a;
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/librootjava/RootIPC;->i(Landroid/os/IBinder$DeathRecipient;)Leu/chainfire/librootjava/RootIPC$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/librootjava/RootIPC;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Leu/chainfire/librootjava/RootIPC;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    return p1
.end method

.method static synthetic d(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/RootIPC;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Leu/chainfire/librootjava/RootIPC;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/RootIPC;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic f(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder;)Leu/chainfire/librootjava/RootIPC$a;
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/librootjava/RootIPC;->j(Landroid/os/IBinder;)Leu/chainfire/librootjava/RootIPC$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Leu/chainfire/librootjava/RootIPC;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private i(Landroid/os/IBinder$DeathRecipient;)Leu/chainfire/librootjava/RootIPC$a;
    .locals 4

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Leu/chainfire/librootjava/RootIPC;->n()V

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/chainfire/librootjava/RootIPC$a;

    invoke-virtual {v2}, Leu/chainfire/librootjava/RootIPC$a;->b()Landroid/os/IBinder$DeathRecipient;

    move-result-object v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private j(Landroid/os/IBinder;)Leu/chainfire/librootjava/RootIPC$a;
    .locals 4

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Leu/chainfire/librootjava/RootIPC;->n()V

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leu/chainfire/librootjava/RootIPC$a;

    invoke-virtual {v2}, Leu/chainfire/librootjava/RootIPC$a;->a()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private n()V
    .locals 4

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/chainfire/librootjava/RootIPC$a;

    invoke-virtual {v3}, Leu/chainfire/librootjava/RootIPC$a;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    iput-boolean v2, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Leu/chainfire/librootjava/RootIPC;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_3
    :goto_1
    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Leu/chainfire/librootjava/RootIPC;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method


# virtual methods
.method public h()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eu.chainfire.librootjava.RootIPCReceiver.BROADCAST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Leu/chainfire/librootjava/RootIPC;->h:Landroid/os/IBinder;

    const-string v3, "binder"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget v2, p0, Leu/chainfire/librootjava/RootIPC;->c:I

    const-string v3, "code"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "eu.chainfire.librootjava.RootIPCReceiver.BROADCAST.EXTRA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {v0}, Leu/chainfire/librootjava/f;->d(Landroid/content/Intent;)V

    return-void
.end method

.method public k()I
    .locals 2

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Leu/chainfire/librootjava/RootIPC;->n()V

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Leu/chainfire/librootjava/RootIPC;->k()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC;->f:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/librootjava/RootIPC;->g:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
