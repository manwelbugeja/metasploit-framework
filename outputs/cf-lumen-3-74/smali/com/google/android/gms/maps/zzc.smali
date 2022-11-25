.class final Lcom/google/android/gms/maps/zzc;
.super Lcom/google/android/gms/maps/internal/zzau;
.source ""


# instance fields
.field private final synthetic zzk:Lcom/google/android/gms/maps/GoogleMap$r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$r;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$r;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzau;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$r;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$r;->c(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$r;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$r;->b(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzc;->zzk:Lcom/google/android/gms/maps/GoogleMap$r;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$r;->a(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method
