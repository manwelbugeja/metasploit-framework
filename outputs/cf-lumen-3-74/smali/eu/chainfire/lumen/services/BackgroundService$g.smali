.class Leu/chainfire/lumen/services/BackgroundService$g;
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

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->t(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->g()Z

    move-result v0

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v3

    invoke-virtual {v3}, Leu/chainfire/lumen/a;->h()Z

    move-result v3

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v4

    iget-object v4, v4, Leu/chainfire/lumen/a;->E:Leu/chainfire/lumen/a$k;

    invoke-virtual {v4}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v5

    iget-object v5, v5, Leu/chainfire/lumen/a;->F:Leu/chainfire/lumen/a$k;

    invoke-virtual {v5}, Leu/chainfire/lumen/a$k;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "always"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v6, :cond_2

    const-string v6, "demand"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;

    move-result-object v4

    invoke-virtual {v4}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v4

    sget-object v6, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v4, v6, :cond_2

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v11

    cmp-long v4, v11, v7

    if-gtz v4, :cond_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const-string v6, "always"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "demand"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;

    move-result-object v5

    invoke-virtual {v5}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v5

    sget-object v6, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    cmp-long v11, v5, v7

    if-gtz v11, :cond_5

    :cond_3
    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    :goto_3
    const-string v6, ""

    sget-object v11, Leu/chainfire/lumen/services/BackgroundService$a;->a:[I

    iget-object v12, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v12}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x2

    if-eq v11, v9, :cond_9

    if-eq v11, v12, :cond_8

    const/4 v13, 0x3

    if-eq v11, v13, :cond_7

    const/4 v13, 0x4

    if-eq v11, v13, :cond_6

    goto :goto_4

    :cond_6
    iget-object v6, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v11, 0x7f0900b0

    invoke-virtual {v6, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_7
    iget-object v6, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v11, 0x7f0900b1

    invoke-virtual {v6, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    iget-object v6, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v11, 0x7f0900b2

    invoke-virtual {v6, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_9
    iget-object v6, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v11, 0x7f0900ad

    invoke-virtual {v6, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    iget-object v11, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v11}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    new-instance v13, Landroid/content/Intent;

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v15, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v11, v10, v13, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->P:Z

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->Q:Z

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->R:Z

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->S:Z

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->T:Z

    sput-boolean v10, Leu/chainfire/lumen/services/BackgroundService;->U:Z

    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v13

    cmp-long v15, v13, v7

    if-lez v15, :cond_a

    iget-object v6, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v13, 0x7f0900ae

    invoke-virtual {v6, v13}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_a
    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;

    move-result-object v13

    invoke-virtual {v13}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v13

    sget-object v14, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    const v15, 0x7f0900af

    const/16 v16, 0x0

    if-ne v13, v14, :cond_c

    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v17

    cmp-long v13, v17, v7

    if-lez v13, :cond_b

    goto :goto_5

    :cond_b
    move-object v12, v11

    move-object/from16 v7, v16

    move-object v8, v7

    move-object v11, v8

    goto :goto_9

    :cond_c
    :goto_5
    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v17

    cmp-long v13, v17, v7

    if-nez v13, :cond_d

    const/4 v13, 0x1

    goto :goto_6

    :cond_d
    const/4 v13, 0x0

    :goto_6
    if-eqz v0, :cond_f

    iget-object v11, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v11, v15}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    iget-object v15, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v15}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v7, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v12, v15, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v13, :cond_e

    iget-object v7, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v8, 0x7f0900a5

    invoke-virtual {v7, v8}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE_ON"

    invoke-virtual {v12, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE"

    invoke-virtual {v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_7

    :cond_e
    iget-object v7, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v8, 0x7f0900a6

    invoke-virtual {v7, v8}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE_OFF"

    invoke-virtual {v12, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "eu.chainfire.lumen.EXTRA_TEMP_DISABLE"

    invoke-virtual {v12, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_7
    iget-object v8, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v8}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v8, v10, v12, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    move-object v12, v8

    goto :goto_8

    :cond_f
    move-object v12, v11

    move-object/from16 v7, v16

    move-object v8, v7

    move-object v11, v8

    :goto_8
    if-eqz v13, :cond_10

    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->Q:Z

    goto :goto_9

    :cond_10
    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->P:Z

    :goto_9
    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v13

    sget-object v15, Leu/chainfire/lumen/services/BackgroundService$k;->d:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-virtual {v13, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v13

    const v10, 0x7f0900ab

    if-nez v13, :cond_11

    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->Q(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v21

    const-wide/16 v19, 0x0

    cmp-long v13, v21, v19

    if-lez v13, :cond_16

    :cond_11
    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v13

    sget-object v9, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-virtual {v13, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v22

    const-wide/16 v19, 0x0

    cmp-long v9, v22, v19

    if-nez v9, :cond_16

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v22

    cmp-long v9, v22, v19

    if-nez v9, :cond_16

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v9

    iget-object v9, v9, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    invoke-virtual {v9}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v9

    invoke-virtual {v9}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v9

    if-eq v9, v14, :cond_16

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->Q(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v13

    const-wide/16 v19, 0x0

    cmp-long v9, v13, v19

    if-nez v9, :cond_12

    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    :goto_a
    if-eqz v0, :cond_14

    iget-object v11, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v12, 0x7f0900af

    invoke-virtual {v11, v12}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v14, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v9, :cond_13

    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v13, v10}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "eu.chainfire.lumen.EXTRA_TEMP_WAKE_ON"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "eu.chainfire.lumen.EXTRA_TEMP_WAKE"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v14, Leu/chainfire/lumen/services/BackgroundService;->S:Z

    const/4 v14, 0x0

    goto :goto_b

    :cond_13
    iget-object v10, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v13, 0x7f0900aa

    invoke-virtual {v10, v13}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "eu.chainfire.lumen.EXTRA_TEMP_WAKE_OFF"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "eu.chainfire.lumen.EXTRA_TEMP_WAKE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v13, 0x1

    sput-boolean v13, Leu/chainfire/lumen/services/BackgroundService;->R:Z

    :goto_b
    iget-object v13, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13, v14, v12, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object v13, v12

    move-object/from16 v24, v8

    move-object v8, v7

    move-object v7, v10

    move-object/from16 v10, v24

    goto :goto_c

    :cond_14
    move-object v13, v12

    move-object/from16 v10, v16

    move-object v12, v8

    move-object v8, v10

    :goto_c
    if-eqz v9, :cond_15

    const/4 v9, 0x1

    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->S:Z

    goto/16 :goto_11

    :cond_15
    const/4 v9, 0x1

    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->R:Z

    goto/16 :goto_11

    :cond_16
    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v22

    const-wide/16 v19, 0x0

    cmp-long v9, v22, v19

    if-lez v9, :cond_1c

    :cond_17
    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v9

    sget-object v13, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-virtual {v9, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v22

    const-wide/16 v19, 0x0

    cmp-long v9, v22, v19

    if-nez v9, :cond_1c

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v9

    iget-object v9, v9, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    invoke-virtual {v9}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v9

    invoke-virtual {v9}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v9

    if-eq v9, v14, :cond_1c

    iget-object v9, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v9}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v13

    const-wide/16 v19, 0x0

    cmp-long v9, v13, v19

    if-nez v9, :cond_18

    const/4 v9, 0x1

    goto :goto_d

    :cond_18
    const/4 v9, 0x0

    :goto_d
    if-eqz v0, :cond_1a

    iget-object v11, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v13, 0x7f0900af

    invoke-virtual {v11, v13}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v13, Landroid/content/Intent;

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v15, Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v13, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v9, :cond_19

    iget-object v10, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v14, 0x7f0900aa

    invoke-virtual {v10, v14}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP_ON"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v15, Leu/chainfire/lumen/services/BackgroundService;->T:Z

    const/4 v15, 0x0

    goto :goto_e

    :cond_19
    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v14, v10}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v14, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP_OFF"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "eu.chainfire.lumen.EXTRA_TEMP_SLEEP"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v14, 0x1

    sput-boolean v14, Leu/chainfire/lumen/services/BackgroundService;->U:Z

    :goto_e
    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14, v15, v13, v15}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    goto :goto_f

    :cond_1a
    move-object/from16 v10, v16

    move-object v13, v10

    :goto_f
    if-eqz v9, :cond_1b

    const/4 v9, 0x1

    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->T:Z

    goto :goto_10

    :cond_1b
    const/4 v9, 0x1

    sput-boolean v9, Leu/chainfire/lumen/services/BackgroundService;->U:Z

    :goto_10
    move-object/from16 v24, v12

    move-object v12, v8

    move-object v8, v10

    move-object v10, v13

    move-object/from16 v13, v24

    goto :goto_11

    :cond_1c
    move-object v13, v12

    move-object/from16 v10, v16

    move-object v12, v8

    move-object v8, v10

    :goto_11
    if-eqz v0, :cond_1e

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v14, 0x7f0900a8

    invoke-virtual {v0, v14}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    new-instance v14, Landroid/content/Intent;

    iget-object v15, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v15}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v9, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {v14, v15, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v0, v9, v14, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v3, :cond_1d

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v9, 0x7f0900ac

    invoke-virtual {v3, v9}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1d
    move-object v3, v0

    move-object/from16 v0, v16

    goto :goto_12

    :cond_1e
    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v3, 0x7f0900ac

    invoke-virtual {v0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const v3, 0x7f0900a9

    invoke-virtual {v0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Landroid/content/Intent;

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const-class v9, Leu/chainfire/lumen/ui/MainActivity;

    invoke-direct {v0, v3, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "eu.chainfire.lumen.EXTRA_PURCHASE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "eu.chainfire.lumen.EXTRA_PURCHASE"

    const/4 v9, 0x1

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    const/4 v9, 0x0

    invoke-static {v3, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    move-object/from16 v0, v16

    move-object v3, v0

    :goto_12
    const v9, 0x7f090002

    if-nez v11, :cond_1f

    iget-object v11, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v11, v9}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_13

    :cond_1f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v15, v9}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v11

    :goto_13
    new-instance v11, Ljava/lang/StringBuilder;

    if-eqz v4, :cond_20

    const-string v14, "visible"

    goto :goto_14

    :cond_20
    const-string v14, "invisible"

    :goto_14
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->A(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v14

    if-eqz v14, :cond_21

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/app/Service;->stopForeground(Z)V

    :cond_21
    if-eqz v4, :cond_31

    const/16 v4, 0x3a

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_22

    const-string v14, "visible"

    goto :goto_15

    :cond_22
    const-string v14, "invisible"

    :goto_15
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_23

    move-object v14, v6

    goto :goto_16

    :cond_23
    const-string v14, "null"

    :goto_16
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_24

    move-object v14, v7

    goto :goto_17

    :cond_24
    const-string v14, "null"

    :goto_17
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_25

    move-object v14, v8

    goto :goto_18

    :cond_25
    const-string v14, "null"

    :goto_18
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_26

    move-object v4, v0

    goto :goto_19

    :cond_26
    const-string v4, "null"

    :goto_19
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->C(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->C(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v5, :cond_27

    goto :goto_1a

    :cond_27
    move-object/from16 v16, v11

    goto :goto_1b

    :cond_28
    :goto_1a
    const-string v4, "NOTIFICATION"

    const-string v14, "stopForeground() TEMP"

    move-object/from16 v16, v11

    const/4 v15, 0x0

    new-array v11, v15, [Ljava/lang/Object;

    invoke-static {v4, v14, v11}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/app/Service;->stopForeground(Z)V

    iget-object v4, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v4, v11}, Leu/chainfire/lumen/services/BackgroundService;->D(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :goto_1b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-lt v4, v11, :cond_2a

    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    if-eqz v5, :cond_29

    const-string v15, "service"

    goto :goto_1c

    :cond_29
    const-string v15, "service_low"

    :goto_1c
    invoke-direct {v11, v14, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    :cond_2a
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v14, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->b(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {v11, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_1d
    const v14, 0x7f05001b

    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    if-eqz v5, :cond_2b

    const/4 v5, 0x0

    goto :goto_1e

    :cond_2b
    const/4 v5, -0x2

    :goto_1e
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v5, 0x7f05001c

    if-eqz v7, :cond_2c

    invoke-virtual {v11, v5, v7, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2c
    if-eqz v8, :cond_2d

    invoke-virtual {v11, v5, v8, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2d
    if-eqz v0, :cond_2e

    invoke-virtual {v11, v5, v0, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_2e
    const/16 v0, 0x15

    if-lt v4, v0, :cond_2f

    const-string v0, "service"

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    :cond_2f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->E(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v0}, Leu/chainfire/lumen/services/BackgroundService;->A(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const-string v0, "NOTIFICATION"

    const-string v3, "startForeground()"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Leu/chainfire/lumen/services/BackgroundService;->B(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    goto :goto_1f

    :cond_31
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->E(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "NOTIFICATION"

    const-string v3, "stopForeground()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Service;->stopForeground(Z)V

    :cond_32
    :goto_1f
    iget-object v0, v1, Leu/chainfire/lumen/services/BackgroundService$g;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Leu/chainfire/lumen/services/BackgroundService;->F(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
