.class final Lcom/google/android/gms/maps/zzx;
.super Lcom/google/android/gms/maps/internal/zzo;
.source ""


# instance fields
.field private final synthetic zzaf:Lcom/google/android/gms/maps/GoogleMap$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$d;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$d;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$d;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$d;->onCameraIdle()V

    return-void
.end method
