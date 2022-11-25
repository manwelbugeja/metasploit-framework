.class final Lcom/google/android/gms/internal/location/zzat;
.super Lcom/google/android/gms/location/zzv;
.source ""


# instance fields
.field private final zzda:Lcom/google/android/gms/common/api/internal/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/g<",
            "Lcom/google/android/gms/location/b;",
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
            "Lcom/google/android/gms/location/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/zzv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzat;->zzda:Lcom/google/android/gms/common/api/internal/g;

    return-void
.end method


# virtual methods
.method public final onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->zzda:Lcom/google/android/gms/common/api/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/location/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/e;-><init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g$b;)V

    return-void
.end method

.method public final onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->zzda:Lcom/google/android/gms/common/api/internal/g;

    new-instance v1, Lcom/google/android/gms/internal/location/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/d;-><init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/g;->c(Lcom/google/android/gms/common/api/internal/g$b;)V

    return-void
.end method

.method public final declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzat;->zzda:Lcom/google/android/gms/common/api/internal/g;

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
