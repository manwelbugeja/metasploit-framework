.class public Leu/chainfire/lumen/drivers/ControlSetting;
.super Leu/chainfire/lumen/drivers/c$a;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leu/chainfire/lumen/drivers/ControlSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:[F

.field b:F

.field c:Z

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting$a;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting$a;-><init>()V

    sput-object v0, Leu/chainfire/lumen/drivers/ControlSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->d:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/c$a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v1, 0x0

    iput v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iput-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    new-array v2, v0, [F

    iput-object v2, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Leu/chainfire/lumen/drivers/ControlSetting$a;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static c()Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, v0, v0}, Leu/chainfire/lumen/drivers/ControlSetting;->j(III)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    return-object v0
.end method

.method public static d(Z)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 1

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    iput-boolean p0, v0, Leu/chainfire/lumen/drivers/ControlSetting;->d:Z

    return-object v0
.end method

.method public static e()Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3e991687    # 0.299f
        0x3e991687    # 0.299f
        0x3e991687    # 0.299f
        0x0
        0x3f1645a2    # 0.587f
        0x3f1645a2    # 0.587f
        0x3f1645a2    # 0.587f
        0x0
        0x3de978d5    # 0.114f
        0x3de978d5    # 0.114f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static f(FFF)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 4

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->e()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    iget-object v1, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    mul-float v3, v3, p0

    aput v3, v1, v2

    const/4 v2, 0x4

    aget v3, v1, v2

    mul-float v3, v3, p0

    aput v3, v1, v2

    const/16 v2, 0x8

    aget v3, v1, v2

    mul-float v3, v3, p0

    aput v3, v1, v2

    const/4 p0, 0x1

    aget v2, v1, p0

    mul-float v2, v2, p1

    aput v2, v1, p0

    const/4 p0, 0x5

    aget v2, v1, p0

    mul-float v2, v2, p1

    aput v2, v1, p0

    const/16 p0, 0x9

    aget v2, v1, p0

    mul-float v2, v2, p1

    aput v2, v1, p0

    const/4 p0, 0x2

    aget p1, v1, p0

    mul-float p1, p1, p2

    aput p1, v1, p0

    const/4 p0, 0x6

    aget p1, v1, p0

    mul-float p1, p1, p2

    aput p1, v1, p0

    const/16 p0, 0xa

    aget p1, v1, p0

    mul-float p1, p1, p2

    aput p1, v1, p0

    return-object v0
.end method

.method public static g()Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static h(I)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 3

    invoke-static {p0}, Leu/chainfire/lumen/drivers/i;->b(I)[I

    move-result-object p0

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget p0, p0, v2

    invoke-static {v0, v1, p0}, Leu/chainfire/lumen/drivers/ControlSetting;->i(III)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p0

    return-object p0
.end method

.method public static i(III)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 1

    const v0, 0x8000

    invoke-static {p0, p1, p2, v0}, Leu/chainfire/lumen/drivers/ControlSetting;->k(IIII)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p0

    return-object p0
.end method

.method public static j(III)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 1

    const/16 v0, 0xff

    invoke-static {p0, p1, p2, v0}, Leu/chainfire/lumen/drivers/ControlSetting;->l(IIII)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object p0

    return-object p0
.end method

.method public static k(IIII)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    int-to-float p3, p3

    const/high16 v1, 0x47000000    # 32768.0f

    div-float/2addr p3, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    mul-float p0, p0, p3

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, p3

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float p2, p2, p3

    const/16 p3, 0x10

    new-array p3, p3, [F

    const/4 v1, 0x0

    aput p0, p3, v1

    const/4 p0, 0x1

    const/4 v1, 0x0

    aput v1, p3, p0

    const/4 p0, 0x2

    aput v1, p3, p0

    const/4 p0, 0x3

    aput v1, p3, p0

    const/4 p0, 0x4

    aput v1, p3, p0

    const/4 p0, 0x5

    aput p1, p3, p0

    const/4 p0, 0x6

    aput v1, p3, p0

    const/4 p0, 0x7

    aput v1, p3, p0

    const/16 p0, 0x8

    aput v1, p3, p0

    const/16 p0, 0x9

    aput v1, p3, p0

    const/16 p0, 0xa

    aput p2, p3, p0

    const/16 p0, 0xb

    aput v1, p3, p0

    const/16 p0, 0xc

    aput v1, p3, p0

    const/16 p0, 0xd

    aput v1, p3, p0

    const/16 p0, 0xe

    aput v1, p3, p0

    const/16 p0, 0xf

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p3, p0

    iput-object p3, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    return-object v0
.end method

.method public static l(IIII)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/ControlSetting;

    invoke-direct {v0}, Leu/chainfire/lumen/drivers/ControlSetting;-><init>()V

    int-to-float p3, p3

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    mul-float p0, p0, p3

    int-to-float p1, p1

    div-float/2addr p1, v1

    mul-float p1, p1, p3

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float p2, p2, p3

    const/16 p3, 0x10

    new-array p3, p3, [F

    const/4 v1, 0x0

    aput p0, p3, v1

    const/4 p0, 0x1

    const/4 v1, 0x0

    aput v1, p3, p0

    const/4 p0, 0x2

    aput v1, p3, p0

    const/4 p0, 0x3

    aput v1, p3, p0

    const/4 p0, 0x4

    aput v1, p3, p0

    const/4 p0, 0x5

    aput p1, p3, p0

    const/4 p0, 0x6

    aput v1, p3, p0

    const/4 p0, 0x7

    aput v1, p3, p0

    const/16 p0, 0x8

    aput v1, p3, p0

    const/16 p0, 0x9

    aput v1, p3, p0

    const/16 p0, 0xa

    aput p2, p3, p0

    const/16 p0, 0xb

    aput v1, p3, p0

    const/16 p0, 0xc

    aput v1, p3, p0

    const/16 p0, 0xd

    aput v1, p3, p0

    const/16 p0, 0xe

    aput v1, p3, p0

    const/16 p0, 0xf

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, p3, p0

    iput-object p3, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    return-object v0
.end method

.method public static m(I)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 8

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->e()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v0

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Leu/chainfire/lumen/drivers/ControlSetting;->j(III)Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v1

    invoke-static {}, Leu/chainfire/lumen/drivers/ControlSetting;->c()Leu/chainfire/lumen/drivers/ControlSetting;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    iget-object v4, v2, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    iget-object v5, v0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v6, v5, v3

    iget-object v7, v1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v7, v7, v3

    aget v5, v5, v3

    sub-float/2addr v7, v5

    int-to-float v5, p0

    mul-float v7, v7, v5

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Leu/chainfire/lumen/drivers/ControlSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Leu/chainfire/lumen/drivers/ControlSetting;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v3, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-eqz v3, :cond_4

    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v3, v3, v0

    iget-object v4, p1, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v4, v4, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    iget v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    iget v3, p1, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    iget-boolean p1, p1, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    if-ne v0, p1, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public n(Leu/chainfire/lumen/drivers/m$g;)[F
    .locals 11

    iget-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x10

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xc

    const/4 v6, 0x3

    if-ge v3, v0, :cond_2

    rem-int/lit8 v7, v3, 0x4

    if-ge v7, v6, :cond_1

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v5, v5, v3

    iget v6, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    sub-float/2addr v4, v6

    mul-float v5, v5, v4

    aput v5, v1, v3

    goto :goto_1

    :cond_1
    iget-object v4, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v4, v4, v3

    aput v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_8

    sget-object v0, Leu/chainfire/lumen/drivers/m$g;->c:Leu/chainfire/lumen/drivers/m$g;

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    :goto_2
    if-ge p1, v5, :cond_4

    rem-int/lit8 v0, p1, 0x4

    if-ge v0, v6, :cond_3

    aget v0, v1, p1

    float-to-double v7, v0

    const-wide v9, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v0, v7

    aput v0, v1, p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, -0x1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_6

    rem-int/lit8 v3, v0, 0x4

    if-ge v3, v6, :cond_5

    aget v3, v1, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    move p1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ltz p1, :cond_8

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v5, :cond_4

    rem-int/lit8 v3, v0, 0x4

    if-ge v3, v6, :cond_7

    aget v3, v1, v0

    aget v7, v1, p1

    div-float/2addr v3, v7

    aput v3, v1, v0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    return-object v1
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    return v0
.end method

.method public p()[F
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v0, :cond_0

    iget v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->d:Z

    return v0
.end method

.method public s(F)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    return-object p0
.end method

.method public t(Z)Leu/chainfire/lumen/drivers/ControlSetting;
    .locals 0

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    if-nez v0, :cond_0

    iget v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const-string v0, "SURF --> OFF"

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v3, 0x11

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v4, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v3, v2

    iget-object v1, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v3, v2

    const/16 v1, 0x10

    iget-object v4, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget v2, v4, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "SURF --> DARKEN:%.3f MATRIX\nSURF %.3f %.3f %.3f %.3f\nSURF %.3f %.3f %.3f %.3f\nSURF %.3f %.3f %.3f %.3f\nSURF %.3f %.3f %.3f %.3f\n"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "SURF --> DARKEN:%.3f"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    const/16 p2, 0x10

    if-ge v0, p2, :cond_1

    iget-object p2, p0, Leu/chainfire/lumen/drivers/ControlSetting;->a:[F

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Leu/chainfire/lumen/drivers/ControlSetting;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Leu/chainfire/lumen/drivers/ControlSetting;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
