.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/maps/model/LatLng;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Boolean;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Lcom/google/android/gms/maps/model/StreetViewSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/o;

    invoke-direct {v0}, Lcom/google/android/gms/maps/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBBLcom/google/android/gms/maps/model/StreetViewSource;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->b:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/maps/internal/a;->b(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->b(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->b(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->b(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->b(B)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/maps/model/StreetViewSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/i;->c(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b:Ljava/lang/String;

    const-string v2, "PanoramaId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c:Lcom/google/android/gms/maps/model/LatLng;

    const-string v2, "Position"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d:Ljava/lang/Integer;

    const-string v2, "Radius"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->j:Lcom/google/android/gms/maps/model/StreetViewSource;

    const-string v2, "Source"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->a:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    const-string v2, "StreetViewPanoramaCamera"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    const-string v2, "UserNavigationEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    const-string v2, "ZoomGesturesEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    const-string v2, "PanningGesturesEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    const-string v2, "StreetNamesEnabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    const-string v2, "UseViewLifecycleInFragment"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->c()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->d()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->g:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->h:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0x9

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;IB)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->i:Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/google/android/gms/maps/internal/a;->a(Ljava/lang/Boolean;)B

    move-result v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->e(Landroid/os/Parcel;IB)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->e()Lcom/google/android/gms/maps/model/StreetViewSource;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
