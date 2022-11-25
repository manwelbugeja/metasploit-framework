.class final Lcom/google/android/gms/maps/zzd;
.super Lcom/google/android/gms/maps/internal/zzac;
.source ""


# instance fields
.field private final synthetic zzl:Lcom/google/android/gms/maps/GoogleMap$k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$k;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzd;->zzl:Lcom/google/android/gms/maps/GoogleMap$k;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzac;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzd;->zzl:Lcom/google/android/gms/maps/GoogleMap$k;

    new-instance v1, Lcom/google/android/gms/maps/model/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/f;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$k;->a(Lcom/google/android/gms/maps/model/f;)V

    return-void
.end method
