.class final Lcom/google/android/gms/internal/location/t;
.super Lcom/google/android/gms/internal/location/a;
.source ""


# instance fields
.field private final synthetic s:Lcom/google/android/gms/location/LocationRequest;

.field private final synthetic t:Lcom/google/android/gms/location/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/s;Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/c;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/location/t;->s:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/internal/location/t;->t:Lcom/google/android/gms/location/c;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/location/a;-><init>(Lcom/google/android/gms/common/api/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic r(Lcom/google/android/gms/common/api/a$b;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/location/g;

    new-instance v0, Lcom/google/android/gms/internal/location/zzac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/location/zzac;-><init>(Lcom/google/android/gms/common/api/internal/c;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/t;->s:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lcom/google/android/gms/internal/location/t;->t:Lcom/google/android/gms/location/c;

    invoke-static {}, Lcom/google/android/gms/internal/location/l;->a()Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/location/c;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/api/internal/h;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/g;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/location/g;->o0(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/common/api/internal/g;Lcom/google/android/gms/internal/location/zzaj;)V

    return-void
.end method
