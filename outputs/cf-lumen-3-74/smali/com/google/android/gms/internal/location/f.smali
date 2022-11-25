.class final Lcom/google/android/gms/internal/location/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/g$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/g$b<",
        "Lcom/google/android/gms/location/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzax;Landroid/location/Location;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/location/f;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/location/c;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/f;->a:Landroid/location/Location;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/c;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
