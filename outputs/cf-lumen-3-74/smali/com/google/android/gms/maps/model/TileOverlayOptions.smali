.class public final Lcom/google/android/gms/maps/model/TileOverlayOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/TileOverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/android/gms/internal/maps/zzaf;

.field private b:Z

.field private c:F

.field private d:Z

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/d0;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/d0;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;ZFZF)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    invoke-static {p1}, Lcom/google/android/gms/internal/maps/zzag;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lcom/google/android/gms/internal/maps/zzaf;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/gms/maps/model/c0;

    invoke-direct {p1, p0}, Lcom/google/android/gms/maps/model/c0;-><init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Z

    iput p3, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:F

    iput-boolean p4, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    iput p5, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    return-void
.end method

.method static synthetic f(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzaf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lcom/google/android/gms/internal/maps/zzaf;

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d:Z

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c:F

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/TileOverlayOptions;->a:Lcom/google/android/gms/internal/maps/zzaf;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->j(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->e()Z

    move-result v0

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->d()F

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->h(Landroid/os/Parcel;IF)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->b()Z

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->c()F

    move-result v0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->h(Landroid/os/Parcel;IF)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
