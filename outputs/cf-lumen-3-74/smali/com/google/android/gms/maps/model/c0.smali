.class final Lcom/google/android/gms/maps/model/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/maps/model/j;


# instance fields
.field private final a:Lcom/google/android/gms/internal/maps/zzaf;

.field private final synthetic b:Lcom/google/android/gms/maps/model/TileOverlayOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/TileOverlayOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/c0;->b:Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->f(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/internal/maps/zzaf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/maps/model/c0;->a:Lcom/google/android/gms/internal/maps/zzaf;

    return-void
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/c0;->a:Lcom/google/android/gms/internal/maps/zzaf;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/maps/zzaf;->getTile(III)Lcom/google/android/gms/maps/model/Tile;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
