.class Leu/chainfire/lumen/drivers/m$e;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/m;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/m;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/m;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m$e;->a:Leu/chainfire/lumen/drivers/m;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string p1, "RECEIVER"

    const-string v0, "Driver$serverReceiver"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "SERVER"

    const-string v0, "Received [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-static {p1, v0, v2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/drivers/m$e;->a:Leu/chainfire/lumen/drivers/m;

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Leu/chainfire/lumen/drivers/m;->z(Leu/chainfire/lumen/drivers/m;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
