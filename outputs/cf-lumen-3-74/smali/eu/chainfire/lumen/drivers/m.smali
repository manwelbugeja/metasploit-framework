.class public Leu/chainfire/lumen/drivers/m;
.super Leu/chainfire/lumen/drivers/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/m$g;
    }
.end annotation


# static fields
.field private static w:Leu/chainfire/lumen/drivers/m;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private volatile d:Landroid/os/HandlerThread;

.field private volatile e:Landroid/os/Handler;

.field private volatile f:Landroid/content/BroadcastReceiver;

.field private volatile g:Landroid/content/IntentFilter;

.field private volatile h:Landroid/content/IntentFilter;

.field private volatile i:Leu/chainfire/lumen/drivers/ControlSetting;

.field private volatile j:Leu/chainfire/lumen/drivers/ControlSetting;

.field private volatile k:Ljava/lang/Thread;

.field private volatile l:Lc/a/a/c$d;

.field private volatile m:Z

.field private volatile n:Leu/chainfire/lumen/root/IPC;

.field private volatile o:J

.field private final p:Ljava/lang/Object;

.field private final q:Leu/chainfire/librootjava/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leu/chainfire/librootjava/g<",
            "Leu/chainfire/lumen/root/IPC;",
            ">;"
        }
    .end annotation
.end field

.field private volatile r:Z

.field private final s:Ljava/lang/Object;

.field private final t:Leu/chainfire/lumen/drivers/a;

.field private volatile u:Leu/chainfire/lumen/drivers/m$g;

.field private final v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->d:Landroid/os/HandlerThread;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->f:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->j:Leu/chainfire/lumen/drivers/ControlSetting;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->k:Ljava/lang/Thread;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/m;->m:Z

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Leu/chainfire/lumen/drivers/m;->o:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Leu/chainfire/lumen/drivers/m;->p:Ljava/lang/Object;

    new-instance v2, Leu/chainfire/lumen/drivers/m$a;

    invoke-direct {v2, p0, v0, v1}, Leu/chainfire/lumen/drivers/m$a;-><init>(Leu/chainfire/lumen/drivers/m;Landroid/content/Context;I)V

    iput-object v2, p0, Leu/chainfire/lumen/drivers/m;->q:Leu/chainfire/librootjava/g;

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/m;->r:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->s:Ljava/lang/Object;

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    new-instance v0, Leu/chainfire/lumen/drivers/m$c;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/m$c;-><init>(Leu/chainfire/lumen/drivers/m;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->v:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Leu/chainfire/librootjava/g;->w(Landroid/content/Context;)V

    new-instance v1, Leu/chainfire/lumen/drivers/a;

    new-instance v2, Leu/chainfire/lumen/drivers/m$b;

    invoke-direct {v2, p0}, Leu/chainfire/lumen/drivers/m$b;-><init>(Leu/chainfire/lumen/drivers/m;)V

    invoke-direct {v1, v0, v2}, Leu/chainfire/lumen/drivers/a;-><init>(Landroid/content/Context;Leu/chainfire/lumen/drivers/a$d;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->t:Leu/chainfire/lumen/drivers/a;

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "anti_flicker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->b:Leu/chainfire/lumen/drivers/m$g;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    :cond_0
    const-string v0, "performance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    :cond_1
    return-void
.end method

.method static synthetic A(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    return-object p0
.end method

.method static synthetic C(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/drivers/ControlSetting;)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    return-object p1
.end method

.method static synthetic D(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/m$g;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    return-object p0
.end method

.method static synthetic E(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->j:Leu/chainfire/lumen/drivers/ControlSetting;

    return-object p0
.end method

.method static synthetic F(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/drivers/ControlSetting;)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->j:Leu/chainfire/lumen/drivers/ControlSetting;

    return-object p1
.end method

.method public static G()Z
    .locals 2

    invoke-static {}, Leu/chainfire/lumen/a;->b()Leu/chainfire/lumen/a$b;

    move-result-object v0

    sget-object v1, Leu/chainfire/lumen/a$b;->a:Leu/chainfire/lumen/a$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Leu/chainfire/lumen/a$b;->b:Leu/chainfire/lumen/a$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Leu/chainfire/lumen/a$b;->c:Leu/chainfire/lumen/a$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Leu/chainfire/lumen/a$b;->d:Leu/chainfire/lumen/a$b;

    if-eq v0, v1, :cond_1

    sget-object v1, Leu/chainfire/lumen/a$b;->e:Leu/chainfire/lumen/a$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private H(J)V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    sget-object v2, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Leu/chainfire/lumen/drivers/m;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/m;->r:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/lumen/drivers/m$d;

    invoke-direct {v1, p0, p1, p2}, Leu/chainfire/lumen/drivers/m$d;-><init>(Leu/chainfire/lumen/drivers/m;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static I(B)Leu/chainfire/lumen/drivers/m$g;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    return-object p0

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    return-object p0

    :cond_1
    sget-object p0, Leu/chainfire/lumen/drivers/m$g;->b:Leu/chainfire/lumen/drivers/m$g;

    return-object p0

    :cond_2
    sget-object p0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    return-object p0
.end method

.method public static J(Leu/chainfire/lumen/drivers/m$g;)B
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/m$f;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static K(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Leu/chainfire/lumen/drivers/m;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Leu/chainfire/lumen/a;->b()Leu/chainfire/lumen/a$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "inject.%s.bin"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Leu/chainfire/lumen/drivers/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Leu/chainfire/lumen/drivers/m;->y:Ljava/lang/String;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/m;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static L(Landroid/content/Context;)Leu/chainfire/lumen/drivers/m;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/m;->w:Leu/chainfire/lumen/drivers/m;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/m;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Leu/chainfire/lumen/drivers/m;->w:Leu/chainfire/lumen/drivers/m;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/m;->w:Leu/chainfire/lumen/drivers/m;

    return-object p0
.end method

.method public static M(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v0, Leu/chainfire/lumen/drivers/m;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Leu/chainfire/lumen/a;->b()Leu/chainfire/lumen/a$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "libcflumen.%s.bin"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Leu/chainfire/lumen/drivers/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Leu/chainfire/lumen/drivers/m;->x:Ljava/lang/String;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/m;->x:Ljava/lang/String;

    return-object p0
.end method

.method private N()V
    .locals 4

    const-string v0, "SERVER"

    const-string v1, "Kill"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Leu/chainfire/lumen/drivers/m;->m:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/lumen/drivers/m;->o:J

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;

    invoke-interface {v1}, Leu/chainfire/lumen/root/IPC;->terminate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private O()V
    .locals 3

    const-string v0, "SERVER"

    const-string v1, "REFRESH"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    if-nez v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->j:Leu/chainfire/lumen/drivers/ControlSetting;

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leu/chainfire/lumen/drivers/ControlSetting;->t(Z)Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

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

.method private declared-synchronized Q()V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "SERVER"

    const-string v1, "Setup"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/m;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "CF.lumen Handler Thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->d:Landroid/os/HandlerThread;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->d:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    :cond_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->f:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_4

    new-instance v1, Leu/chainfire/lumen/drivers/m$e;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/drivers/m$e;-><init>(Leu/chainfire/lumen/drivers/m;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->f:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    const/16 v3, 0x3e7

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_2
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    if-nez v1, :cond_3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    const-string v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_3
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->f:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/m;->g:Landroid/content/IntentFilter;

    iget-object v5, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->f:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/m;->h:Landroid/content/IntentFilter;

    iget-object v5, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->k:Ljava/lang/Thread;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->v:Ljava/lang/Runnable;

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->k:Ljava/lang/Thread;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->k:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    if-nez v1, :cond_6

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    if-nez v1, :cond_6

    new-instance v1, Lc/a/a/c$b;

    invoke-direct {v1}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {v1}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    invoke-virtual {v1, v2}, Lc/a/a/c$b;->m(Z)Lc/a/a/c$b;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Lc/a/a/c$b;->n(Landroid/os/Handler;)Lc/a/a/c$b;

    invoke-virtual {v1}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    invoke-virtual {v3}, Lc/a/a/c$d;->x()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    new-instance v3, Leu/chainfire/lumen/root/a;

    invoke-direct {v3}, Leu/chainfire/lumen/root/a;-><init>()V

    iget-object v4, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    invoke-virtual {v3, v4, v2}, Lc/a/a/b;->d(Lc/a/a/c$d;Z)V

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    sget-object v4, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    iget-object v5, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    invoke-static {v3, v5}, Leu/chainfire/lumen/drivers/g;->d(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/g;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    invoke-virtual {v3, v5}, Leu/chainfire/lumen/drivers/g;->f(Lc/a/a/c$d;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    invoke-static {v3}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->N:Leu/chainfire/lumen/a$k;

    const-string v5, "compatibility"

    invoke-virtual {v3, v5}, Leu/chainfire/lumen/a$k;->d(Ljava/lang/String;)V

    iput-object v4, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_1
    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;

    if-nez v3, :cond_b

    iget-object v3, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    invoke-virtual {v3}, Lc/a/a/c$d;->x()Z

    move-result v3

    if-nez v3, :cond_a

    if-nez v1, :cond_a

    if-eqz v0, :cond_b

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Leu/chainfire/lumen/drivers/m;->o:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x2710

    cmp-long v5, v0, v3

    if-lez v5, :cond_b

    const-string v0, "SERVER"

    const-string v1, "Launching root service"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/drivers/m;->o:J

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->l:Lc/a/a/c$d;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m;->b:Landroid/content/Context;

    const-class v2, Leu/chainfire/lumen/root/Runner;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "eu.chainfire.lumen:root"

    invoke-static/range {v1 .. v6}, Leu/chainfire/librootjavadaemon/RootDaemon;->f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/c$d;->q(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->p:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic p(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/root/IPC;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;

    return-object p0
.end method

.method static synthetic q(Leu/chainfire/lumen/drivers/m;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->N()V

    return-void
.end method

.method static synthetic r(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/root/IPC;)Leu/chainfire/lumen/root/IPC;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->n:Leu/chainfire/lumen/root/IPC;

    return-object p1
.end method

.method static synthetic s(Leu/chainfire/lumen/drivers/m;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->k:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic t(Leu/chainfire/lumen/drivers/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic u(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/m;->s:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic v(Leu/chainfire/lumen/drivers/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/m;->r:Z

    return p1
.end method

.method static synthetic w(Leu/chainfire/lumen/drivers/m;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->O()V

    return-void
.end method

.method static synthetic x(Leu/chainfire/lumen/drivers/m;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/drivers/m;->m:Z

    return p0
.end method

.method static synthetic y(Leu/chainfire/lumen/drivers/m;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->Q()V

    return-void
.end method

.method static synthetic z(Leu/chainfire/lumen/drivers/m;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/drivers/m;->H(J)V

    return-void
.end method


# virtual methods
.method public P(Leu/chainfire/lumen/drivers/m$g;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->u:Leu/chainfire/lumen/drivers/m$g;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->O()V

    return-void
.end method

.method public e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;
    .locals 5

    sget-object v0, Leu/chainfire/lumen/drivers/m$f;->b:[I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->k()Z

    move-result p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/ControlSetting;->d(Z)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->g()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->e()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/ControlSetting;->s(F)Leu/chainfire/lumen/drivers/ControlSetting;

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->j()I

    move-result v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/ControlSetting;->m(I)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v1, v0, v0}, Leu/chainfire/lumen/drivers/ControlSetting;->f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-static {v1, v0, v2}, Leu/chainfire/lumen/drivers/ControlSetting;->f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v2, v2, v1}, Leu/chainfire/lumen/drivers/ControlSetting;->f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {v2, v1, v2}, Leu/chainfire/lumen/drivers/ControlSetting;->f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {v1, v2, v2}, Leu/chainfire/lumen/drivers/ControlSetting;->f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->i()I

    move-result v0

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->f()I

    move-result v1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->c()I

    move-result v2

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->b()I

    move-result v4

    invoke-static {v0, v1, v2, v4}, Leu/chainfire/lumen/drivers/ControlSetting;->l(IIII)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->g()I

    move-result v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/ControlSetting;->h(I)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->N()V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->q:Leu/chainfire/librootjava/g;

    invoke-virtual {v0}, Leu/chainfire/librootjava/g;->v()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "SERVER"

    const-string v1, "SET-DRIVER"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/ControlSetting;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/m;->Q()V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->t:Leu/chainfire/lumen/drivers/a;

    const/4 v1, 0x1

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/drivers/a;->c(ZLandroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->t:Leu/chainfire/lumen/drivers/a;

    invoke-virtual {v0, v2}, Leu/chainfire/lumen/drivers/a;->b(Z)V

    :goto_0
    iget-object v0, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    check-cast p1, Leu/chainfire/lumen/drivers/ControlSetting;

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m;->i:Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/m;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->c()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p1

    :cond_1
    check-cast p1, Leu/chainfire/lumen/drivers/ControlSetting;

    move-object v0, p2

    check-cast v0, Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v1, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v1, :cond_2

    iget-object v1, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/m;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {p2}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    iget-object v1, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v1, :cond_3

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->c()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p1

    :cond_3
    iget-object v1, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v1, :cond_4

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->c()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    :cond_4
    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p2, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p2, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    iget-object v4, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v4, v4, v2

    iget-object v5, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v5, v5, v2

    invoke-virtual {p0, v4, v5, p3}, Leu/chainfire/lumen/drivers/c;->d(FFI)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget p1, p1, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    iget v0, v0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-virtual {p0, p1, v0, p3}, Leu/chainfire/lumen/drivers/c;->d(FFI)F

    move-result p1

    iput p1, p2, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/m;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Leu/chainfire/lumen/a$e;)Z
    .locals 2

    sget-object v0, Leu/chainfire/lumen/drivers/m$f;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public n(Leu/chainfire/lumen/a$e;)Z
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/m$f;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
