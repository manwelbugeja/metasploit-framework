.class final Lcom/google/android/gms/maps/zzae;
.super Lcom/google/android/gms/maps/internal/zzbi;
.source ""


# instance fields
.field private final synthetic zzbp:Lcom/google/android/gms/maps/i$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/i;Lcom/google/android/gms/maps/i$a;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzae;->zzbp:Lcom/google/android/gms/maps/i$a;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzae;->zzbp:Lcom/google/android/gms/maps/i$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/i$a;->onStreetViewPanoramaCameraChange(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V

    return-void
.end method
