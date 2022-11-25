.class public Leu/chainfire/lumen/ui/MainActivity;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private a:J

.field private final b:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Leu/chainfire/lumen/ui/MainActivity;->a:J

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/MainActivity;->b:Landroid/graphics/PointF;

    return-void
.end method

.method private a(Landroid/view/Menu;)V
    .locals 5

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->Q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const v2, 0x7f0900a5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->P:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const v2, 0x7f0900a6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->R:Z

    const v2, 0x7f0900aa

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->S:Z

    const v3, 0x7f0900ab

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v0, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->T:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    sget-boolean v0, Leu/chainfire/lumen/services/BackgroundService;->U:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_5
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x63

    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_6
    return-void
.end method

.method private declared-synchronized b(Landroid/graphics/PointF;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/MainActivity;->b:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-wide v0, p0, Leu/chainfire/lumen/ui/MainActivity;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static c(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    instance-of v0, p0, Leu/chainfire/lumen/ui/MainActivity;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Leu/chainfire/lumen/ui/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, v2}, Leu/chainfire/lumen/ui/MainActivity;->b(Landroid/graphics/PointF;)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x3e8

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    iget v0, v2, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3, v3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/ui/MainActivity;->a:J

    iget-object v0, p0, Leu/chainfire/lumen/ui/MainActivity;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Leu/chainfire/lumen/ui/MainActivity;->b:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

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
    const p1, 0x7f080001

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/MainActivity;->a(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "eu.chainfire.lumen.EXTRA_PURCHASE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f06005a

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->B()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v1, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP"

    const-string v2, "eu.chainfire.lumen.EXTRA_TEMP_WAKE"

    const-string v3, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    return v4

    :pswitch_0
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return v5

    :pswitch_1
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/MainActivity;->a(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
