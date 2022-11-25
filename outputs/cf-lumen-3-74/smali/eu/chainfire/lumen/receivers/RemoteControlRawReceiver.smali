.class public Leu/chainfire/lumen/receivers/RemoteControlRawReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RECEIVER"

    const-string v3, "RemoteControlRawReceiver"

    invoke-static {v2, v3, v1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/a;->g()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_0
    const-string v2, "eu.chainfire.lumen.extra.MODE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, v1, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    new-instance v3, Leu/chainfire/lumen/a$d;

    invoke-direct {v3, p2}, Leu/chainfire/lumen/a$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->a0(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/content/BroadcastReceiver;->setResultCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void
.end method
