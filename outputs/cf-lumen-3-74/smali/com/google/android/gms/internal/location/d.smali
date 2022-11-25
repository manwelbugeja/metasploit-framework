.class final Lcom/google/android/gms/internal/location/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/g$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/g$b<",
        "Lcom/google/android/gms/location/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzat;Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/location/d;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/b;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/d;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/b;->b(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
