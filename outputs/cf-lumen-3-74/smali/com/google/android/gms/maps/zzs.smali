.class final Lcom/google/android/gms/maps/zzs;
.super Lcom/google/android/gms/maps/internal/zzbc;
.source ""


# instance fields
.field private final synthetic zzaa:Lcom/google/android/gms/maps/GoogleMap$v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$v;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzs;->zzaa:Lcom/google/android/gms/maps/GoogleMap$v;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzs;->zzaa:Lcom/google/android/gms/maps/GoogleMap$v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$v;->a(Lcom/google/android/gms/maps/model/PointOfInterest;)V

    return-void
.end method
