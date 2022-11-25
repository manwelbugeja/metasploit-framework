.class public Leu/chainfire/lumen/drivers/j;
.super Leu/chainfire/lumen/drivers/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/j$b;
    }
.end annotation


# static fields
.field private static d:Leu/chainfire/lumen/drivers/j;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/j;->b:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/j;->c:Z

    return-void
.end method

.method public static o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/j;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/j;->d:Leu/chainfire/lumen/drivers/j;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/j;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/j;-><init>()V

    sput-object v0, Leu/chainfire/lumen/drivers/j;->d:Leu/chainfire/lumen/drivers/j;

    invoke-static {p0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object p0

    sget-object v0, Leu/chainfire/lumen/drivers/j;->d:Leu/chainfire/lumen/drivers/j;

    iget-object p0, p0, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    invoke-virtual {p0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result p0

    invoke-virtual {v0, p0}, Leu/chainfire/lumen/drivers/j;->q(Z)V

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/j;->d:Leu/chainfire/lumen/drivers/j;

    return-object p0
.end method


# virtual methods
.method public e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;
    .locals 5

    sget-object v0, Leu/chainfire/lumen/drivers/j$a;->a:[I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x8000

    const/16 v2, 0x4000

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->m()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->m()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->m()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {v1, v2, v2}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->e()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/j$b;->q(F)Leu/chainfire/lumen/drivers/j$b;

    return-object v0

    :pswitch_3
    const/16 v0, 0x6000

    invoke-static {v1, v0, v3}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v3, v3, v2}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v3, v2, v3}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {v2, v3, v3}, Leu/chainfire/lumen/drivers/j$b;->o(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->m()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->m()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->i()I

    move-result v0

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->f()I

    move-result v1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Leu/chainfire/lumen/drivers/j$b;->p(III)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->g()I

    move-result v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/j$b;->n(I)Leu/chainfire/lumen/drivers/j$b;

    move-result-object v0

    goto :goto_0

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
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Leu/chainfire/lumen/drivers/j$b;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->c(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v0

    const v2, 0x8000

    invoke-virtual {p0, v0, v2}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->e(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v3

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->g(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Leu/chainfire/lumen/drivers/c;->h(Ljava/lang/Integer;I)I

    move-result v4

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    if-ne v0, v2, :cond_0

    if-ne v3, v2, :cond_0

    if-eq v4, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result v5

    sub-float v5, v6, v5

    mul-float v0, v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v3

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result v5

    sub-float v5, v6, v5

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result p1

    sub-float p1, v6, p1

    mul-float v4, v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    :cond_1
    iget-boolean p1, p0, Leu/chainfire/lumen/drivers/j;->c:Z

    if-eqz p1, :cond_5

    int-to-float p1, v0

    const/high16 v5, 0x47000000    # 32768.0f

    div-float/2addr p1, v5

    float-to-double v7, p1

    const-wide v9, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float p1, v7

    int-to-float v7, v3

    div-float/2addr v7, v5

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v8, v5

    float-to-double v11, v8

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    :goto_0
    int-to-float v9, v0

    cmpl-float v9, v9, v6

    if-lez v9, :cond_2

    div-int/2addr v0, v0

    div-int/2addr v3, v0

    div-int/2addr v4, v0

    goto :goto_0

    :cond_2
    int-to-float v9, v3

    cmpl-float v9, v9, v6

    if-lez v9, :cond_3

    div-int/2addr v0, v3

    div-int/2addr v3, v3

    div-int/2addr v4, v3

    goto :goto_0

    :cond_3
    int-to-float v9, v4

    cmpl-float v9, v9, v6

    if-lez v9, :cond_4

    div-int/2addr v0, v4

    div-int/2addr v3, v4

    div-int/2addr v4, v4

    goto :goto_0

    :cond_4
    mul-float p1, p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v0

    mul-float v7, v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v3

    mul-float v8, v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p1, v1, v2}, Leu/chainfire/lumen/drivers/c;->c(III)I

    move-result v4

    :cond_5
    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v6, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, p1

    const/4 p1, 0x3

    const-string v0, "/sys/class/graphics/fb0/rgb"

    aput-object v0, v6, p1

    const-string p1, "echo \"%d %d %d\" > %s"

    invoke-static {v5, p1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "service call SurfaceFlinger 1008 i32 0"

    aput-object p1, v2, v3

    return-object v2
.end method

.method public k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/j;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Leu/chainfire/lumen/drivers/j$b;->l()Leu/chainfire/lumen/drivers/j$b;

    move-result-object p1

    :cond_1
    check-cast p1, Leu/chainfire/lumen/drivers/j$b;

    check-cast p2, Leu/chainfire/lumen/drivers/j$b;

    new-instance v0, Leu/chainfire/lumen/drivers/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leu/chainfire/lumen/drivers/j$b;-><init>(Leu/chainfire/lumen/drivers/j$a;)V

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->c(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/j$b;->c(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x8000

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/j$b;->d(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->e(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/j$b;->e(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/j$b;->f(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->g(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/j$b;->g(Leu/chainfire/lumen/drivers/j$b;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3, p3}, Leu/chainfire/lumen/drivers/c;->i(Ljava/lang/Integer;Ljava/lang/Integer;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/drivers/j$b;->h(Leu/chainfire/lumen/drivers/j$b;Ljava/lang/Integer;)Ljava/lang/Integer;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result p1

    invoke-static {p2}, Leu/chainfire/lumen/drivers/j$b;->i(Leu/chainfire/lumen/drivers/j$b;)F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Leu/chainfire/lumen/drivers/c;->d(FFI)F

    move-result p1

    invoke-static {v0, p1}, Leu/chainfire/lumen/drivers/j$b;->j(Leu/chainfire/lumen/drivers/j$b;F)F

    invoke-virtual {p0, v0}, Leu/chainfire/lumen/drivers/j;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Leu/chainfire/lumen/a$e;)Z
    .locals 2

    sget-object v0, Leu/chainfire/lumen/drivers/j$a;->a:[I

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
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/j$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/drivers/j;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/j;->b:Ljava/lang/Boolean;

    const-string v0, "ls -l /sys/class/graphics/fb0/"

    invoke-static {v0}, Lc/a/a/c$h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "rgb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Leu/chainfire/lumen/drivers/j;->b:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/drivers/j;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/j;->c:Z

    return-void
.end method
