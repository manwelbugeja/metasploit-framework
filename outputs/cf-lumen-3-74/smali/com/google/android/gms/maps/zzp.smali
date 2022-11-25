.class final Lcom/google/android/gms/maps/zzp;
.super Lcom/google/android/gms/maps/internal/zzbe;
.source ""


# instance fields
.field private final synthetic zzx:Lcom/google/android/gms/maps/GoogleMap$w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$w;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzp;->zzx:Lcom/google/android/gms/maps/GoogleMap$w;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzp;->zzx:Lcom/google/android/gms/maps/GoogleMap$w;

    new-instance v1, Lcom/google/android/gms/maps/model/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/internal/maps/zzw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$w;->a(Lcom/google/android/gms/maps/model/g;)V

    return-void
.end method
