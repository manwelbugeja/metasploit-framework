.class public Leu/chainfire/lumen/ui/MapsActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:Lcom/google/android/gms/maps/GoogleMap;

.field private b:Lcom/google/android/gms/maps/model/f;

.field private c:Lcom/google/android/gms/maps/model/LatLng;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Leu/chainfire/lumen/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->a:Lcom/google/android/gms/maps/GoogleMap;

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->b:Lcom/google/android/gms/maps/model/f;

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->d:Landroid/widget/Button;

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->e:Landroid/widget/CheckBox;

    iput-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/MapsActivity;->a:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->a:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic c(Leu/chainfire/lumen/ui/MapsActivity;Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/MapsActivity;->h(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method

.method static synthetic d(Leu/chainfire/lumen/ui/MapsActivity;)Leu/chainfire/lumen/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    return-object p0
.end method

.method static synthetic e(Leu/chainfire/lumen/ui/MapsActivity;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method static synthetic f(Leu/chainfire/lumen/ui/MapsActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/MapsActivity;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic g(Leu/chainfire/lumen/ui/MapsActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/MapsActivity;->e:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private h(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->b:Lcom/google/android/gms/maps/model/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/f;->a()V

    :cond_0
    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->a:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    iget-object v1, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->o(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/f;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->b:Lcom/google/android/gms/maps/model/f;

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->d:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Leu/chainfire/lumen/ui/MapsActivity;->j(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/lumen/ui/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-string p1, "eu.chainfire.lumen.EXTRA_LATITUDE"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-string v1, "eu.chainfire.lumen.EXTRA_LONGITUDE"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_1
    invoke-static {p0, v0}, Leu/chainfire/lumen/ui/MainActivity;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Leu/chainfire/lumen/Application;

    invoke-virtual {p1}, Leu/chainfire/lumen/Application;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const p1, 0x7f080002

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f060058

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->d:Landroid/widget/Button;

    const p1, 0x7f06000d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->e:Landroid/widget/CheckBox;

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f06004b

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/MapFragment;

    new-instance v0, Leu/chainfire/lumen/ui/MapsActivity$a;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/ui/MapsActivity$a;-><init>(Leu/chainfire/lumen/ui/MapsActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/MapFragment;->a(Lcom/google/android/gms/maps/f;)V

    return-void
.end method

.method public onSaveClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->c:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    double-to-float v0, v0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$g;->d(F)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$c;->d(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/MapsActivity;->f:Leu/chainfire/lumen/a;

    iget-object p1, p1, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    iget-object v0, p0, Leu/chainfire/lumen/ui/MapsActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$c;->d(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
