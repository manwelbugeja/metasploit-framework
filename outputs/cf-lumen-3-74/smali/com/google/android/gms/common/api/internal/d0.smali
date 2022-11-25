.class final Lcom/google/android/gms/common/api/internal/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/v;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/common/api/internal/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d0;-><init>(Lcom/google/android/gms/common/api/internal/v;)V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/v;->C(Lcom/google/android/gms/common/api/internal/v;)Lb/a/a/a/b/e;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/v;)V

    invoke-interface {p1, v0}, Lb/a/a/a/b/e;->d(Lcom/google/android/gms/signin/internal/zad;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v;->v(Lcom/google/android/gms/common/api/internal/v;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/v;->u(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/v;->F(Lcom/google/android/gms/common/api/internal/v;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/v;->G(Lcom/google/android/gms/common/api/internal/v;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/v;->e(Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/v;->v(Lcom/google/android/gms/common/api/internal/v;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d0;->a:Lcom/google/android/gms/common/api/internal/v;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v;->v(Lcom/google/android/gms/common/api/internal/v;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
