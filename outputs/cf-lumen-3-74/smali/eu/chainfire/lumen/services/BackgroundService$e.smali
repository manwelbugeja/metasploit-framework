.class Leu/chainfire/lumen/services/BackgroundService$e;
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

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/lumen/a;->P:Leu/chainfire/lumen/a$c;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/lumen/a;->k:Leu/chainfire/lumen/a$c;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->N(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/a;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/services/a;->a()V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->N(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/a;

    move-result-object v2

    invoke-virtual {v2}, Leu/chainfire/lumen/services/a;->b()V

    :goto_0
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/lumen/a;->l:Leu/chainfire/lumen/a$f;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v5

    if-ltz v9, :cond_2

    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5, v7, v8}, Leu/chainfire/lumen/services/BackgroundService;->P(Leu/chainfire/lumen/services/BackgroundService;J)J

    :cond_2
    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->Q(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    cmp-long v9, v3, v5

    if-ltz v9, :cond_3

    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5, v7, v8}, Leu/chainfire/lumen/services/BackgroundService;->R(Leu/chainfire/lumen/services/BackgroundService;J)J

    :cond_3
    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    cmp-long v9, v3, v5

    if-ltz v9, :cond_4

    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5, v7, v8}, Leu/chainfire/lumen/services/BackgroundService;->T(Leu/chainfire/lumen/services/BackgroundService;J)J

    :cond_4
    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->U(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$l;

    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    const/16 v9, 0x17

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x3

    cmp-long v13, v3, v5

    if-gez v13, :cond_6

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    new-instance v3, Leu/chainfire/lumen/a$d;

    sget-object v4, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    invoke-direct {v3, v4}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->f(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    if-lt v1, v9, :cond_5

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v2

    add-long/2addr v2, v10

    iget-object v4, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->O(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v4

    add-long/2addr v4, v10

    const-wide/32 v6, 0x2bf20

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    :goto_1
    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->b:Leu/chainfire/lumen/services/BackgroundService$l;

    goto/16 :goto_12

    :cond_6
    iget-object v5, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v5}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v5

    cmp-long v13, v3, v5

    if-gez v13, :cond_8

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->d:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    invoke-virtual {v3}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v3

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->f(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    if-lt v1, v9, :cond_7

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v2

    add-long/2addr v2, v10

    iget-object v4, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v12, v2, v3, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->S(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v4

    add-long/2addr v4, v10

    const-wide/32 v6, 0x2bf20

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    :goto_2
    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->c:Leu/chainfire/lumen/services/BackgroundService$l;

    goto/16 :goto_12

    :cond_8
    invoke-virtual {v2}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v3

    sget-object v4, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-eq v3, v4, :cond_9

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->a:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v1, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1, v2}, Leu/chainfire/lumen/services/BackgroundService;->f(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    sget-object v1, Leu/chainfire/lumen/services/BackgroundService$l;->d:Leu/chainfire/lumen/services/BackgroundService$l;

    goto/16 :goto_12

    :cond_9
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->b:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v2

    iget-object v2, v2, Leu/chainfire/lumen/a;->i:Leu/chainfire/lumen/a$g;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$g;->c()F

    move-result v2

    iget-object v4, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v4}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v4

    iget-object v4, v4, Leu/chainfire/lumen/a;->j:Leu/chainfire/lumen/a$g;

    invoke-virtual {v4}, Leu/chainfire/lumen/a$g;->c()F

    move-result v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getHours()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3c

    invoke-virtual {v5}, Ljava/util/Date;->getMinutes()I

    move-result v5

    add-int/2addr v6, v5

    new-array v5, v12, [J

    fill-array-data v5, :array_0

    new-instance v10, Leu/chainfire/lumen/b/b;

    invoke-direct {v10, v2, v4}, Leu/chainfire/lumen/b/b;-><init>(FF)V

    invoke-virtual {v10}, Leu/chainfire/lumen/b/b;->d()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_b

    :cond_a
    :goto_3
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v10}, Leu/chainfire/lumen/b/b;->c()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_4
    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {v10}, Leu/chainfire/lumen/b/b;->a()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v10}, Leu/chainfire/lumen/b/b;->b()Ljava/util/Date;

    move-result-object v10

    if-eqz v2, :cond_a

    if-eqz v10, :cond_a

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v13

    mul-int/lit8 v13, v13, 0x3c

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    add-int/2addr v13, v2

    invoke-virtual {v10}, Ljava/util/Date;->getHours()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {v10}, Ljava/util/Date;->getMinutes()I

    move-result v10

    add-int/2addr v2, v10

    if-lt v6, v13, :cond_d

    if-ge v6, v2, :cond_d

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10, v6, v2}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v11

    goto :goto_3

    :cond_d
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2, v6, v13}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v11

    goto :goto_4

    :goto_5
    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->Q(Leu/chainfire/lumen/services/BackgroundService;)J

    move-result-wide v13

    cmp-long v10, v13, v7

    if-nez v10, :cond_15

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->u:Leu/chainfire/lumen/a$l;

    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v13

    iget-object v13, v13, Leu/chainfire/lumen/a;->v:Leu/chainfire/lumen/a$l;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$l;->d()I

    move-result v14

    mul-int/lit8 v14, v14, 0x3c

    invoke-virtual {v10}, Leu/chainfire/lumen/a$l;->e()I

    move-result v10

    add-int/2addr v14, v10

    invoke-virtual {v13}, Leu/chainfire/lumen/a$l;->d()I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {v13}, Leu/chainfire/lumen/a$l;->e()I

    move-result v13

    add-int/2addr v10, v13

    if-ge v14, v10, :cond_f

    if-lt v6, v14, :cond_e

    if-ge v6, v10, :cond_e

    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13, v6, v10}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v4

    goto :goto_7

    :cond_e
    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10, v11}, Leu/chainfire/lumen/services/BackgroundService;->k(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10, v6, v14}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v4

    goto :goto_8

    :cond_f
    if-le v14, v10, :cond_12

    if-ge v6, v14, :cond_11

    if-ge v6, v10, :cond_10

    goto :goto_6

    :cond_10
    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10, v11}, Leu/chainfire/lumen/services/BackgroundService;->k(Leu/chainfire/lumen/services/BackgroundService;Z)Z

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10, v6, v14}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v4

    goto :goto_8

    :cond_11
    :goto_6
    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13, v6, v10}, Leu/chainfire/lumen/services/BackgroundService;->i(Leu/chainfire/lumen/services/BackgroundService;II)J

    move-result-wide v13

    aput-wide v13, v5, v4

    :goto_7
    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v6, 0x0

    :goto_9
    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->j(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v6, 0x0

    :cond_13
    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->n(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$m;

    move-result-object v10

    sget-object v13, Leu/chainfire/lumen/services/BackgroundService$m;->b:Leu/chainfire/lumen/services/BackgroundService$m;

    if-ne v10, v13, :cond_16

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->x:Leu/chainfire/lumen/a$c;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v10

    if-eqz v10, :cond_16

    if-nez v2, :cond_14

    if-nez v2, :cond_16

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->y:Leu/chainfire/lumen/a$c;

    invoke-virtual {v10}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v10

    if-nez v10, :cond_16

    :cond_14
    const/4 v10, 0x1

    goto :goto_a

    :cond_15
    const/4 v6, 0x0

    :cond_16
    const/4 v10, 0x0

    :goto_a
    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v13

    iget-object v13, v13, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    invoke-virtual {v13}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v13

    invoke-virtual {v13}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v13

    sget-object v14, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v13, v14, :cond_17

    aput-wide v7, v5, v4

    const/4 v6, 0x0

    const/4 v10, 0x0

    :cond_17
    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v13

    if-eqz v13, :cond_18

    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->n(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$m;

    move-result-object v13

    sget-object v14, Leu/chainfire/lumen/services/BackgroundService$m;->d:Leu/chainfire/lumen/services/BackgroundService$m;

    if-ne v13, v14, :cond_18

    iget-object v13, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v13}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v13

    iget-object v13, v13, Leu/chainfire/lumen/a;->A:Leu/chainfire/lumen/a$c;

    invoke-virtual {v13}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v13

    if-eqz v13, :cond_18

    const/4 v13, 0x1

    goto :goto_b

    :cond_18
    const/4 v13, 0x0

    :goto_b
    iget-object v14, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->l(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v14

    if-eqz v14, :cond_1a

    iget-object v14, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->n(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$m;

    move-result-object v14

    sget-object v15, Leu/chainfire/lumen/services/BackgroundService$m;->c:Leu/chainfire/lumen/services/BackgroundService$m;

    if-eq v14, v15, :cond_19

    iget-object v14, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->n(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$m;

    move-result-object v14

    sget-object v15, Leu/chainfire/lumen/services/BackgroundService$m;->d:Leu/chainfire/lumen/services/BackgroundService$m;

    if-ne v14, v15, :cond_1a

    if-nez v13, :cond_1a

    :cond_19
    iget-object v14, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v14}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v14

    iget-object v14, v14, Leu/chainfire/lumen/a;->z:Leu/chainfire/lumen/a$c;

    invoke-virtual {v14}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v14

    if-eqz v14, :cond_1a

    if-eqz v6, :cond_1a

    const/4 v14, 0x1

    goto :goto_c

    :cond_1a
    const/4 v14, 0x0

    :goto_c
    if-eqz v13, :cond_1c

    :cond_1b
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->h:Leu/chainfire/lumen/services/BackgroundService$l;

    goto :goto_d

    :cond_1c
    if-eqz v14, :cond_1d

    if-eqz v2, :cond_1b

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->c:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->i:Leu/chainfire/lumen/services/BackgroundService$l;

    goto :goto_d

    :cond_1d
    if-eqz v10, :cond_1e

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->d:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->j:Leu/chainfire/lumen/services/BackgroundService$l;

    goto :goto_d

    :cond_1e
    if-eqz v6, :cond_1f

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->d:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->g:Leu/chainfire/lumen/services/BackgroundService$l;

    goto :goto_d

    :cond_1f
    if-eqz v2, :cond_20

    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$k;->c:Leu/chainfire/lumen/services/BackgroundService$k;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->f:Leu/chainfire/lumen/services/BackgroundService$l;

    goto :goto_d

    :cond_20
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2, v3}, Leu/chainfire/lumen/services/BackgroundService;->d(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$k;)Leu/chainfire/lumen/services/BackgroundService$k;

    sget-object v2, Leu/chainfire/lumen/services/BackgroundService$l;->e:Leu/chainfire/lumen/services/BackgroundService$l;

    :goto_d
    sget-object v3, Leu/chainfire/lumen/services/BackgroundService$a;->a:[I

    iget-object v6, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v6}, Leu/chainfire/lumen/services/BackgroundService;->c(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$k;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x2

    if-eq v3, v4, :cond_23

    if-eq v3, v6, :cond_22

    if-eq v3, v12, :cond_21

    goto :goto_f

    :cond_21
    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->q:Leu/chainfire/lumen/a$f;

    goto :goto_e

    :cond_22
    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->p:Leu/chainfire/lumen/a$f;

    goto :goto_e

    :cond_23
    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v10

    iget-object v10, v10, Leu/chainfire/lumen/a;->o:Leu/chainfire/lumen/a$f;

    :goto_e
    invoke-virtual {v10}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v10

    invoke-static {v3, v10}, Leu/chainfire/lumen/services/BackgroundService;->f(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    :goto_f
    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->a(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a;

    move-result-object v3

    iget-object v3, v3, Leu/chainfire/lumen/a;->n:Leu/chainfire/lumen/a$f;

    iget-object v10, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v10}, Leu/chainfire/lumen/services/BackgroundService;->e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;

    move-result-object v10

    invoke-virtual {v3, v10}, Leu/chainfire/lumen/a$f;->d(Leu/chainfire/lumen/a$d;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/32 v15, 0x1b7740

    add-long/2addr v13, v15

    aput-wide v13, v5, v6

    const-wide/16 v13, -0x1

    move-wide v9, v13

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v12, :cond_26

    aget-wide v16, v5, v3

    cmp-long v18, v16, v7

    if-lez v18, :cond_25

    aget-wide v16, v5, v3

    cmp-long v18, v16, v9

    if-ltz v18, :cond_24

    cmp-long v16, v9, v13

    if-nez v16, :cond_25

    :cond_24
    aget-wide v9, v5, v3

    if-gt v3, v6, :cond_25

    const-wide/32 v16, 0x1d4c0

    add-long v9, v9, v16

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_26
    cmp-long v3, v9, v7

    if-lez v3, :cond_28

    const-wide/32 v7, 0xea60

    const-string v3, "Scheduling eval for %d +- %d minutes"

    const/16 v5, 0x17

    if-lt v1, v5, :cond_27

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v9, v5

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v12, v9, v10, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_11

    :cond_27
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v9, v5

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->h(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/AlarmManager;

    move-result-object v15

    const/16 v16, 0x3

    const-wide/32 v19, 0x2bf20

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->g(Leu/chainfire/lumen/services/BackgroundService;)Landroid/app/PendingIntent;

    move-result-object v21

    move-wide/from16 v17, v9

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    :cond_28
    :goto_11
    move-object v1, v2

    :goto_12
    iget-object v2, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v2}, Leu/chainfire/lumen/services/BackgroundService;->U(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/services/BackgroundService$l;

    move-result-object v3

    invoke-static {v2, v3, v1}, Leu/chainfire/lumen/services/BackgroundService;->p(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$l;Leu/chainfire/lumen/services/BackgroundService$l;)I

    move-result v2

    iget-object v3, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v3, v1}, Leu/chainfire/lumen/services/BackgroundService;->V(Leu/chainfire/lumen/services/BackgroundService;Leu/chainfire/lumen/services/BackgroundService$l;)Leu/chainfire/lumen/services/BackgroundService$l;

    if-eqz v2, :cond_29

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->L(Leu/chainfire/lumen/services/BackgroundService;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 v2, 0x1f4

    :cond_29
    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->q(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v1, v3}, Leu/chainfire/lumen/services/BackgroundService;->r(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;)V

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->t(Leu/chainfire/lumen/services/BackgroundService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v1, v3}, Leu/chainfire/lumen/services/BackgroundService;->r(Leu/chainfire/lumen/services/BackgroundService;Ljava/lang/Runnable;)V

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->u(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/drivers/d;

    move-result-object v3

    iget-object v1, v0, Leu/chainfire/lumen/services/BackgroundService$e;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-static {v1}, Leu/chainfire/lumen/services/BackgroundService;->e(Leu/chainfire/lumen/services/BackgroundService;)Leu/chainfire/lumen/a$d;

    move-result-object v4

    const/4 v5, 0x0

    int-to-long v6, v2

    const-string v8, "evaluateFilter"

    invoke-virtual/range {v3 .. v8}, Leu/chainfire/lumen/drivers/d;->r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
