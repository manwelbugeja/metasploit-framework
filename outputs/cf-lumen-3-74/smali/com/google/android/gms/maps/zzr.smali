.class final Lcom/google/android/gms/maps/zzr;
.super Lcom/google/android/gms/maps/internal/zzbt;
.source ""


# instance fields
.field private final synthetic zzz:Lcom/google/android/gms/maps/GoogleMap$y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$y;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/maps/zzr;->zzz:Lcom/google/android/gms/maps/GoogleMap$y;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbt;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzr;->zzz:Lcom/google/android/gms/maps/GoogleMap$y;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$y;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/zzr;->zzz:Lcom/google/android/gms/maps/GoogleMap$y;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$y;->onSnapshotReady(Landroid/graphics/Bitmap;)V

    return-void
.end method
