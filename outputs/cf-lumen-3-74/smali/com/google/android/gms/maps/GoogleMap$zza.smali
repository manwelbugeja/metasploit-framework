.class final Lcom/google/android/gms/maps/GoogleMap$zza;
.super Lcom/google/android/gms/maps/internal/zzd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private final zzai:Lcom/google/android/gms/maps/GoogleMap$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$a;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$a;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$a;->onCancel()V

    return-void
.end method

.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$a;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$a;->onFinish()V

    return-void
.end method
