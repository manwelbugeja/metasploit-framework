.class final Lcom/google/android/gms/maps/zzq;
.super Lcom/google/android/gms/maps/internal/zzbg;
.source ""


# instance fields
.field private final synthetic zzy:Lcom/google/android/gms/maps/GoogleMap$x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$x;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzq;->zzy:Lcom/google/android/gms/maps/GoogleMap$x;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzz;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzq;->zzy:Lcom/google/android/gms/maps/GoogleMap$x;

    new-instance v1, Lcom/google/android/gms/maps/model/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/h;-><init>(Lcom/google/android/gms/internal/maps/zzz;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$x;->a(Lcom/google/android/gms/maps/model/h;)V

    return-void
.end method
