.class final Lcom/google/android/gms/maps/zze;
.super Lcom/google/android/gms/maps/internal/zzag;
.source ""


# instance fields
.field private final synthetic zzm:Lcom/google/android/gms/maps/GoogleMap$m;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$m;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$m;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzag;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$m;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$m;->a(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method
