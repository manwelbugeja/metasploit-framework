.class final Lcom/google/android/gms/maps/zzn;
.super Lcom/google/android/gms/maps/internal/zzy;
.source ""


# instance fields
.field private final synthetic zzv:Lcom/google/android/gms/maps/GoogleMap$i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$i;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzn;->zzv:Lcom/google/android/gms/maps/GoogleMap$i;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzy;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzk;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzn;->zzv:Lcom/google/android/gms/maps/GoogleMap$i;

    new-instance v1, Lcom/google/android/gms/maps/model/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/d;-><init>(Lcom/google/android/gms/internal/maps/zzk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$i;->a(Lcom/google/android/gms/maps/model/d;)V

    return-void
.end method
