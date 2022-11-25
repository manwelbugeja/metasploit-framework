.class final Lcom/google/android/gms/internal/location/zzax;
.super Lcom/google/android/gms/location/zzy;
.source ""


# instance fields
.field private final zzda:Lcom/google/android/gms/common/api/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/g<",
            "Lcom/google/android/gms/location/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g<",
            "Lcom/google/android/gms/location/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzax;->zzda:Lcom/google/android/gms/common/api/internal/g;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onLocationChanged(Landroid/location/Location;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzax;->zzda:Lcom/google/android/gms/common/api/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/location/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/f;-><init>(Lcom/google/android/gms/internal/location/zzax;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzax;->zzda:Lcom/google/android/gms/common/api/internal/g;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
