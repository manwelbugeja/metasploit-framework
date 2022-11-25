.class public Leu/chainfire/lumen/b/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Leu/chainfire/lumen/b/a;

.field private final b:J

.field private final c:Ljava/util/Date;

.field private final d:I

.field private final e:F


# direct methods
.method public constructor <init>(FF)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Leu/chainfire/lumen/b/b;->b:J

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Leu/chainfire/lumen/b/b;->c:Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/b/b;->d:I

    int-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    iput v0, p0, Leu/chainfire/lumen/b/b;->e:F

    new-instance v1, Leu/chainfire/lumen/b/a;

    float-to-double v3, p1

    float-to-double v5, p2

    float-to-double v8, v0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Leu/chainfire/lumen/b/a;-><init>(DDLjava/util/Date;D)V

    iput-object v1, p0, Leu/chainfire/lumen/b/b;->a:Leu/chainfire/lumen/b/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Date;
    .locals 6

    iget-object v0, p0, Leu/chainfire/lumen/b/b;->a:Leu/chainfire/lumen/b/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/b/a;->b()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Leu/chainfire/lumen/b/b;->d:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public b()Ljava/util/Date;
    .locals 6

    iget-object v0, p0, Leu/chainfire/lumen/b/b;->a:Leu/chainfire/lumen/b/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/b/a;->c()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget v0, p0, Leu/chainfire/lumen/b/b;->d:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/b/b;->a:Leu/chainfire/lumen/b/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/b/a;->d()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/b/b;->a:Leu/chainfire/lumen/b/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/b/a;->e()Z

    move-result v0

    return v0
.end method
