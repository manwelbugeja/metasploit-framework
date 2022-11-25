.class public final Lcom/google/android/gms/maps/GoogleMap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/GoogleMap$v;,
        Lcom/google/android/gms/maps/GoogleMap$zza;,
        Lcom/google/android/gms/maps/GoogleMap$i;,
        Lcom/google/android/gms/maps/GoogleMap$o;,
        Lcom/google/android/gms/maps/GoogleMap$u;,
        Lcom/google/android/gms/maps/GoogleMap$s;,
        Lcom/google/android/gms/maps/GoogleMap$t;,
        Lcom/google/android/gms/maps/GoogleMap$b;,
        Lcom/google/android/gms/maps/GoogleMap$y;,
        Lcom/google/android/gms/maps/GoogleMap$a;,
        Lcom/google/android/gms/maps/GoogleMap$l;,
        Lcom/google/android/gms/maps/GoogleMap$m;,
        Lcom/google/android/gms/maps/GoogleMap$k;,
        Lcom/google/android/gms/maps/GoogleMap$r;,
        Lcom/google/android/gms/maps/GoogleMap$q;,
        Lcom/google/android/gms/maps/GoogleMap$x;,
        Lcom/google/android/gms/maps/GoogleMap$w;,
        Lcom/google/android/gms/maps/GoogleMap$h;,
        Lcom/google/android/gms/maps/GoogleMap$c;,
        Lcom/google/android/gms/maps/GoogleMap$d;,
        Lcom/google/android/gms/maps/GoogleMap$e;,
        Lcom/google/android/gms/maps/GoogleMap$f;,
        Lcom/google/android/gms/maps/GoogleMap$g;,
        Lcom/google/android/gms/maps/GoogleMap$p;,
        Lcom/google/android/gms/maps/GoogleMap$n;,
        Lcom/google/android/gms/maps/GoogleMap$j;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/internal/maps/zzt;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/maps/a;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->moveCamera(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final c(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setMyLocationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final d(Lcom/google/android/gms/maps/GoogleMap$n;)V
    .locals 2

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzaj;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->a:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    new-instance v1, Lcom/google/android/gms/maps/zzy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzy;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$n;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->setOnMapClickListener(Lcom/google/android/gms/maps/internal/zzaj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method
