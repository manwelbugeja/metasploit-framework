.class Leu/chainfire/lumen/services/BackgroundService$i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/services/BackgroundService$i;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Leu/chainfire/lumen/services/BackgroundService$i;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/services/BackgroundService$i;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iput-object p2, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "evaluateFilter: screenReceiver"

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Leu/chainfire/lumen/services/BackgroundService;->w(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->H(Leu/chainfire/lumen/services/BackgroundService;J)J

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->q(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2}, Leu/chainfire/lumen/services/BackgroundService;->r(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;)V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->z(Leu/chainfire/lumen/services/BackgroundService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v1, v1, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->I(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->I(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2, v1}, Leu/chainfire/lumen/services/BackgroundService;->J(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->K(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/drivers/l;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/l;->m()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Leu/chainfire/lumen/services/BackgroundService;->w(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->H(Leu/chainfire/lumen/services/BackgroundService;J)J

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->I(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v0, v2, v1}, Leu/chainfire/lumen/services/BackgroundService;->J(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$i$a;->b:Leu/chainfire/lumen/services/BackgroundService$i;

    iget-object v0, v0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->K(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/drivers/l;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/l;->l()V

    :cond_2
    :goto_1
    return-void
.end method
