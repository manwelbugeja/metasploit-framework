.class public Leu/chainfire/lumen/receivers/HideOverlaysReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Leu/chainfire/lumen/drivers/k;->p(Landroid/content/Context;)Leu/chainfire/lumen/drivers/k;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Leu/chainfire/lumen/drivers/k;->r(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RECEIVER"

    const-string v3, "HideOverlaysReceiver"

    invoke-static {v2, v3, v1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "eu.chainfire.supersu.extra.HIDE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Leu/chainfire/lumen/receivers/HideOverlaysReceiver;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method
