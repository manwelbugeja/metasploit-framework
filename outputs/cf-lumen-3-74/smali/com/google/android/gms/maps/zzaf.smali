.class final Lcom/google/android/gms/maps/zzaf;
.super Lcom/google/android/gms/maps/internal/zzbm;
.source ""


# instance fields
.field private final synthetic zzbq:Lcom/google/android/gms/maps/i$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/i;Lcom/google/android/gms/maps/i$c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzaf;->zzbq:Lcom/google/android/gms/maps/i$c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbm;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzaf;->zzbq:Lcom/google/android/gms/maps/i$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/i$c;->onStreetViewPanoramaClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
