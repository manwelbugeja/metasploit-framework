.class public Leu/chainfire/lumen/drivers/l;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:Landroid/view/WindowManager;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/os/Handler;

.field private i:Landroid/view/WindowManager$LayoutParams;

.field private j:Z

.field private k:I

.field private l:F

.field private m:Z

.field private n:Z

.field private volatile o:Ljava/lang/Thread;

.field private volatile p:Z

.field private volatile q:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/l;->j:Z

    const v2, 0xffffff

    iput v2, p0, Leu/chainfire/lumen/drivers/l;->k:I

    const/4 v2, 0x0

    iput v2, p0, Leu/chainfire/lumen/drivers/l;->l:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/lumen/drivers/l;->m:Z

    iput-boolean v2, p0, Leu/chainfire/lumen/drivers/l;->n:Z

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    iput-boolean v2, p0, Leu/chainfire/lumen/drivers/l;->p:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/l;->q:Z

    new-instance v0, Leu/chainfire/lumen/drivers/l$a;

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/l$a;-><init>(Leu/chainfire/lumen/drivers/l;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->r:Ljava/lang/Runnable;

    iput-object p1, p0, Leu/chainfire/lumen/drivers/l;->d:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->h:Landroid/os/Handler;

    const-string v0, "status_bar_height"

    invoke-direct {p0, v0}, Leu/chainfire/lumen/drivers/l;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/drivers/l;->a:I

    const-string v0, "navigation_bar_height"

    invoke-direct {p0, v0}, Leu/chainfire/lumen/drivers/l;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/drivers/l;->b:I

    const-string v0, "navigation_bar_width"

    invoke-direct {p0, v0}, Leu/chainfire/lumen/drivers/l;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/drivers/l;->c:I

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->f:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "eu.chainfire.lumen.BROADCAST_ROOTLESS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/drivers/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/l;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Leu/chainfire/lumen/drivers/l;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/l;->h:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Leu/chainfire/lumen/drivers/l;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic d(Leu/chainfire/lumen/drivers/l;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    return-object p1
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->p:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->r()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->s()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 5

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "Rootless: show [%s]"

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->u()V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Rootless: %s"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->e()V

    return-void
.end method

.method private h(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private i()V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->o()V

    return-void
.end method

.method private j()Z
    .locals 2

    iget v0, p0, Leu/chainfire/lumen/drivers/l;->k:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private n()V
    .locals 3

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->m:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->n:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->q:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->i()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->f:Landroid/widget/ImageView;

    iget v1, p0, Leu/chainfire/lumen/drivers/l;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget v0, p0, Leu/chainfire/lumen/drivers/l;->l:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->q()V

    :goto_1
    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->i()V

    return-void
.end method

.method private o()V
    .locals 4

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "Rootless: hide [%s]"

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->f:Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-boolean v2, p0, Leu/chainfire/lumen/drivers/l;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Rootless: %s"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->e()V

    return-void
.end method

.method private q()V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->f()V

    return-void
.end method

.method private r()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->r:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/l;->o:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method private t()V
    .locals 5

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "Rootless: update [%s]"

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->u()V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Rootless: %s"

    invoke-static {v1, v0}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 10

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l;->e:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Leu/chainfire/lumen/drivers/l;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Leu/chainfire/lumen/drivers/l;->a:I

    iget v3, p0, Leu/chainfire/lumen/drivers/l;->b:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v0, p0, Leu/chainfire/lumen/drivers/l;->b:I

    div-int/lit8 v6, v0, 0x2

    const/4 v5, 0x0

    const/16 v7, 0x7d6

    const v8, 0xc000718

    const/4 v9, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v1, p0, Leu/chainfire/lumen/drivers/l;->i:Landroid/view/WindowManager$LayoutParams;

    const-string v0, "CF.lumen"

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->q:Z

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->i()V

    return-void
.end method

.method public k(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->t()V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->p:Z

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->e()V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->p:Z

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->e()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "eu.chainfire.lumen.EXTRA_COLOR"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "eu.chainfire.lumen.EXTRA_DARKEN"

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "eu.chainfire.lumen.EXTRA_OVERLAY_ALLOWED"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/l;->m:Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Leu/chainfire/lumen/drivers/l;->k:I

    :cond_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Leu/chainfire/lumen/drivers/l;->l:F

    :cond_3
    :goto_1
    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->n()V

    :cond_4
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "foreground: [%s]"

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "eu.chainfire.supersu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/l;->n:Z

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/l;->n()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
