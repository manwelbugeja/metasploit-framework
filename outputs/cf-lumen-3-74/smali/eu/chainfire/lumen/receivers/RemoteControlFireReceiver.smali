.class public Leu/chainfire/lumen/receivers/RemoteControlFireReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->g()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const v0, 0x7f0900ba

    :goto_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_0
    iget-object v0, v0, Leu/chainfire/lumen/a;->h:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0900b9

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "eu.chainfire.lumen.EXTRA_REMOTE_CONTROL_FILTER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RECEIVER"

    const-string v2, "RemoteControlFireReceiver"

    invoke-static {v1, v2, v0}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Leu/chainfire/lumen/receivers/RemoteControlFireReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Leu/chainfire/lumen/receivers/RemoteControlFireReceiver;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    new-instance v1, Leu/chainfire/lumen/a$d;

    invoke-direct {v1, p2}, Leu/chainfire/lumen/a$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->a0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
