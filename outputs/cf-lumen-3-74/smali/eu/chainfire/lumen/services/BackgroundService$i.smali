.class Leu/chainfire/lumen/services/BackgroundService$i;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/services/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/services/BackgroundService;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/services/BackgroundService;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RECEIVER"

    const-string v1, "BackgroundService$screenReceiver"

    invoke-static {v0, v1, p1}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$i;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->z(Leu/chainfire/lumen/services/BackgroundService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Leu/chainfire/lumen/services/BackgroundService$i$a;

    invoke-direct {v0, p0, p2}, Leu/chainfire/lumen/services/BackgroundService$i$a;-><init>(Leu/chainfire/lumen/services/BackgroundService$i;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
