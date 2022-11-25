.class Leu/chainfire/lumen/ui/MapsActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/maps/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/MapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/MapsActivity;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/MapsActivity;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 10

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v0, p1}, Leu/chainfire/lumen/ui/MapsActivity;->b(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v1}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v1}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->a(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->c(Z)V

    :cond_1
    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->a(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v1, Leu/chainfire/lumen/ui/MapsActivity$a$a;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/MapsActivity$a$a;-><init>(Leu/chainfire/lumen/ui/MapsActivity$a;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->d(Lcom/google/android/gms/maps/GoogleMap$n;)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->d(Leu/chainfire/lumen/ui/MapsActivity;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    if-eqz p1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v3}, Leu/chainfire/lumen/ui/MapsActivity;->d(Leu/chainfire/lumen/ui/MapsActivity;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$g;->c()F

    move-result v3

    float-to-double v3, v3

    iget-object v5, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v5}, Leu/chainfire/lumen/ui/MapsActivity;->d(Leu/chainfire/lumen/ui/MapsActivity;)Leu/chainfire/lumen/a;

    move-result-object v5

    iget-object v5, v5, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$g;->c()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v2}, Leu/chainfire/lumen/ui/MapsActivity;->c(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    :goto_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->a(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    iget-object v2, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v2}, Leu/chainfire/lumen/ui/MapsActivity;->e(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->b(Lcom/google/android/gms/maps/a;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "eu.chainfire.lumen.EXTRA_LATITUDE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "eu.chainfire.lumen.EXTRA_LONGITUDE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v5, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    iget-object v2, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v7}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {v4, v8, v9, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v4}, Leu/chainfire/lumen/ui/MapsActivity;->c(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->f(Leu/chainfire/lumen/ui/MapsActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v1}, Leu/chainfire/lumen/ui/MapsActivity;->e(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {p1}, Leu/chainfire/lumen/ui/MapsActivity;->g(Leu/chainfire/lumen/ui/MapsActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity$a;->a:Leu/chainfire/lumen/ui/MapsActivity;

    invoke-static {v0}, Leu/chainfire/lumen/ui/MapsActivity;->d(Leu/chainfire/lumen/ui/MapsActivity;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
