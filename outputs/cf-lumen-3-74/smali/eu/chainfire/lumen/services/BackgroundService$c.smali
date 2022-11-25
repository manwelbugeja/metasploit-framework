.class Leu/chainfire/lumen/services/BackgroundService$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/services/BackgroundService;->onCreate()V
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

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->M:Leu/chainfire/lumen/a$k;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cflumen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lc/a/a/c$b;

    invoke-direct {v0}, Lc/a/a/c$b;-><init>()V

    invoke-virtual {v0}, Lc/a/a/c$b;->p()Lc/a/a/c$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/a/a/c$b;->m(Z)Lc/a/a/c$b;

    invoke-virtual {v0}, Lc/a/a/c$b;->l()Lc/a/a/c$d;

    move-result-object v0

    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2, v0}, Leu/chainfire/lumen/drivers/e;->a(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/e;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/e;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/e;->c()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/e;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-string v5, "update"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const v4, 0x7f05001b

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v6, 0x7f09003e

    invoke-virtual {v5, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v5, v6}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v7}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v8, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v5, v1, v6, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-lt v2, v4, :cond_2

    const-string v2, "service"

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    :cond_2
    iget-object v2, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Aborting: update needed"

    invoke-static {v2, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1, v5}, Leu/chainfire/lumen/services/BackgroundService;->s(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->G(Leu/chainfire/lumen/services/BackgroundService;)V

    :cond_3
    invoke-virtual {v0}, Lc/a/a/c$d;->u()V

    :cond_4
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$c;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/librootjavadaemon/RootDaemon;->c(Landroid/content/Context;)V

    return-void
.end method
