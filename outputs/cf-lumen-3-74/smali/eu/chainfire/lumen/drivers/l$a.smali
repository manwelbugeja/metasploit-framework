.class Leu/chainfire/lumen/drivers/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/drivers/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/l;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/l;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/l;->a(Leu/chainfire/lumen/drivers/l;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v3, 0x0

    const-wide/32 v4, 0xea60

    sub-long v4, v6, v4

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v3}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    invoke-virtual {v2}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-static {v3}, Leu/chainfire/lumen/drivers/l;->b(Leu/chainfire/lumen/drivers/l;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Leu/chainfire/lumen/drivers/l$a$a;

    invoke-direct {v4, p0, v2}, Leu/chainfire/lumen/drivers/l$a$a;-><init>(Leu/chainfire/lumen/drivers/l$a;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_3
    const-wide/16 v2, 0x9c4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/l;->c(Leu/chainfire/lumen/drivers/l;)Ljava/lang/Thread;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_0

    :catch_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-static {v1, v0}, Leu/chainfire/lumen/drivers/l;->d(Leu/chainfire/lumen/drivers/l;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    invoke-static {v2, v0}, Leu/chainfire/lumen/drivers/l;->d(Leu/chainfire/lumen/drivers/l;Ljava/lang/Thread;)Ljava/lang/Thread;

    throw v1
.end method
