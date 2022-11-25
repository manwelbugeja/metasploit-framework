.class Leu/chainfire/lumen/root/Runner$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/root/Runner;->run([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:[J

.field final synthetic c:[Leu/chainfire/lumen/drivers/m$g;

.field final synthetic d:[Leu/chainfire/lumen/drivers/ControlSetting;

.field final synthetic e:Leu/chainfire/lumen/root/Runner;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/root/Runner;Ljava/lang/Object;[J[Leu/chainfire/lumen/drivers/m$g;[Leu/chainfire/lumen/drivers/ControlSetting;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    iput-object p2, p0, Leu/chainfire/lumen/root/Runner$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Leu/chainfire/lumen/root/Runner$a;->b:[J

    iput-object p4, p0, Leu/chainfire/lumen/root/Runner$a;->c:[Leu/chainfire/lumen/drivers/m$g;

    iput-object p5, p0, Leu/chainfire/lumen/root/Runner$a;->d:[Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v0}, Leu/chainfire/lumen/root/Runner;->a(Leu/chainfire/lumen/root/Runner;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v6, v1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    iget-object v7, p0, Leu/chainfire/lumen/root/Runner$a;->a:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->b:[J

    const/4 v9, 0x0

    aget-wide v10, v8, v9

    cmp-long v12, v10, v3

    if-lez v12, :cond_1

    aget-wide v3, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    goto :goto_3

    :cond_1
    :try_start_1
    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->a:Ljava/lang/Object;

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/Object;->wait(J)V

    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->b:[J

    aget-wide v10, v8, v9

    cmp-long v8, v10, v3

    if-nez v8, :cond_2

    const-string v8, "CLIENT"

    const-string v10, "Timeout"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const-string v8, "CLIENT"

    const-string v10, "Receive"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    :goto_1
    :try_start_2
    iget-object v10, p0, Leu/chainfire/lumen/root/Runner$a;->b:[J

    aget-wide v3, v10, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v10

    move-object v13, v10

    move v10, v8

    move-object v8, v13

    goto :goto_2

    :catch_1
    move-exception v8

    const/4 v10, 0x0

    :goto_2
    :try_start_3
    invoke-static {v8}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    move v8, v10

    :goto_3
    iget-object v10, p0, Leu/chainfire/lumen/root/Runner$a;->c:[Leu/chainfire/lumen/drivers/m$g;

    aget-object v10, v10, v9

    iget-object v11, p0, Leu/chainfire/lumen/root/Runner$a;->d:[Leu/chainfire/lumen/drivers/ControlSetting;

    aget-object v11, v11, v9

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v7, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v7}, Leu/chainfire/lumen/root/Runner;->c(Leu/chainfire/lumen/root/Runner;)Leu/chainfire/lumen/drivers/m$g;

    move-result-object v7

    if-ne v10, v7, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->a:Leu/chainfire/lumen/drivers/m$g;

    if-ne v10, v0, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    const/16 v5, 0x3e8

    goto :goto_4

    :cond_4
    iget-object v0, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    const v5, 0x493e0

    :goto_4
    invoke-static {v0, v5}, Leu/chainfire/lumen/root/Runner;->b(Leu/chainfire/lumen/root/Runner;I)I

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v0}, Leu/chainfire/lumen/root/Runner;->a(Leu/chainfire/lumen/root/Runner;)I

    move-result v0

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5}, Leu/chainfire/lumen/root/Runner;->e(Leu/chainfire/lumen/root/Runner;)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    const-string v7, "disabled"

    invoke-static {v5, v7}, Leu/chainfire/lumen/root/Runner;->f(Leu/chainfire/lumen/root/Runner;Ljava/lang/String;)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5, v9}, Leu/chainfire/lumen/root/Runner;->g(Leu/chainfire/lumen/root/Runner;I)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5, v1, v9}, Leu/chainfire/lumen/root/Runner;->h(Leu/chainfire/lumen/root/Runner;[FZ)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5, v9, v9}, Leu/chainfire/lumen/root/Runner;->i(Leu/chainfire/lumen/root/Runner;ZZ)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5}, Leu/chainfire/lumen/root/Runner;->e(Leu/chainfire/lumen/root/Runner;)V

    iget-object v5, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v5, v10}, Leu/chainfire/lumen/root/Runner;->d(Leu/chainfire/lumen/root/Runner;Leu/chainfire/lumen/drivers/m$g;)Leu/chainfire/lumen/drivers/m$g;

    const/4 v5, 0x0

    :cond_5
    if-nez v8, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Leu/chainfire/lumen/drivers/ControlSetting;->q()Z

    move-result v7

    if-eqz v7, :cond_6

    const v0, 0xdbba0

    :cond_6
    if-eqz v11, :cond_7

    const-string v6, "CLIENT"

    const-string v7, "Received command [%s]"

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v10, v12, v9

    invoke-static {v6, v7, v12}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-eqz v8, :cond_8

    const-string v7, "CLIENT"

    const-string v11, "Repeating last command [%s]"

    new-array v12, v2, [Ljava/lang/Object;

    aput-object v10, v12, v9

    invoke-static {v7, v11, v12}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    :goto_5
    move-object v6, v11

    :goto_6
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Leu/chainfire/lumen/drivers/ControlSetting;->o()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v8, :cond_a

    :cond_9
    iget-object v7, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v7}, Leu/chainfire/lumen/root/Runner;->e(Leu/chainfire/lumen/root/Runner;)V

    :cond_a
    invoke-virtual {v6}, Leu/chainfire/lumen/drivers/ControlSetting;->q()Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    goto/16 :goto_0

    :cond_b
    sget-object v7, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    if-ne v10, v7, :cond_c

    iget-object v7, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-virtual {v6, v10}, Leu/chainfire/lumen/drivers/ControlSetting;->n(Leu/chainfire/lumen/drivers/m$g;)[F

    move-result-object v8

    invoke-static {v7, v8}, Leu/chainfire/lumen/root/Runner;->j(Leu/chainfire/lumen/root/Runner;[F)V

    goto/16 :goto_0

    :cond_c
    sget-object v7, Leu/chainfire/lumen/drivers/m$g;->b:Leu/chainfire/lumen/drivers/m$g;

    if-ne v10, v7, :cond_d

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v6}, Leu/chainfire/lumen/drivers/ControlSetting;->p()[F

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v8, v9}, Leu/chainfire/lumen/root/Runner;->g(Leu/chainfire/lumen/root/Runner;I)V

    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-virtual {v6, v10}, Leu/chainfire/lumen/drivers/ControlSetting;->n(Leu/chainfire/lumen/drivers/m$g;)[F

    move-result-object v10

    invoke-static {v8, v10, v7}, Leu/chainfire/lumen/root/Runner;->h(Leu/chainfire/lumen/root/Runner;[FZ)V

    goto :goto_8

    :cond_e
    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v8, v9}, Leu/chainfire/lumen/root/Runner;->g(Leu/chainfire/lumen/root/Runner;I)V

    iget-object v8, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v8, v1, v7}, Leu/chainfire/lumen/root/Runner;->h(Leu/chainfire/lumen/root/Runner;[FZ)V

    :goto_8
    iget-object v7, p0, Leu/chainfire/lumen/root/Runner$a;->e:Leu/chainfire/lumen/root/Runner;

    invoke-static {v7, v9, v9}, Leu/chainfire/lumen/root/Runner;->i(Leu/chainfire/lumen/root/Runner;ZZ)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
