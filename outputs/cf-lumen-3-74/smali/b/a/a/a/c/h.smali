.class final Lb/a/a/a/c/h;
.super Lb/a/a/a/c/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lb/a/a/a/c/b<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lb/a/a/a/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/c/g<",
            "TTResult;>;"
        }
    .end annotation
.end field

.field private c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile d:Z

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private f:Ljava/lang/Exception;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/c/b;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    new-instance v0, Lb/a/a/a/c/g;

    invoke-direct {v0}, Lb/a/a/a/c/g;-><init>()V

    iput-object v0, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    return-void
.end method

.method private final h()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Lb/a/a/a/c/h;->c:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Task is already complete"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/j;->k(ZLjava/lang/Object;)V

    return-void
.end method

.method private final i()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    invoke-virtual {v0, p0}, Lb/a/a/a/c/g;->a(Lb/a/a/a/c/b;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Lb/a/a/a/c/a;)Lb/a/a/a/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lb/a/a/a/c/a<",
            "TTResult;>;)",
            "Lb/a/a/a/c/b<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    new-instance v1, Lb/a/a/a/c/d;

    invoke-direct {v1, p1, p2}, Lb/a/a/a/c/d;-><init>(Ljava/util/concurrent/Executor;Lb/a/a/a/c/a;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/c/g;->b(Lb/a/a/a/c/f;)V

    invoke-direct {p0}, Lb/a/a/a/c/h;->i()V

    return-object p0
.end method

.method public final b()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/c/h;->f:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lb/a/a/a/c/h;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/c/h;->f:Ljava/lang/Exception;

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

.method public final d(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lb/a/a/a/c/h;->h()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    iput-object p1, p0, Lb/a/a/a/c/h;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    invoke-virtual {p1, p0}, Lb/a/a/a/c/g;->a(Lb/a/a/a/c/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lb/a/a/a/c/h;->h()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    iput-object p1, p0, Lb/a/a/a/c/h;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    invoke-virtual {p1, p0}, Lb/a/a/a/c/g;->a(Lb/a/a/a/c/b;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final f(Ljava/lang/Exception;)Z
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    iput-object p1, p0, Lb/a/a/a/c/h;->f:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    invoke-virtual {p1, p0}, Lb/a/a/a/c/g;->a(Lb/a/a/a/c/b;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/a/a/c/h;->c:Z

    iput-object p1, p0, Lb/a/a/a/c/h;->e:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb/a/a/a/c/h;->b:Lb/a/a/a/c/g;

    invoke-virtual {p1, p0}, Lb/a/a/a/c/g;->a(Lb/a/a/a/c/b;)V

    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
