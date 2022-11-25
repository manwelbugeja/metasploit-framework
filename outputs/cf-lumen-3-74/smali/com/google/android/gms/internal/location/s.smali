.class public final Lcom/google/android/gms/internal/location/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/location/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)Lcom/google/android/gms/common/api/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f;",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/c;",
            ")",
            "Lcom/google/android/gms/common/api/g<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "Calling thread must be a prepared Looper thread."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/location/t;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/location/t;-><init>(Lcom/google/android/gms/internal/location/s;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/f;->h(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    move-result-object p1

    return-object p1
.end method
