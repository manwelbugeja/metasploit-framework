.class public Lcom/google/android/gms/internal/location/o;
.super Lcom/google/android/gms/common/internal/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/e<",
        "Lcom/google/android/gms/internal/location/zzao;",
        ">;"
    }
.end annotation


# instance fields
.field private final C:Ljava/lang/String;

.field protected final D:Lcom/google/android/gms/internal/location/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/location/k<",
            "Lcom/google/android/gms/internal/location/zzao;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;Ljava/lang/String;Lcom/google/android/gms/common/internal/b;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    new-instance p1, Lcom/google/android/gms/internal/location/p;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/location/p;-><init>(Lcom/google/android/gms/internal/location/o;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/o;->D:Lcom/google/android/gms/internal/location/k;

    iput-object p5, p0, Lcom/google/android/gms/internal/location/o;->C:Ljava/lang/String;

    return-void
.end method

.method static synthetic n0(Lcom/google/android/gms/internal/location/o;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->y()V

    return-void
.end method


# virtual methods
.method protected C()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/o;->C:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method protected synthetic n(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/location/zzao;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/location/zzap;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/location/zzap;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public x()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method
