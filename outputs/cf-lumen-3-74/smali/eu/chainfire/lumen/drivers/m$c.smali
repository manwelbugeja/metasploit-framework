.class Leu/chainfire/lumen/drivers/m$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/m;
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

    iput-object p1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SERVER"

    const-string v2, "IPC-WAIT"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->p(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/root/IPC;

    move-result-object v2

    if-eqz v2, :cond_3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "SERVER"

    const-string v2, "/IPC-WAIT"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_1
    :try_start_3
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/m;->A(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v2, "SERVER"

    const-string v4, "SETTING-WAIT"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_1

    :try_start_5
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->A(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    :cond_1
    :try_start_6
    const-string v2, "SERVER"

    const-string v4, "/SETTING-WAIT"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "SERVER"

    const-string v4, "Sending command"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/ControlSetting;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->p(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/root/IPC;

    move-result-object v2

    iget-object v4, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v4}, Leu/chainfire/lumen/drivers/m;->D(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/m$g;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/lumen/drivers/m;->J(Leu/chainfire/lumen/drivers/m$g;)B

    move-result v4

    iget-object v5, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v5}, Leu/chainfire/lumen/drivers/m;->B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Leu/chainfire/lumen/root/IPC;->update(BLeu/chainfire/lumen/drivers/ControlSetting;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_8
    invoke-static {v2}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_3
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->B(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v4

    invoke-static {v2, v4}, Leu/chainfire/lumen/drivers/m;->F(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/drivers/ControlSetting;)Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2, v0}, Leu/chainfire/lumen/drivers/m;->C(Leu/chainfire/lumen/drivers/m;Leu/chainfire/lumen/drivers/ControlSetting;)Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->E(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->E(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/drivers/ControlSetting;->r()Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    goto :goto_4

    :cond_2
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    move-exception v1

    :try_start_a
    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_4
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/m;->E(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/m;->E(Leu/chainfire/lumen/drivers/m;)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/ControlSetting;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/m;->q(Leu/chainfire/lumen/drivers/m;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :cond_3
    :try_start_b
    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->o(Leu/chainfire/lumen/drivers/m;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catch_3
    move-exception v2

    :try_start_c
    invoke-static {v2}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    move-exception v1

    iget-object v2, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/m;->q(Leu/chainfire/lumen/drivers/m;)V

    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :goto_6
    iget-object v1, p0, Leu/chainfire/lumen/drivers/m$c;->a:Leu/chainfire/lumen/drivers/m;

    invoke-static {v1, v0}, Leu/chainfire/lumen/drivers/m;->s(Leu/chainfire/lumen/drivers/m;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
