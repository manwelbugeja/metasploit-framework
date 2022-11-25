.class public Leu/chainfire/lumen/drivers/k;
.super Leu/chainfire/lumen/drivers/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/k$b;
    }
.end annotation


# static fields
.field private static c:Leu/chainfire/lumen/drivers/k;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c;-><init>()V

    iput-object p1, p0, Leu/chainfire/lumen/drivers/k;->b:Landroid/content/Context;

    return-void
.end method

.method private o(Leu/chainfire/lumen/drivers/k$b;)[I
    .locals 8

    invoke-static {p1}, Leu/chainfire/lumen/drivers/k$b;->c(Leu/chainfire/lumen/drivers/k$b;)I

    move-result v0

    invoke-static {p1}, Leu/chainfire/lumen/drivers/k$b;->d(Leu/chainfire/lumen/drivers/k$b;)I

    move-result v1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/k$b;->e(Leu/chainfire/lumen/drivers/k$b;)I

    move-result p1

    rsub-int v2, v0, 0xff

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    rsub-int v6, v1, 0xff

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    rsub-int v6, p1, 0xff

    int-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide v4, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/16 v4, 0x60

    const/16 v5, 0x9f

    invoke-direct {p0, v4, v5, v0}, Leu/chainfire/lumen/drivers/k;->s(III)I

    move-result v0

    invoke-direct {p0, v4, v5, v1}, Leu/chainfire/lumen/drivers/k;->s(III)I

    move-result v1

    invoke-direct {p0, v4, v5, p1}, Leu/chainfire/lumen/drivers/k;->s(III)I

    move-result p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v0, v4, v5}, Leu/chainfire/lumen/drivers/k;->c(III)I

    move-result v0

    invoke-virtual {p0, v1, v4, v5}, Leu/chainfire/lumen/drivers/k;->c(III)I

    move-result v1

    invoke-virtual {p0, p1, v4, v5}, Leu/chainfire/lumen/drivers/k;->c(III)I

    move-result p1

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v0, v3, v2

    const/4 v0, 0x2

    aput v1, v3, v0

    const/4 v0, 0x3

    aput p1, v3, v0

    return-object v3
.end method

.method public static p(Landroid/content/Context;)Leu/chainfire/lumen/drivers/k;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/k;->c:Leu/chainfire/lumen/drivers/k;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/k;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Leu/chainfire/lumen/drivers/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Leu/chainfire/lumen/drivers/k;->c:Leu/chainfire/lumen/drivers/k;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/k;->c:Leu/chainfire/lumen/drivers/k;

    return-object p0
.end method

.method private q([IF)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.lumen.BROADCAST_ROOTLESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    const-string v1, "eu.chainfire.lumen.EXTRA_COLOR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "eu.chainfire.lumen.EXTRA_DARKEN"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    iget-object p1, p0, Leu/chainfire/lumen/drivers/k;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private s(III)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    sub-float/2addr p3, p2

    div-float/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected c(III)I
    .locals 2

    if-gez p2, :cond_0

    sub-int/2addr p1, p2

    sub-int/2addr p3, p2

    :cond_0
    const/4 p2, 0x0

    const/16 v0, 0xff

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    int-to-float p3, p3

    div-float/2addr v1, p3

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public e(Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/drivers/c$a;
    .locals 4

    sget-object v0, Leu/chainfire/lumen/drivers/k$a;->a:[I

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->g()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->g()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->g()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 v0, 0x80

    invoke-static {v1, v0, v0}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->e()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v3

    invoke-virtual {v0, p1}, Leu/chainfire/lumen/drivers/k$b;->k(F)Leu/chainfire/lumen/drivers/k$b;

    return-object v0

    :pswitch_3
    const/16 v0, 0xc0

    invoke-static {v1, v0, v2}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v2, v2, v1}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {v2, v1, v2}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {v1, v2, v2}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->g()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    return-object p1

    :pswitch_8
    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->g()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    return-object p1

    :pswitch_9
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->i()I

    move-result v0

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->f()I

    move-result v1

    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->c()I

    move-result v2

    invoke-static {v0, v1, v2}, Leu/chainfire/lumen/drivers/k$b;->i(III)Leu/chainfire/lumen/drivers/k$b;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p1}, Leu/chainfire/lumen/a$d;->g()I

    move-result v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/k$b;->h(I)Leu/chainfire/lumen/drivers/k$b;

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
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Leu/chainfire/lumen/drivers/k$b;

    invoke-direct {p0, p1}, Leu/chainfire/lumen/drivers/k;->o(Leu/chainfire/lumen/drivers/k$b;)[I

    move-result-object v0

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/k$b;->j()F

    move-result p1

    invoke-direct {p0, v0, p1}, Leu/chainfire/lumen/drivers/k;->q([IF)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Leu/chainfire/lumen/drivers/c$a;Leu/chainfire/lumen/drivers/c$a;I)[Ljava/lang/String;
    .locals 6

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_0

    invoke-virtual {p0, p2}, Leu/chainfire/lumen/drivers/k;->j(Leu/chainfire/lumen/drivers/c$a;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Leu/chainfire/lumen/drivers/k$b;->f()Leu/chainfire/lumen/drivers/k$b;

    move-result-object p1

    :cond_1
    check-cast p1, Leu/chainfire/lumen/drivers/k$b;

    check-cast p2, Leu/chainfire/lumen/drivers/k$b;

    invoke-direct {p0, p1}, Leu/chainfire/lumen/drivers/k;->o(Leu/chainfire/lumen/drivers/k$b;)[I

    move-result-object v0

    invoke-direct {p0, p2}, Leu/chainfire/lumen/drivers/k;->o(Leu/chainfire/lumen/drivers/k$b;)[I

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v5, v1, v3

    invoke-virtual {p0, v4, v5, p3}, Leu/chainfire/lumen/drivers/c;->g(III)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    aget v5, v1, v3

    invoke-virtual {p0, v4, v5, p3}, Leu/chainfire/lumen/drivers/c;->g(III)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    aget v4, v0, v3

    aget v5, v1, v3

    invoke-virtual {p0, v4, v5, p3}, Leu/chainfire/lumen/drivers/c;->g(III)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x3

    aget v0, v0, v3

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1, p3}, Leu/chainfire/lumen/drivers/c;->g(III)I

    move-result v0

    aput v0, v2, v3

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/k$b;->j()F

    move-result p1

    invoke-virtual {p2}, Leu/chainfire/lumen/drivers/k$b;->j()F

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Leu/chainfire/lumen/drivers/c;->d(FFI)F

    move-result p1

    invoke-direct {p0, v2, p1}, Leu/chainfire/lumen/drivers/k;->q([IF)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public m(Leu/chainfire/lumen/a$e;)Z
    .locals 2

    sget-object v0, Leu/chainfire/lumen/drivers/k$a;->a:[I

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

    sget-object v0, Leu/chainfire/lumen/drivers/k$a;->a:[I

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

.method public r(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "eu.chainfire.lumen.BROADCAST_ROOTLESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eu.chainfire.lumen.EXTRA_OVERLAY_ALLOWED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Leu/chainfire/lumen/drivers/k;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
