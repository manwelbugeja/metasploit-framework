.class final Lcom/google/android/gms/maps/zzi;
.super Lcom/google/android/gms/maps/internal/zzaw;
.source ""


# instance fields
.field private final synthetic zzq:Lcom/google/android/gms/maps/GoogleMap$s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$s;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzi;->zzq:Lcom/google/android/gms/maps/GoogleMap$s;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaw;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationButtonClick()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzi;->zzq:Lcom/google/android/gms/maps/GoogleMap$s;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$s;->onMyLocationButtonClick()Z

    move-result v0

    return v0
.end method
