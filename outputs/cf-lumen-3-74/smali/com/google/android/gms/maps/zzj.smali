.class final Lcom/google/android/gms/maps/zzj;
.super Lcom/google/android/gms/maps/internal/zzba;
.source ""


# instance fields
.field private final synthetic zzr:Lcom/google/android/gms/maps/GoogleMap$u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$u;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$u;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationClick(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$u;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$u;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
