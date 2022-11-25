.class public final Lcom/google/android/gms/maps/model/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/maps/zzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/maps/zzn;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/e$a;->a:Lcom/google/android/gms/maps/model/e$a;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/maps/model/e;-><init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/e$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/maps/zzn;Lcom/google/android/gms/maps/model/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/maps/zzn;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/internal/maps/zzn;

    const-string p1, "shim"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/maps/model/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/internal/maps/zzn;

    check-cast p1, Lcom/google/android/gms/maps/model/e;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/maps/zzn;->zzb(Lcom/google/android/gms/internal/maps/zzn;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/e;->a:Lcom/google/android/gms/internal/maps/zzn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/maps/zzn;->zzi()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/i;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/i;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
