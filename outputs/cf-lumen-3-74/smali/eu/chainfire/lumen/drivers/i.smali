.class Leu/chainfire/lumen/drivers/i;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(I)[D
    .locals 17

    move/from16 v0, p0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const-wide v8, 0x4050800000000000L    # 66.0

    cmpg-double v10, v0, v8

    if-gtz v10, :cond_1

    const-wide v4, 0x406fe00000000000L    # 255.0

    goto :goto_0

    :cond_1
    const-wide v11, 0x40749b2dfcd49634L    # 329.698727446

    sub-double v13, v0, v6

    const-wide v4, -0x403ef3257dc83fbbL    # -0.1332047592

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v11

    :goto_0
    if-gtz v10, :cond_2

    const-wide v6, 0x4058de21a12b8afeL    # 99.4708025861

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double v10, v10, v6

    const-wide v6, 0x406423d3809e615aL    # 161.1195681661

    sub-double/2addr v10, v6

    goto :goto_1

    :cond_2
    const-wide v10, 0x407201f4680909dcL    # 288.1221695283

    sub-double v6, v0, v6

    const-wide v12, -0x404cab0f1052d94dL    # -0.0755148492

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v10, v10, v6

    :goto_1
    cmpl-double v6, v0, v8

    if-ltz v6, :cond_3

    const-wide v15, 0x406fe00000000000L    # 255.0

    goto :goto_2

    :cond_3
    const-wide v6, 0x406150914111eaa4L    # 138.5177312231

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, v6

    const-wide v2, 0x407310b778951748L    # 305.0447927307

    sub-double/2addr v0, v2

    move-wide v15, v0

    :goto_2
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v10, v0, v1

    const/4 v1, 0x2

    aput-wide v15, v0, v1

    return-object v0
.end method

.method public static b(I)[I
    .locals 8

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->a(I)[D

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const-wide v4, 0x4060101010101010L    # 128.50196078431372

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    const v2, 0x8000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x1

    aget-wide v6, p0, v3

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v0, v3

    const/4 v3, 0x2

    aget-wide v6, p0, v3

    mul-double v6, v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p0, v4

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v0, v3

    return-object v0
.end method

.method public static c(I)[I
    .locals 6

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->a(I)[D

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v3, v2

    const/16 v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v1

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v0, v3

    const/4 v3, 0x2

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p0, v4

    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v0, v3

    return-object v0
.end method
