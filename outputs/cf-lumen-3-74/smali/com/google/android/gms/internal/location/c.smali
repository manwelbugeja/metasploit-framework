.class public final Lcom/google/android/gms/internal/location/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/location/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/location/k<",
            "Lcom/google/android/gms/internal/location/zzao;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "Lcom/google/android/gms/location/c;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzax;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzaw;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "Lcom/google/android/gms/location/b;",
            ">;",
            "Lcom/google/android/gms/internal/location/zzat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/location/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/location/k<",
            "Lcom/google/android/gms/internal/location/zzao;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/location/c;->b:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/c;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/c;->e:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    return-void
.end method

.method private final b(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/internal/location/zzax;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g<",
            "Lcom/google/android/gms/location/c;",
            ">;)",
            "Lcom/google/android/gms/internal/location/zzax;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->b()Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/location/zzax;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/location/zzax;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/location/zzax;-><init>(Lcom/google/android/gms/common/api/internal/g;)V

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/g;->b()Lcom/google/android/gms/common/api/internal/g$a;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzax;

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v4}, Lcom/google/android/gms/internal/location/k;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzao;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzbf;->c(Lcom/google/android/gms/location/zzx;Lcom/google/android/gms/internal/location/zzaj;)Lcom/google/android/gms/internal/location/zzbf;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/location/zzao;->zza(Lcom/google/android/gms/internal/location/zzbf;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->e:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzat;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v4}, Lcom/google/android/gms/internal/location/k;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzao;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/location/zzbf;->b(Lcom/google/android/gms/location/zzu;Lcom/google/android/gms/internal/location/zzaj;)Lcom/google/android/gms/internal/location/zzbf;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/location/zzao;->zza(Lcom/google/android/gms/internal/location/zzbf;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->d:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzaw;

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v4}, Lcom/google/android/gms/internal/location/k;->b()Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/location/zzao;

    new-instance v5, Lcom/google/android/gms/internal/location/zzo;

    const/4 v6, 0x2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v5, v6, v3, v2, v3}, Lcom/google/android/gms/internal/location/zzo;-><init>(ILcom/google/android/gms/internal/location/zzm;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/location/zzao;->zza(Lcom/google/android/gms/internal/location/zzo;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/location/c;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public final c(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/internal/location/zzaj;)V
    .locals 8
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

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/k;->a()V

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/c;->b(Lcom/google/android/gms/common/api/internal/g;)Lcom/google/android/gms/internal/location/zzax;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/k;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    invoke-static {p1}, Lcom/google/android/gms/internal/location/zzbd;->b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzbd;

    move-result-object v3

    new-instance p1, Lcom/google/android/gms/internal/location/zzbf;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v7, p2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/location/zzbf;-><init>(ILcom/google/android/gms/internal/location/zzbd;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzao;->zza(Lcom/google/android/gms/internal/location/zzbf;)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/k;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/location/c;->a:Lcom/google/android/gms/internal/location/k;

    invoke-interface {v0}, Lcom/google/android/gms/internal/location/k;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/location/zzao;->zza(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/location/c;->b:Z

    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/c;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/location/c;->d(Z)V

    :cond_0
    return-void
.end method
