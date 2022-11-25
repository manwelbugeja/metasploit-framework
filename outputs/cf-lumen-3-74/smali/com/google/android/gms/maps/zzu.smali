.class final Lcom/google/android/gms/maps/zzu;
.super Lcom/google/android/gms/maps/internal/zzu;
.source ""


# instance fields
.field private final synthetic zzac:Lcom/google/android/gms/maps/GoogleMap$g;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$g;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzu;->zzac:Lcom/google/android/gms/maps/GoogleMap$g;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzu;->zzac:Lcom/google/android/gms/maps/GoogleMap$g;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$g;->onCameraMoveStarted(I)V

    return-void
.end method
