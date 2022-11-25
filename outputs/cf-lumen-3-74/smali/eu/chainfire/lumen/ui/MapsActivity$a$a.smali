.class Leu/chainfire/lumen/ui/MapsActivity$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/MapsActivity$a;->a(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/MapsActivity$a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/MapsActivity$a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a$a;->a:Leu/chainfire/lumen/ui/MapsActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity$a$a;->a:Leu/chainfire/lumen/ui/MapsActivity$a;

    iget-object v0, v0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v0, p1}, Leu/chainfire/lumen/ui/MapsActivity;->c(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
