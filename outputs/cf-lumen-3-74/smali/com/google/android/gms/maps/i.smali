.class public Lcom/google/android/gms/maps/i;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/i$d;,
        Lcom/google/android/gms/maps/i$c;,
        Lcom/google/android/gms/maps/i$a;,
        Lcom/google/android/gms/maps/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    iput-object p1, p0, Lcom/google/android/gms/maps/i;->a:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    return-void
.end method
