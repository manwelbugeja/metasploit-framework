.class public final Lcom/google/android/gms/maps/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;


# direct methods
.method public static a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/maps/model/i;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw p1
.end method

.method public static b(Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    sput-object p0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    return-void
.end method

.method private static c()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;
    .locals 2

    sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    const-string v1, "CameraUpdateFactory is not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    return-object v0
.end method
