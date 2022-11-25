.class final Lcom/google/android/gms/maps/zzz;
.super Lcom/google/android/gms/maps/internal/zzao;
.source ""


# instance fields
.field private final synthetic zzah:Lcom/google/android/gms/maps/GoogleMap$p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$p;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzz;->zzah:Lcom/google/android/gms/maps/GoogleMap$p;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzao;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzz;->zzah:Lcom/google/android/gms/maps/GoogleMap$p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$p;->onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
