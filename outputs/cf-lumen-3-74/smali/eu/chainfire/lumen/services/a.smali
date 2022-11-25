.class public Leu/chainfire/lumen/services/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;
.implements Lcom/google/android/gms/location/c;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/google/android/gms/common/api/f;

.field private c:Lcom/google/android/gms/location/LocationRequest;

.field private volatile d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/services/a;->b:Lcom/google/android/gms/common/api/f;

    iput-object v0, p0, Leu/chainfire/lumen/services/a;->c:Lcom/google/android/gms/location/LocationRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/services/a;->d:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/common/api/f$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/f$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f$a;->b(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/api/f$a;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/f$a;->c(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/f$a;

    sget-object p1, Lcom/google/android/gms/location/d;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/f$a;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/f$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f$a;->d()Lcom/google/android/gms/common/api/f;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/services/a;->b:Lcom/google/android/gms/common/api/f;

    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    iput-object p1, p0, Leu/chainfire/lumen/services/a;->c:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->d(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Leu/chainfire/lumen/services/a;->c:Lcom/google/android/gms/location/LocationRequest;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->c(J)Lcom/google/android/gms/location/LocationRequest;

    iget-object p1, p0, Leu/chainfire/lumen/services/a;->c:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x69

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->e(I)Lcom/google/android/gms/location/LocationRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Leu/chainfire/lumen/services/a;->d:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/services/a;->d:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[FOLLOW] Starting location updates"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/services/a;->b:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/lumen/services/a;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/services/a;->d:Z

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[FOLLOW] Stopping location updates"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/services/a;->b:Lcom/google/android/gms/common/api/f;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/f;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v0}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object p1, Lcom/google/android/gms/location/d;->d:Lcom/google/android/gms/location/a;

    iget-object v0, p0, Leu/chainfire/lumen/services/a;->b:Lcom/google/android/gms/common/api/f;

    iget-object v1, p0, Leu/chainfire/lumen/services/a;->c:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/a;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/a;->d:Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Leu/chainfire/lumen/services/a;->d:Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[FOLLOW] Location update received [%.2f] [%.2f]"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    invoke-static {v0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v1, v0, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object v0, v0, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object p1, p0, Leu/chainfire/lumen/services/a;->a:Landroid/content/Context;

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->a0(Landroid/content/Context;)V

    return-void
.end method
