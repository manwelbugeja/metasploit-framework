.class final Lcom/google/android/gms/maps/zzt;
.super Lcom/google/android/gms/maps/internal/zzm;
.source ""


# instance fields
.field private final synthetic zzab:Lcom/google/android/gms/maps/GoogleMap$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzt;->zzab:Lcom/google/android/gms/maps/GoogleMap$c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzm;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzt;->zzab:Lcom/google/android/gms/maps/GoogleMap$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$c;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method
