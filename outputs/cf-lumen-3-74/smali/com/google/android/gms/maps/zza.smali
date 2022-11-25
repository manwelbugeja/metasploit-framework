.class final Lcom/google/android/gms/maps/zza;
.super Lcom/google/android/gms/maps/internal/zzaa;
.source ""


# instance fields
.field private final synthetic zzi:Lcom/google/android/gms/maps/GoogleMap$j;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$j;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$j;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzaa;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIndoorBuildingFocused()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$j;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$j;->onIndoorBuildingFocused()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/maps/zzn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zza;->zzi:Lcom/google/android/gms/maps/GoogleMap$j;

    new-instance v1, Lcom/google/android/gms/maps/model/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/e;-><init>(Lcom/google/android/gms/internal/maps/zzn;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$j;->a(Lcom/google/android/gms/maps/model/e;)V

    return-void
.end method
