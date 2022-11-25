.class public abstract Lcom/google/android/gms/maps/internal/zzi;
.super Lcom/google/android/gms/internal/maps/zzb;
.source ""

# interfaces
.implements Lcom/google/android/gms/maps/internal/zzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IInfoWindowAdapter"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/maps/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzu;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzt;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/maps/internal/zzh;->zzi(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzu;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzt;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/maps/internal/zzh;->zzh(Lcom/google/android/gms/internal/maps/zzt;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/maps/a;->b(Landroid/os/Parcel;Landroid/os/IInterface;)V

    return p4
.end method
