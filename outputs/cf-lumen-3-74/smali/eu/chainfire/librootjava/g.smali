.class public abstract Leu/chainfire/librootjava/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/HandlerThread;

.field private final b:Landroid/os/Handler;

.field private final c:I

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/IBinder;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private volatile h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Landroid/os/IBinder;

.field private volatile j:Leu/chainfire/librootjava/IRootIPC;

.field private volatile k:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile l:Z

.field private volatile m:Z

.field private final n:Landroid/content/IntentFilter;

.field private final o:Landroid/os/IBinder$DeathRecipient;

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Leu/chainfire/librootjava/g;-><init>(Landroid/content/Context;ILjava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Leu/chainfire/librootjava/g;->e:Landroid/os/IBinder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/librootjava/g;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/librootjava/g;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    iput-object v0, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;

    iput-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/librootjava/g;->l:Z

    iput-boolean v0, p0, Leu/chainfire/librootjava/g;->m:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "eu.chainfire.librootjava.RootIPCReceiver.BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/librootjava/g;->n:Landroid/content/IntentFilter;

    new-instance v1, Leu/chainfire/librootjava/g$a;

    invoke-direct {v1, p0}, Leu/chainfire/librootjava/g$a;-><init>(Leu/chainfire/librootjava/g;)V

    iput-object v1, p0, Leu/chainfire/librootjava/g;->o:Landroid/os/IBinder$DeathRecipient;

    new-instance v1, Leu/chainfire/librootjava/g$b;

    invoke-direct {v1, p0}, Leu/chainfire/librootjava/g$b;-><init>(Leu/chainfire/librootjava/g;)V

    iput-object v1, p0, Leu/chainfire/librootjava/g;->p:Landroid/content/BroadcastReceiver;

    new-instance v1, Leu/chainfire/librootjava/g$c;

    invoke-direct {v1, p0}, Leu/chainfire/librootjava/g$c;-><init>(Leu/chainfire/librootjava/g;)V

    iput-object v1, p0, Leu/chainfire/librootjava/g;->q:Ljava/lang/Runnable;

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p3

    check-cast p3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p3

    aget-object p3, p3, v0

    check-cast p3, Ljava/lang/Class;

    :cond_0
    iput-object p3, p0, Leu/chainfire/librootjava/g;->d:Ljava/lang/Class;

    iput p2, p0, Leu/chainfire/librootjava/g;->c:I

    new-instance p3, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "librootjava:RootIPCReceiver#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Leu/chainfire/librootjava/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Leu/chainfire/librootjava/g;->b:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Leu/chainfire/librootjava/g;->w(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/librootjava/g;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/librootjava/g;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/librootjava/g;->o()V

    return-void
.end method

.method static synthetic c(Leu/chainfire/librootjava/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Leu/chainfire/librootjava/g;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/librootjava/g;->q()V

    return-void
.end method

.method static synthetic e(Leu/chainfire/librootjava/g;)I
    .locals 0

    iget p0, p0, Leu/chainfire/librootjava/g;->c:I

    return p0
.end method

.method static synthetic f(Leu/chainfire/librootjava/g;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->o:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic g(Leu/chainfire/librootjava/g;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic h(Leu/chainfire/librootjava/g;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic i(Leu/chainfire/librootjava/g;)Leu/chainfire/librootjava/IRootIPC;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;

    return-object p0
.end method

.method static synthetic j(Leu/chainfire/librootjava/g;Leu/chainfire/librootjava/IRootIPC;)Leu/chainfire/librootjava/IRootIPC;
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;

    return-object p1
.end method

.method static synthetic k(Leu/chainfire/librootjava/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic l(Leu/chainfire/librootjava/g;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/librootjava/g;->s(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Leu/chainfire/librootjava/g;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->e:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic n(Leu/chainfire/librootjava/g;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Leu/chainfire/librootjava/g;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method private o()V
    .locals 3

    invoke-direct {p0}, Leu/chainfire/librootjava/g;->r()V

    iget-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    iget-object v1, p0, Leu/chainfire/librootjava/g;->o:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    iput-object v0, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;

    iput-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/librootjava/g;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Leu/chainfire/librootjava/g;->m:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/librootjava/g;->l:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Leu/chainfire/librootjava/g;->t(Ljava/lang/Object;)V

    iget-object v2, p0, Leu/chainfire/librootjava/g;->g:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-boolean v1, p0, Leu/chainfire/librootjava/g;->l:Z

    iget-boolean v0, p0, Leu/chainfire/librootjava/g;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Leu/chainfire/librootjava/g;->p()V

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/librootjava/g;->i:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/librootjava/g;->k:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Leu/chainfire/librootjava/g;->u(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private s(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Leu/chainfire/librootjava/f$a;

    invoke-direct {v0}, Leu/chainfire/librootjava/f$a;-><init>()V

    iget-object v1, p0, Leu/chainfire/librootjava/g;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Leu/chainfire/librootjava/f$a;->a(Ljava/lang/Class;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public p()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/librootjava/g;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/librootjava/g;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/librootjava/g;->m:Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Leu/chainfire/librootjava/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p0, Leu/chainfire/librootjava/g;->j:Leu/chainfire/librootjava/IRootIPC;

    iget-object v2, p0, Leu/chainfire/librootjava/g;->e:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Leu/chainfire/librootjava/IRootIPC;->bye(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    :try_start_3
    invoke-direct {p0}, Leu/chainfire/librootjava/g;->o()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public abstract t(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract u(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public v()V
    .locals 2

    invoke-virtual {p0}, Leu/chainfire/librootjava/g;->p()V

    iget-object v0, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/chainfire/librootjava/g;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Leu/chainfire/librootjava/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public w(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/chainfire/librootjava/g;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Leu/chainfire/librootjava/g;->h:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Leu/chainfire/librootjava/g;->p:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Leu/chainfire/librootjava/g;->n:Landroid/content/IntentFilter;

    iget-object v3, p0, Leu/chainfire/librootjava/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_2
    return-void
.end method
