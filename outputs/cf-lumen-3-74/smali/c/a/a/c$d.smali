.class public Lc/a/a/c$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/c$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lc/a/a/f$a;

.field private final h:Lc/a/a/f$a;

.field private i:I

.field private j:Ljava/lang/Process;

.field private k:Ljava/io/DataOutputStream;

.field private l:Lc/a/a/f;

.field private m:Lc/a/a/f;

.field private n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:I

.field private volatile s:I

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/lang/Object;

.field private volatile v:I

.field private volatile w:Ljava/lang/String;

.field private volatile x:Ljava/lang/String;

.field private volatile y:Lc/a/a/c$c;

.field private volatile z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc/a/a/c$b;Lc/a/a/c$f;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    iput-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    iput-object v0, p0, Lc/a/a/c$d;->l:Lc/a/a/f;

    iput-object v0, p0, Lc/a/a/c$d;->m:Lc/a/a/f;

    iput-object v0, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/a/a/c$d;->o:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/a/a/c$d;->p:Z

    iput-boolean v2, p0, Lc/a/a/c$d;->q:Z

    iput v1, p0, Lc/a/a/c$d;->r:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    iput v1, p0, Lc/a/a/c$d;->v:I

    iput-object v0, p0, Lc/a/a/c$d;->w:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/c$d;->x:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    iput-object v0, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    invoke-static {p1}, Lc/a/a/c$b;->a(Lc/a/a/c$b;)Z

    move-result v2

    iput-boolean v2, p0, Lc/a/a/c$d;->b:Z

    invoke-static {p1}, Lc/a/a/c$b;->b(Lc/a/a/c$b;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    invoke-static {p1}, Lc/a/a/c$b;->c(Lc/a/a/c$b;)Z

    move-result v3

    iput-boolean v3, p0, Lc/a/a/c$d;->d:Z

    invoke-static {p1}, Lc/a/a/c$b;->d(Lc/a/a/c$b;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-static {p1}, Lc/a/a/c$b;->e(Lc/a/a/c$b;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lc/a/a/c$d;->f:Ljava/util/Map;

    invoke-static {p1}, Lc/a/a/c$b;->f(Lc/a/a/c$b;)Lc/a/a/f$a;

    move-result-object v4

    iput-object v4, p0, Lc/a/a/c$d;->g:Lc/a/a/f$a;

    invoke-static {p1}, Lc/a/a/c$b;->g(Lc/a/a/c$b;)Lc/a/a/f$a;

    move-result-object v4

    iput-object v4, p0, Lc/a/a/c$d;->h:Lc/a/a/f$a;

    invoke-static {p1}, Lc/a/a/c$b;->h(Lc/a/a/c$b;)I

    move-result v4

    iput v4, p0, Lc/a/a/c$d;->i:I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lc/a/a/c$b;->i(Lc/a/a/c$b;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lc/a/a/c$b;->i(Lc/a/a/c$b;)Landroid/os/Handler;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    if-eqz p2, :cond_1

    const/16 v2, 0x3c

    iput v2, p0, Lc/a/a/c$d;->i:I

    new-instance v2, Lc/a/a/c$c;

    sget-object v4, Lc/a/a/c;->a:[Ljava/lang/String;

    new-instance v5, Lc/a/a/c$d$a;

    invoke-direct {v5, p0, p1, p2}, Lc/a/a/c$d$a;-><init>(Lc/a/a/c$d;Lc/a/a/c$b;Lc/a/a/c$f;)V

    invoke-direct {v2, v4, v1, v5, v0}, Lc/a/a/c$c;-><init>([Ljava/lang/String;ILc/a/a/c$f;Lc/a/a/c$e;)V

    invoke-interface {v3, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lc/a/a/c$d;->A()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const/4 p1, -0x3

    invoke-interface {p2, v1, p1, v0}, Lc/a/a/c$f;->a(IILjava/util/List;)V

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/c$b;Lc/a/a/c$f;Lc/a/a/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/a/a/c$d;-><init>(Lc/a/a/c$b;Lc/a/a/c$f;)V

    return-void
.end method

.method private declared-synchronized A()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "[%s%%] START"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lc/a/a/c$d;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v2, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v2, p0, Lc/a/a/c$d;->f:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0

    :goto_2
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    new-instance v0, Lc/a/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Lc/a/a/c$d$e;

    invoke-direct {v6, p0}, Lc/a/a/c$d$e;-><init>(Lc/a/a/c$d;)V

    invoke-direct {v0, v2, v3, v6}, Lc/a/a/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lc/a/a/f$a;)V

    iput-object v0, p0, Lc/a/a/c$d;->l:Lc/a/a/f;

    new-instance v0, Lc/a/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v5, Lc/a/a/c$d$f;

    invoke-direct {v5, p0}, Lc/a/a/c$d$f;-><init>(Lc/a/a/c$d;)V

    invoke-direct {v0, v2, v3, v5}, Lc/a/a/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Lc/a/a/f$a;)V

    iput-object v0, p0, Lc/a/a/c$d;->m:Lc/a/a/f;

    iget-object v0, p0, Lc/a/a/c$d;->l:Lc/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lc/a/a/c$d;->m:Lc/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-boolean v1, p0, Lc/a/a/c$d;->o:Z

    iput-boolean v4, p0, Lc/a/a/c$d;->q:Z

    invoke-direct {p0}, Lc/a/a/c$d;->E()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    monitor-exit p0

    return v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private B(Lc/a/a/c$c;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/c$c;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lc/a/a/c$c;->d(Lc/a/a/c$c;)Lc/a/a/c$e;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    if-nez v0, :cond_3

    invoke-static {p1}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v0

    invoke-static {p1}, Lc/a/a/c$c;->e(Lc/a/a/c$c;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lc/a/a/c$f;->a(IILjava/util/List;)V

    :cond_1
    invoke-static {p1}, Lc/a/a/c$c;->d(Lc/a/a/c$c;)Lc/a/a/c$e;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lc/a/a/c$c;->d(Lc/a/a/c$c;)Lc/a/a/c$e;

    move-result-object p3

    invoke-static {p1}, Lc/a/a/c$c;->e(Lc/a/a/c$c;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Lc/a/a/c$e;->a(II)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lc/a/a/c$d;->G()V

    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    new-instance v1, Lc/a/a/c$d$d;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/a/a/c$d$d;-><init>(Lc/a/a/c$d;Lc/a/a/c$c;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized C(Ljava/lang/String;Lc/a/a/f$a;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/a/a/c$d;->G()V

    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    new-instance v1, Lc/a/a/c$d$c;

    invoke-direct {v1, p0, p2, p1}, Lc/a/a/c$d$c;-><init>(Lc/a/a/c$d;Lc/a/a/f$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lc/a/a/f$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized D()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c$d;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c$d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    iget v1, p0, Lc/a/a/c$d;->v:I

    iget-object v2, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c$d;->B(Lc/a/a/c$c;ILjava/util/List;)V

    invoke-direct {p0}, Lc/a/a/c$d;->I()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    iput-object v0, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/c$d;->p:Z

    invoke-direct {p0}, Lc/a/a/c$d;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private E()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/a/a/c$d;->F(Z)V

    return-void
.end method

.method private F(Z)V
    .locals 11

    invoke-virtual {p0}, Lc/a/a/c$d;->y()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lc/a/a/c$d;->p:Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lc/a/a/c$d;->p:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v0, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c$c;

    iget-object v4, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iput-object v2, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    iput v3, p0, Lc/a/a/c$d;->v:I

    iput-object v2, p0, Lc/a/a/c$d;->w:Ljava/lang/String;

    iput-object v2, p0, Lc/a/a/c$d;->x:Ljava/lang/String;

    invoke-static {v0}, Lc/a/a/c$c;->a(Lc/a/a/c$c;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    :try_start_0
    invoke-static {v0}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    :cond_1
    iput-boolean v3, p0, Lc/a/a/c$d;->p:Z

    iput-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    invoke-direct {p0}, Lc/a/a/c$d;->H()V

    invoke-static {v0}, Lc/a/a/c$c;->a(Lc/a/a/c$c;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    const-string v7, "[%s+] %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc/a/a/a;->e(Ljava/lang/String;)V

    iget-object v7, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " $?\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v1, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "echo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >&2\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lc/a/a/c$d;->F(Z)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    :goto_1
    iget-object v0, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/c$c;

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c$d;->B(Lc/a/a/c$c;ILjava/util/List;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lc/a/a/c$d;->p:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object p1, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_3
    return-void
.end method

.method private G()V
    .locals 2

    iget-object v0, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/a/a/c$d;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/a/a/c$d;->r:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private H()V
    .locals 8

    iget v0, p0, Lc/a/a/c$d;->i:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/c$d;->s:I

    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lc/a/a/c$d$b;

    invoke-direct {v2, p0}, Lc/a/a/c$d$b;-><init>(Lc/a/a/c$d;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method static synthetic a(Lc/a/a/c$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lc/a/a/c$d;I)I
    .locals 0

    iput p1, p0, Lc/a/a/c$d;->i:I

    return p1
.end method

.method static synthetic c(Lc/a/a/c$d;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c$d;->w()V

    return-void
.end method

.method static synthetic d(Lc/a/a/c$d;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c$d;->v()V

    return-void
.end method

.method static synthetic e(Lc/a/a/c$d;)Lc/a/a/c$c;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    return-object p0
.end method

.method static synthetic f(Lc/a/a/c$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/a/c$d;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lc/a/a/c$d;)Lc/a/a/f$a;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$d;->g:Lc/a/a/f$a;

    return-object p0
.end method

.method static synthetic h(Lc/a/a/c$d;Ljava/lang/String;Lc/a/a/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/a/a/c$d;->C(Ljava/lang/String;Lc/a/a/f$a;)V

    return-void
.end method

.method static synthetic i(Lc/a/a/c$d;I)I
    .locals 0

    iput p1, p0, Lc/a/a/c$d;->v:I

    return p1
.end method

.method static synthetic j(Lc/a/a/c$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d;->w:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic k(Lc/a/a/c$d;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/c$d;->D()V

    return-void
.end method

.method static synthetic l(Lc/a/a/c$d;)Z
    .locals 0

    iget-boolean p0, p0, Lc/a/a/c$d;->d:Z

    return p0
.end method

.method static synthetic m(Lc/a/a/c$d;)Lc/a/a/f$a;
    .locals 0

    iget-object p0, p0, Lc/a/a/c$d;->h:Lc/a/a/f$a;

    return-object p0
.end method

.method static synthetic n(Lc/a/a/c$d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d;->x:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized o(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/a/a/c$d;->r:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lc/a/a/c$d;->r:I

    iget v1, p0, Lc/a/a/c$d;->r:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

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

.method private declared-synchronized w()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lc/a/a/c$d;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lc/a/a/c$d;->y()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, -0x2

    const-string v3, "[%s%%] SHELL_DIED"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lc/a/a/a;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lc/a/a/c$d;->s:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lc/a/a/c$d;->s:I

    iget v3, p0, Lc/a/a/c$d;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v0, v3, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, -0x1

    :try_start_3
    const-string v3, "[%s%%] WATCHDOG_EXIT"

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    iget-object v3, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    invoke-direct {p0, v1, v0, v3}, Lc/a/a/c$d;->B(Lc/a/a/c$c;ILjava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c$d;->y:Lc/a/a/c$c;

    iput-object v0, p0, Lc/a/a/c$d;->z:Ljava/util/List;

    iput-boolean v2, p0, Lc/a/a/c$d;->p:Z

    iget-object v1, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    iput-object v0, p0, Lc/a/a/c$d;->n:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lc/a/a/c$d;->z()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public J()Z
    .locals 3

    invoke-static {}, Lc/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc/a/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    new-instance v0, Lc/a/a/e;

    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v0, v1}, Lc/a/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc/a/a/c$d;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lc/a/a/c$d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    :try_start_2
    monitor-exit v0

    return v2

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/a/a/c$d;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    monitor-enter v0

    :goto_2
    :try_start_3
    iget v1, p0, Lc/a/a/c$d;->r:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v1, :cond_3

    :try_start_4
    iget-object v1, p0, Lc/a/a/c$d;->u:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_5
    monitor-exit v0

    return v2

    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_4
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 1

    iget-boolean v0, p0, Lc/a/a/c$d;->q:Z

    if-nez v0, :cond_1

    invoke-static {}, Lc/a/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application did not close() interactive shell"

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    new-instance v0, Lc/a/a/d;

    invoke-direct {v0}, Lc/a/a/d;-><init>()V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public p(Ljava/lang/String;ILc/a/a/c$f;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lc/a/a/c$d;->t([Ljava/lang/String;ILc/a/a/c$f;)V

    return-void
.end method

.method public q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc/a/a/c$d;->r(Ljava/util/List;ILc/a/a/c$f;)V

    return-void
.end method

.method public r(Ljava/util/List;ILc/a/a/c$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lc/a/a/c$f;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/c$d;->t([Ljava/lang/String;ILc/a/a/c$f;)V

    return-void
.end method

.method public s([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc/a/a/c$d;->t([Ljava/lang/String;ILc/a/a/c$f;)V

    return-void
.end method

.method public declared-synchronized t([Ljava/lang/String;ILc/a/a/c$f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d;->e:Ljava/util/List;

    new-instance v1, Lc/a/a/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lc/a/a/c$c;-><init>([Ljava/lang/String;ILc/a/a/c$f;Lc/a/a/c$e;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lc/a/a/c$d;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u()V
    .locals 5

    invoke-virtual {p0}, Lc/a/a/c$d;->x()Z

    move-result v0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc/a/a/c$d;->o:Z

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/a/a/c$d;->o:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/a/a/c$d;->q:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    invoke-static {}, Lc/a/a/a;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lc/a/a/a;->h()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    new-instance v0, Lc/a/a/e;

    const-string v1, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-direct {v0, v1}, Lc/a/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lc/a/a/c$d;->J()Z

    :cond_3
    :try_start_1
    iget-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    const-string v3, "exit\n"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "EPIPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Stream closed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    throw v0

    :cond_5
    :goto_1
    iget-object v0, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_1
    :try_start_4
    iget-object v0, p0, Lc/a/a/c$d;->l:Lc/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-object v0, p0, Lc/a/a/c$d;->m:Lc/a/a/f;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    invoke-direct {p0}, Lc/a/a/c$d;->I()V

    iget-object v0, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    const-string v0, "[%s%%] END"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lc/a/a/c$d;->c:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public declared-synchronized x()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lc/a/a/c$d;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/c$d;->p:Z

    iget-object v0, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lc/a/a/c$d;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public y()Z
    .locals 2

    iget-object v0, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized z()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lc/a/a/c$d;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/c$d;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lc/a/a/c$d;->k:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    iget-object v1, p0, Lc/a/a/c$d;->j:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_1
    :try_start_3
    iput-boolean v0, p0, Lc/a/a/c$d;->p:Z

    iget-object v0, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, Lc/a/a/c$d;->t:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
