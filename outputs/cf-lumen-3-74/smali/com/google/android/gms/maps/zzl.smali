.class final Lcom/google/android/gms/maps/zzl;
.super Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
.source ""


# instance fields
.field private final synthetic zzt:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/c;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/c;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final activate(Lcom/google/android/gms/maps/internal/zzah;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/c;

    new-instance v1, Lcom/google/android/gms/maps/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/p;-><init>(Lcom/google/android/gms/maps/zzl;Lcom/google/android/gms/maps/internal/zzah;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$a;)V

    return-void
.end method

.method public final deactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/c;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c;->deactivate()V

    return-void
.end method
