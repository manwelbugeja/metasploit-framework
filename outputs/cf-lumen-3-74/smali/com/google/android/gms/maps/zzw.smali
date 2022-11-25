.class final Lcom/google/android/gms/maps/zzw;
.super Lcom/google/android/gms/maps/internal/zzq;
.source ""


# instance fields
.field private final synthetic zzae:Lcom/google/android/gms/maps/GoogleMap$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$e;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzw;->zzae:Lcom/google/android/gms/maps/GoogleMap$e;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzq;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMoveCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzw;->zzae:Lcom/google/android/gms/maps/GoogleMap$e;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$e;->onCameraMoveCanceled()V

    return-void
.end method
