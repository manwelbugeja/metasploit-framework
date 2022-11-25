.class final Lcom/google/android/gms/location/FusedLocationProviderClient$zza;
.super Lcom/google/android/gms/internal/location/zzak;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/FusedLocationProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zzac:Lb/a/a/a/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/c/c<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/a/a/a/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/c/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzak;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;->zzac:Lb/a/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/location/zzad;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzad;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/location/FusedLocationProviderClient$zza;->zzac:Lb/a/a/a/c/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/k;->a(Lcom/google/android/gms/common/api/Status;Lb/a/a/a/c/c;)V

    return-void
.end method
