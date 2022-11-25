.class final Lcom/google/android/gms/internal/location/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/location/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/location/k<",
        "Lcom/google/android/gms/internal/location/zzao;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/location/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    invoke-static {v0}, Lcom/google/android/gms/internal/location/o;->n0(Lcom/google/android/gms/internal/location/o;)V

    return-void
.end method

.method public final synthetic b()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/location/p;->a:Lcom/google/android/gms/internal/location/o;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->F()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/location/zzao;

    return-object v0
.end method
