.class Leu/chainfire/lumen/services/BackgroundService$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->v(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->z:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->A:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->x(Leu/chainfire/lumen/services/BackgroundService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0, v2}, Leu/chainfire/lumen/services/BackgroundService;->m(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$m;->a:Leu/chainfire/lumen/services/BackgroundService$m;

    invoke-static {v0, v1}, Leu/chainfire/lumen/services/BackgroundService;->o(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$m;)Leu/chainfire/lumen/services/BackgroundService$m;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->x(Leu/chainfire/lumen/services/BackgroundService;)Landroid/hardware/SensorManager;

    move-result-object v2

    iget-object v3, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->y(Leu/chainfire/lumen/services/BackgroundService;)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->z(Leu/chainfire/lumen/services/BackgroundService;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    :cond_4
    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$f;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0, v1}, Leu/chainfire/lumen/services/BackgroundService;->m(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    :goto_1
    return-void
.end method
