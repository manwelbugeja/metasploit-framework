.class final Lcom/google/android/gms/maps/zzk;
.super Lcom/google/android/gms/maps/internal/zzam;
.source ""


# instance fields
.field private final synthetic zzs:Lcom/google/android/gms/maps/GoogleMap$o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$o;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzk;->zzs:Lcom/google/android/gms/maps/GoogleMap$o;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzam;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMapLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzk;->zzs:Lcom/google/android/gms/maps/GoogleMap$o;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$o;->onMapLoaded()V

    return-void
.end method
