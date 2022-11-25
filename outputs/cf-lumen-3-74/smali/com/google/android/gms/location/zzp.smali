.class final Lcom/google/android/gms/location/zzp;
.super Lcom/google/android/gms/internal/location/zzak;
.source ""


# instance fields
.field private final synthetic zzab:Lb/a/a/a/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lb/a/a/a/c/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/location/zzp;->zzab:Lb/a/a/a/c/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzak;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/location/zzad;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzad;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/location/zzp;->zzab:Lb/a/a/a/c/c;

    new-instance v0, Lcom/google/android/gms/common/api/b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    const-string v3, "Got null status from location service"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v0}, Lb/a/a/a/c/c;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/location/zzp;->zzab:Lb/a/a/a/c/c;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lb/a/a/a/c/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/location/zzp;->zzab:Lb/a/a/a/c/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/a/a/a/c/c;->d(Ljava/lang/Exception;)Z

    return-void
.end method
