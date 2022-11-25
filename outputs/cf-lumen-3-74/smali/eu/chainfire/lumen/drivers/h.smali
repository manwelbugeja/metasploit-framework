.class public Leu/chainfire/lumen/drivers/h;
.super Leu/chainfire/lumen/drivers/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/h$b;
    }
.end annotation


# static fields
.field private static f:Leu/chainfire/lumen/drivers/h;

.field private static final g:[Ljava/lang/String;

.field private static final h:[[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Leu/chainfire/lumen/drivers/h$b;

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "/sys/devices/platform/kcal_ctrl.0/"

    const-string v1, "/sys/module/msm_drm/parameters/"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/lumen/drivers/h;->g:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "kcal"

    const-string v2, "kcal_enable"

    const-string v3, "kcal_invert"

    const-string v4, "kcal_sat"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "kcal_red"

    const-string v2, "kcal_green"

    const-string v3, "kcal_blue"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Leu/chainfire/lumen/drivers/h;->h:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h;->c:Leu/chainfire/lumen/drivers/h$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/h;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Leu/chainfire/lumen/drivers/h;->e:I

    return-void
.end method

.method public static o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/h;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/h;->f:Leu/chainfire/lumen/drivers/h;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/h;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/h;-><init>()V

    sput-object v0, Leu/chainfire/lumen/drivers/h;->f:Leu/chainfire/lumen/drivers/h;

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p0

    sget-object v0, Leu/chainfire/lumen/drivers/h;->f:Leu/chainfire/lumen/drivers/h;

    iget-object p0, p0, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    invoke-virtual {p0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p0

    invoke-virtual {v0, p0}, Leu/chainfire/lumen/drivers/h;->r(Z)V

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/h;->f:Leu/chainfire/lumen/drivers/h;

    return-object p0
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object p1, Leu/chainfire/lumen/drivers/h;->g:[Ljava/lang/String;

    iget v2, p0, Leu/chainfire/lumen/drivers/h;->e:I

    aget-object p1, p1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "echo \"%s\" > %s%s"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;
    .locals 4

    sget-object v0, Leu/chainfire/lumen/drivers/h$a;->a:[I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Leu/chainfire/lumen/drivers/h$b;->p()Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {}, Leu/chainfire/lumen/drivers/h$b;->q()Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->j()I

    move-result p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->t(I)Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 v0, 0x80

    invoke-static {v1, v0, v0}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->e()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/h$b;->v(F)Leu/chainfire/lumen/drivers/h$b;

    return-object v0

    :pswitch_3
    const/16 v0, 0xc0

    invoke-static {v1, v0, v2}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v2, v2, v1}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v2, v1, v2}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {v1, v2, v2}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Leu/chainfire/lumen/drivers/h$b;->p()Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {}, Leu/chainfire/lumen/drivers/h$b;->p()Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->i()I

    move-result v0

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->f()I

    move-result v1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Leu/chainfire/lumen/drivers/h$b;->s(III)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->g()I

    move-result v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/h$b;->r(I)Leu/chainfire/lumen/drivers/h$b;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Leu/chainfire/lumen/drivers/h$b;

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/h$b;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Leu/chainfire/lumen/drivers/h;->c:Leu/chainfire/lumen/drivers/h$b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Leu/chainfire/lumen/drivers/h$b;->u()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v1, v0, Leu/chainfire/lumen/drivers/h;->c:Leu/chainfire/lumen/drivers/h$b;

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->c(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v0, v5, v6}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v5

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->e(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v7

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->g(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8, v6}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v8

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    if-ne v5, v6, :cond_1

    if-ne v7, v6, :cond_1

    if-eq v8, v6, :cond_2

    :cond_1
    int-to-float v5, v5

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result v9

    sub-float v9, v11, v9

    mul-float v5, v5, v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v7, v7

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result v9

    sub-float v9, v11, v9

    mul-float v7, v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v8, v8

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result v9

    sub-float v9, v11, v9

    mul-float v8, v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    :cond_2
    iget-boolean v9, v0, Leu/chainfire/lumen/drivers/h;->d:Z

    const/high16 v10, 0x437f0000    # 255.0f

    if-eqz v9, :cond_6

    int-to-float v9, v5

    div-float/2addr v9, v10

    float-to-double v12, v9

    const-wide v14, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v9, v12

    int-to-float v12, v7

    div-float/2addr v12, v10

    float-to-double v12, v12

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v12, v12

    int-to-float v13, v8

    div-float/2addr v13, v10

    move/from16 v16, v5

    float-to-double v4, v13

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    move/from16 v5, v16

    :goto_1
    int-to-float v13, v5

    cmpl-float v13, v13, v11

    if-lez v13, :cond_3

    div-int/2addr v5, v5

    div-int/2addr v7, v5

    div-int/2addr v8, v5

    goto :goto_1

    :cond_3
    int-to-float v13, v7

    cmpl-float v13, v13, v11

    if-lez v13, :cond_4

    div-int/2addr v5, v7

    div-int/2addr v7, v7

    div-int/2addr v8, v7

    goto :goto_1

    :cond_4
    int-to-float v13, v8

    cmpl-float v13, v13, v11

    if-lez v13, :cond_5

    div-int/2addr v5, v8

    div-int/2addr v7, v8

    div-int/2addr v8, v8

    goto :goto_1

    :cond_5
    mul-float v9, v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v0, v5, v2, v6}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v5

    mul-float v12, v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v0, v7, v2, v6}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v7

    mul-float v4, v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v4, v2, v6}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v8

    goto :goto_2

    :cond_6
    move/from16 v16, v5

    :goto_2
    iget v4, v0, Leu/chainfire/lumen/drivers/h;->e:I

    const-string v11, "kcal_val"

    const-string v13, "kcal_hue"

    const-string v15, "kcal_sat"

    const/high16 v17, 0x42fe0000    # 127.0f

    const/16 v18, 0x2

    const/4 v9, 0x3

    const-string v12, "255"

    const-string v14, "0"

    if-nez v4, :cond_c

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v18

    const-string v5, "%d %d %d"

    invoke-static {v10, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "kcal"

    invoke-direct {v0, v5, v6}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->i(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v0, v5, v6}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v5

    invoke-virtual {v0, v5, v2, v6}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    mul-float v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/lit16 v5, v5, 0x80

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v15}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->k(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Leu/chainfire/lumen/drivers/c;->b(Ljava/lang/Boolean;Z)Z

    move-result v2

    const-string v5, "1"

    if-eqz v2, :cond_7

    move-object v2, v5

    goto :goto_3

    :cond_7
    move-object v2, v14

    :goto_3
    const-string v6, "kcal_invert"

    invoke-direct {v0, v2, v6}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v18

    const-string v2, "kcal_min"

    invoke-direct {v0, v14, v2}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-direct {v0, v14, v13}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v4, v6

    invoke-direct {v0, v12, v11}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v4, v6

    const-string v2, "kcal_cont"

    invoke-direct {v0, v12, v2}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    aput-object v2, v4, v6

    const/4 v2, 0x7

    const-string v6, ""

    if-eqz v3, :cond_8

    const-string v7, "kcal_enable"

    invoke-direct {v0, v5, v7}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_8
    move-object v7, v6

    :goto_4
    aput-object v7, v4, v2

    if-eqz v3, :cond_9

    const-string v2, "service call SurfaceFlinger 1008 i32 1"

    goto :goto_5

    :cond_9
    move-object v2, v6

    :goto_5
    const/16 v7, 0x8

    aput-object v2, v4, v7

    const/16 v2, 0x9

    if-eqz v3, :cond_a

    const-string v6, "sleep 0.1"

    :cond_a
    aput-object v6, v4, v2

    const/16 v2, 0xa

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/h$b;->u()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    move-object v14, v5

    :goto_6
    const-string v1, "kcal_enable"

    invoke-direct {v0, v14, v1}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/16 v1, 0xb

    const-string v2, "service call SurfaceFlinger 1008 i32 0"

    aput-object v2, v4, v1

    return-object v4

    :cond_c
    const/4 v3, 0x1

    if-ne v4, v3, :cond_d

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v2

    const-string v5, "%d"

    invoke-static {v6, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "kcal_red"

    invoke-direct {v0, v10, v9}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v2

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v2

    invoke-static {v6, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "kcal_green"

    invoke-direct {v0, v7, v9}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v6, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kcal_blue"

    invoke-direct {v0, v2, v3}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v18

    invoke-static {v1}, Leu/chainfire/lumen/drivers/h$b;->i(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    invoke-direct {v0, v14, v13}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v4, v2

    invoke-direct {v0, v12, v11}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const-string v1, "kcal_cont"

    invoke-direct {v0, v12, v1}, Leu/chainfire/lumen/drivers/h;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v4, v2

    const/4 v1, 0x7

    const-string v2, "service call SurfaceFlinger 1008 i32 0"

    aput-object v2, v4, v1

    return-object v4

    :cond_d
    const/4 v1, 0x0

    return-object v1
.end method

.method public k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/h;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Leu/chainfire/lumen/drivers/h$b;->o()Leu/chainfire/lumen/drivers/h$b;

    move-result-object p1

    :cond_1
    check-cast p1, Leu/chainfire/lumen/drivers/h$b;

    check-cast p2, Leu/chainfire/lumen/drivers/h$b;

    new-instance v0, Leu/chainfire/lumen/drivers/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/chainfire/lumen/drivers/h$b;-><init>(Leu/chainfire/lumen/drivers/h$a;)V

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->c(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->c(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/h$b;->d(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->e(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->e(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/h$b;->f(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->g(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->g(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/h$b;->h(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->i(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->i(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/h$b;->j(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->k(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->k(Leu/chainfire/lumen/drivers/h$b;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;ZI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/h$b;->l(Leu/chainfire/lumen/drivers/h$b;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result p1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/h$b;->m(Leu/chainfire/lumen/drivers/h$b;)F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Leu/chainfire/lumen/drivers/c;->d(FFI)F

    move-result p1

    invoke-static {v0, p1}, Leu/chainfire/lumen/drivers/h$b;->n(Leu/chainfire/lumen/drivers/h$b;F)F

    invoke-virtual {p0, v0}, Leu/chainfire/lumen/drivers/h;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Leu/chainfire/lumen/a$e;)Z
    .locals 2

    sget-object v0, Leu/chainfire/lumen/drivers/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public n(Leu/chainfire/lumen/a$e;)Z
    .locals 2

    sget-object v0, Leu/chainfire/lumen/drivers/h$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget p1, p0, Leu/chainfire/lumen/drivers/h;->e:I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public p()Z
    .locals 10

    iget-object v0, p0, Leu/chainfire/lumen/drivers/h;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Leu/chainfire/lumen/drivers/h;->g:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_7

    sget-object v2, Leu/chainfire/lumen/drivers/h;->h:[[Ljava/lang/String;

    aget-object v2, v2, v1

    array-length v2, v2

    new-array v4, v2, [Z

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_0

    aput-boolean v0, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ls -l "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Leu/chainfire/lumen/drivers/h;->g:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/c$h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    :goto_2
    sget-object v8, Leu/chainfire/lumen/drivers/h;->h:[[Ljava/lang/String;

    aget-object v9, v8, v1

    array-length v9, v9

    if-ge v7, v9, :cond_1

    aget-object v8, v8, v1

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aput-boolean v3, v4, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_3
    if-ge v5, v2, :cond_5

    aget-boolean v7, v4, v5

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    const/4 v6, 0x1

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    iput v1, p0, Leu/chainfire/lumen/drivers/h;->e:I

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    iget v1, p0, Leu/chainfire/lumen/drivers/h;->e:I

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/h;->b:Ljava/lang/Boolean;

    :cond_9
    iget-object v0, p0, Leu/chainfire/lumen/drivers/h;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/h;->d:Z

    return-void
.end method
