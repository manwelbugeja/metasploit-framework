.class final Lcom/google/android/gms/maps/zzf;
.super Lcom/google/android/gms/maps/internal/zzae;
.source ""


# instance fields
.field private final synthetic zzn:Lcom/google/android/gms/maps/GoogleMap$l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$l;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzf;->zzn:Lcom/google/android/gms/maps/GoogleMap$l;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzae;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzf;->zzn:Lcom/google/android/gms/maps/GoogleMap$l;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$l;->a(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method
