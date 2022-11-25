.class public final Lcom/google/android/gms/internal/location/g;
.super Lcom/google/android/gms/internal/location/o;
.source ""


# instance fields
.field private final E:Lcom/google/android/gms/internal/location/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/b;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/common/internal/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/location/o;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/b;)V

    new-instance p2, Lcom/google/android/gms/internal/location/c;

    iget-object p3, p0, Lcom/google/android/gms/internal/location/o;->D:Lcom/google/android/gms/internal/location/k;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/location/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/k;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/c;->a()V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/location/c;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "LocationClientImpl"

    const-string v3, "Client disconnected before listeners could be cleaned up"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final o0(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/common/api/internal/g<",
            "Lcom/google/android/gms/location/c;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzaj;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/g;->E:Lcom/google/android/gms/internal/location/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/location/c;->c(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/internal/location/zzaj;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
