.class final Lcom/google/android/gms/maps/zzb;
.super Lcom/google/android/gms/maps/internal/zzas;
.source ""


# instance fields
.field private final synthetic zzj:Lcom/google/android/gms/maps/GoogleMap$q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$q;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzb;->zzj:Lcom/google/android/gms/maps/GoogleMap$q;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzas;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzt;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzb;->zzj:Lcom/google/android/gms/maps/GoogleMap$q;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$q;->a(Lcom/google/android/gms/maps/model/f;)Z

    move-result p1

    return p1
.end method
