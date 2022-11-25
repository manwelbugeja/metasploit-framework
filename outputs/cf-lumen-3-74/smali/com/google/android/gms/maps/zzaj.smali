.class final Lcom/google/android/gms/maps/zzaj;
.super Lcom/google/android/gms/maps/internal/zzbq;
.source ""


# instance fields
.field private final synthetic zzbu:Lcom/google/android/gms/maps/g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/k;Lcom/google/android/gms/maps/g;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzaj;->zzbu:Lcom/google/android/gms/maps/g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzaj;->zzbu:Lcom/google/android/gms/maps/g;

    new-instance v1, Lcom/google/android/gms/maps/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/i;-><init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g;->a(Lcom/google/android/gms/maps/i;)V

    return-void
.end method
