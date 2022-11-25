.class abstract Lcom/google/android/gms/common/api/internal/n0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/l0;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n0;->a:Lcom/google/android/gms/common/api/internal/l0;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/m0;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/m0;->h(Lcom/google/android/gms/common/api/internal/m0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/m0;->k(Lcom/google/android/gms/common/api/internal/m0;)Lcom/google/android/gms/common/api/internal/l0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n0;->a:Lcom/google/android/gms/common/api/internal/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/m0;->h(Lcom/google/android/gms/common/api/internal/m0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/n0;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/m0;->h(Lcom/google/android/gms/common/api/internal/m0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
