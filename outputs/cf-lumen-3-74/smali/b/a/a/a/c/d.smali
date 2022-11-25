.class final Lb/a/a/a/c/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/c/f<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lb/a/a/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/c/a<",
            "TTResult;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lb/a/a/a/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lb/a/a/a/c/a<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/a/c/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/c/d;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lb/a/a/a/c/d;->c:Lb/a/a/a/c/a;

    return-void
.end method

.method static synthetic b(Lb/a/a/a/c/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb/a/a/a/c/d;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lb/a/a/a/c/d;)Lb/a/a/a/c/a;
    .locals 0

    iget-object p0, p0, Lb/a/a/a/c/d;->c:Lb/a/a/a/c/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lb/a/a/a/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/c/b<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/c/d;->c:Lb/a/a/a/c/a;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/a/c/d;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/a/a/a/c/e;

    invoke-direct {v1, p0, p1}, Lb/a/a/a/c/e;-><init>(Lb/a/a/a/c/d;Lb/a/a/a/c/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
