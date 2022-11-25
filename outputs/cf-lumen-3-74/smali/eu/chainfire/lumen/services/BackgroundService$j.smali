.class Leu/chainfire/lumen/services/BackgroundService$j;
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

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$j;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$j;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->j(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$j;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->w:Leu/chainfire/lumen/a$c;

    invoke-virtual {p1}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$j;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->k(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$j;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {p1}, Leu/chainfire/lumen/services/BackgroundService;->I(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object p2

    const-string v0, "evaluateFilter: alarmReceiver"

    invoke-static {p1, p2, v0}, Leu/chainfire/lumen/services/BackgroundService;->J(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
