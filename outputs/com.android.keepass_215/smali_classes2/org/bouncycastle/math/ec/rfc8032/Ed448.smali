.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$Algorithm;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;
    }
.end annotation


# static fields
.field private static final B_x:[I

.field private static final B_y:[I

.field private static final COORD_INTS:I = 0xe

.field private static final C_d:I = -0x98a9

.field private static final DOM4_PREFIX:[B

.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x39

.field private static final PRECOMP_BLOCKS:I = 0x5

.field private static final PRECOMP_MASK:I = 0xf

.field private static final PRECOMP_POINTS:I = 0x10

.field private static final PRECOMP_RANGE:I = 0x1c2

.field private static final PRECOMP_SPACING:I = 0x12

.field private static final PRECOMP_TEETH:I = 0x5

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x39

.field private static final SCALAR_BYTES:I = 0x39

.field private static final SCALAR_INTS:I = 0xe

.field public static final SECRET_KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72

.field private static final WNAF_WIDTH_BASE:I = 0x7

.field private static precompBase:[I

.field private static precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

.field private static final precompLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    return-void

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_3
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_4
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .locals 4

    const/16 v0, 0x1c

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    const/16 p0, 0xe

    new-array v3, p0, [I

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    new-array p1, p0, [I

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    invoke-static {p0, v3, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->mulAddTo(I[I[I[I)I

    const/16 p0, 0x72

    new-array p0, p0, [B

    :goto_0
    if-ge v2, v0, :cond_0

    aget p1, v1, v2

    mul-int/lit8 p2, v2, 0x4

    invoke-static {p1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode32(I[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static checkContextVar([B)Z
    .locals 1

    if-eqz p0, :cond_0

    array-length p0, p0

    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkPoint([I[I)I
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->subOne([I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    return p0
.end method

.method private static checkPoint([I[I[I)I
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result p0

    return p0
.end method

.method private static checkPointVar([B)Z
    .locals 3

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe

    new-array v2, v0, [I

    invoke-static {p0, v1, v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI[III)V

    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static checkScalarVar([B[I)Z
    .locals 2

    const/16 v0, 0x38

    aget-byte v0, p0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    const/16 p0, 0xe

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static copy([BII)[B
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Xof;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    return-object v0
.end method

.method private static createXof()Lorg/bouncycastle/crypto/Xof;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

.method private static decode16([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode24([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z
    .locals 3

    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x38

    aget-byte v1, p0, p1

    and-int/lit16 v2, v1, 0x80

    ushr-int/lit8 v2, v2, 0x7

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->decode([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object p0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object p1

    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    const v1, 0x98a9

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {p0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    iget-object v1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqrtRatioVar([I[I[I)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    aget p1, p1, v0

    and-int/2addr p1, p0

    if-eq v2, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int p1, p2, v0

    if-eqz p1, :cond_4

    iget-object p1, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    :cond_4
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    return p0
.end method

.method private static decodeScalar([BI[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, p1, p2, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI[III)V

    return-void
.end method

.method private static dom4(Lorg/bouncycastle/crypto/Xof;B[B)V
    .locals 6

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    array-length v1, v0

    add-int/lit8 v2, v1, 0x2

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte p1, v4, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, p2

    int-to-byte p1, p1

    aput-byte p1, v4, v1

    array-length p1, p2

    invoke-static {p2, v5, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p0, v4, v5, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method private static encode24(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode32(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode56(J[BI)V
    .locals 1

    long-to-int v0, p0

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode32(I[BI)V

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit8 p3, p3, 0x4

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode24(I[BI)V

    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->inv([I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint([I[I)I

    move-result p0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([I[BI)V

    add-int/lit8 p2, p2, 0x39

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return p0
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    return-void
.end method

.method private static getWindow4([II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    shl-int/lit8 p1, p1, 0x2

    aget p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method private static getWnafVar([II)[B
    .locals 10

    const/16 v0, 0x1c

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe

    const/16 v4, 0x1c

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v3, v3, -0x1

    const/16 v6, 0x10

    if-ltz v3, :cond_0

    aget v7, p0, v3

    add-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v8, v7, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v5, v8

    aput v5, v1, v4

    add-int/lit8 v4, v4, -0x1

    aput v7, v1, v4

    move v5, v7

    goto :goto_0

    :cond_0
    const/16 p0, 0x1bf

    new-array p0, p0, [B

    rsub-int/lit8 v3, p1, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget v7, v1, v2

    :goto_2
    if-ge v4, v6, :cond_2

    ushr-int v8, v7, v4

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    or-int/lit8 v5, v8, 0x1

    shl-int/2addr v5, v3

    ushr-int/lit8 v8, v5, 0x1f

    shl-int/lit8 v9, v2, 0x4

    add-int/2addr v9, v4

    shr-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p0, v9

    add-int/2addr v4, p1

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, -0x10

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V
    .locals 4

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    const/16 v0, 0x39

    invoke-interface {p0, p1, v0, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object v1

    new-array v3, v0, [B

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    invoke-static {p0, p6, p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {p0, v3, v2, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p3, p4, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {p0, p7, p8, p9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length p3, p1

    invoke-interface {p0, p1, v2, p3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object p0

    invoke-static {v1, p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->calculateS([B[B[B)[B

    move-result-object p0

    invoke-static {v3, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p11, v0

    invoke-static {p0, v2, p10, p11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .locals 13

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v0, v3, [B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-array v5, v3, [B

    invoke-static {v0, v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, v5

    move v5, v6

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .locals 13

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    const/16 v0, 0x72

    new-array v2, v0, [B

    const/16 v3, 0x39

    move-object v4, p0

    move v5, p1

    invoke-interface {v1, p0, p1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    new-array v3, v3, [B

    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x39

    invoke-static {p0, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v5

    add-int/2addr v1, v4

    invoke-static {p0, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v0

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    return v6

    :cond_0
    const/16 v1, 0xe

    new-array v7, v1, [I

    invoke-static {v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkScalarVar([B[I)Z

    move-result v0

    if-nez v0, :cond_1

    return v6

    :cond_1
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v9, 0x1

    invoke-static {v2, v3, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z

    move-result v10

    if-nez v10, :cond_2

    return v6

    :cond_2
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v10

    const/16 v11, 0x72

    new-array v12, v11, [B

    move-object/from16 v13, p4

    move/from16 v14, p5

    invoke-static {v10, v14, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    invoke-interface {v10, v5, v6, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v10, v2, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v2, p6

    move/from16 v3, p7

    move/from16 v13, p8

    invoke-interface {v10, v2, v3, v13}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-interface {v10, v12, v6, v11}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->reduceScalar([B)[B

    move-result-object v2

    new-array v1, v1, [I

    invoke-static {v2, v6, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-direct {v2, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {v7, v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStrausVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    new-array v0, v4, [B

    invoke-static {v2, v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, v5}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isNeutralElementVar([I[I[I)Z
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->areEqualVar([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 10

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v8, 0x98a9

    invoke-static {v4, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v8, p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v7, v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 9

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v7, v8, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const v7, 0x98a9

    invoke-static {v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    invoke-static {v7, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v6, v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v6, p0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, p0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v4, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 13

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v7

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, v8, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    move-object v10, v1

    move-object v9, v4

    move-object v8, v5

    move-object p0, v6

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0, v8, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    move-object v9, v1

    move-object v10, v4

    move-object p0, v5

    move-object v8, v6

    :goto_0
    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v11, v12, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v12, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v11, v12, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v11, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p1, v11, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    invoke-static {v1, v4, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v1, v4, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v7, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v3, v2, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3, v2, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v7, v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v7, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v4, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v6, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    return-object v0
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0, v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 8

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v6, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    invoke-static {v4, v4, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, v5, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    return-void
.end method

.method private static pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;)V
    .locals 6

    const/16 v0, 0x10

    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 p0, p0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    xor-int v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    invoke-static {v3, v4, p0, v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/2addr p0, v0

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->y:[I

    invoke-static {v3, v4, p0, v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 5

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWindow4([II)I

    move-result p0

    ushr-int/lit8 p1, p0, 0x3

    xor-int/lit8 p1, p1, 0x1

    neg-int v0, p1

    xor-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    xor-int v3, v1, p0

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v3, p2, v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    return-void
.end method

.method private static pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/16 v1, 0x150

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    const/16 v1, 0x160

    invoke-static {p0, v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    const/16 v0, 0x170

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[I
    .locals 6

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    mul-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    iget-object v5, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v5, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_0
.end method

.method private static pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    new-array v1, p1, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v3

    aput-object v3, v1, p0

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->zero([I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    return-void
.end method

.method public static precompute()V
    .locals 16

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v3, v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointExtendXY(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v3, 0x20

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/16 v3, 0xa0

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v3

    sput-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_8

    new-array v7, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    new-instance v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-direct {v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v6, :cond_2

    invoke-static {v10, v1, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v11

    aput-object v11, v7, v9

    add-int v11, v3, v9

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    :goto_2
    const/16 v11, 0x12

    if-ge v10, v11, :cond_1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    new-array v9, v6, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    aput-object v8, v9, v5

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x4

    if-ge v8, v12, :cond_4

    shl-int v12, v10, v8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_3

    sub-int v14, v11, v12

    aget-object v14, v9, v14

    invoke-static {v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object v14

    aput-object v14, v9, v11

    aget-object v15, v7, v8

    invoke-static {v5, v15, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v8

    aget-object v11, v9, v5

    iget-object v11, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v11, v5, v8, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v8, v5, v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/4 v11, 0x0

    :goto_5
    add-int/2addr v11, v10

    if-ge v11, v6, :cond_5

    aget-object v12, v9, v11

    iget-object v12, v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v12, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    mul-int/lit8 v12, v11, 0x10

    invoke-static {v8, v5, v7, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    goto :goto_5

    :cond_5
    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->invVar([I[I)V

    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v10

    :goto_6
    if-lez v11, :cond_6

    add-int/lit8 v12, v11, -0x1

    mul-int/lit8 v13, v12, 0x10

    invoke-static {v7, v13, v10, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    invoke-static {v10, v8, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    mul-int/lit8 v13, v11, 0x10

    invoke-static {v10, v5, v7, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    aget-object v11, v9, v11

    iget-object v11, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v8, v11, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    move v11, v12

    goto :goto_6

    :cond_6
    invoke-static {v8, v5, v7, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_7

    aget-object v10, v9, v8

    mul-int/lit8 v11, v8, 0x10

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {v7, v11, v12, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v13, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {v11, v12, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    iget-object v13, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {v11, v12, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    sget-object v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    invoke-static {v11, v5, v12, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0x10

    iget-object v10, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBase:[I

    invoke-static {v10, v5, v11, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method

.method private static pruneScalar([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method private static reduceScalar([B)[B
    .locals 89

    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long/2addr v14, v4

    const/16 v9, 0x12

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v9

    shl-int/2addr v9, v6

    move-wide/from16 v16, v2

    int-to-long v1, v9

    and-long/2addr v1, v4

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v9

    move-wide/from16 v19, v7

    int-to-long v6, v9

    and-long/2addr v6, v4

    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v8

    const/4 v9, 0x4

    shl-int/2addr v8, v9

    move-wide/from16 v21, v10

    int-to-long v9, v8

    and-long/2addr v9, v4

    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    int-to-long v8, v11

    and-long/2addr v8, v4

    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v11

    const/16 v18, 0x4

    shl-int/lit8 v11, v11, 0x4

    int-to-long v10, v11

    and-long v25, v10, v4

    const/16 v11, 0x23

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    move-wide/from16 v27, v12

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x27

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v29, v14

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x2a

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v15

    move-wide/from16 v31, v11

    int-to-long v10, v15

    and-long v33, v10, v4

    const/16 v10, 0x2e

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    int-to-long v10, v10

    and-long v35, v10, v4

    const/16 v11, 0x31

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    int-to-long v11, v10

    and-long/2addr v11, v4

    const/16 v10, 0x35

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v37, v1

    int-to-long v1, v10

    and-long/2addr v1, v4

    const/16 v10, 0x38

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    move-wide/from16 v39, v6

    int-to-long v6, v10

    and-long/2addr v6, v4

    const/16 v10, 0x3c

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v41, v8

    int-to-long v8, v10

    and-long/2addr v8, v4

    const/16 v10, 0x3f

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v10

    move-wide/from16 v43, v13

    int-to-long v13, v10

    and-long/2addr v13, v4

    const/16 v10, 0x43

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v10

    shl-int/lit8 v10, v10, 0x4

    move-wide/from16 v45, v11

    int-to-long v10, v10

    and-long/2addr v10, v4

    const/16 v12, 0x46

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v47, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4a

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v49, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x4d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v51, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x51

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v53, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x54

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v55, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x58

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v57, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x5b

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v59, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x5f

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v61, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x62

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v63, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x66

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v65, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x69

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode32([BI)I

    move-result v12

    move-wide/from16 v67, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x6d

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    move-wide/from16 v69, v1

    int-to-long v1, v12

    and-long/2addr v1, v4

    const/16 v12, 0x70

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decode16([BI)I

    move-result v0

    move-wide/from16 v71, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    const-wide/32 v4, 0x29eec34

    mul-long v73, v0, v4

    add-long v6, v6, v73

    const-wide/32 v73, 0x1cf5b55

    mul-long v75, v0, v73

    add-long v8, v8, v75

    const-wide/32 v75, 0x9c2ab72

    mul-long v77, v0, v75

    add-long v13, v13, v77

    const-wide/32 v77, 0xf635c8e

    mul-long v79, v0, v77

    add-long v79, v10, v79

    const-wide/32 v11, 0x5bf7a4c

    mul-long v81, v0, v11

    add-long v49, v49, v81

    const-wide/32 v81, 0xd944a72

    mul-long v83, v0, v81

    add-long v51, v51, v83

    const-wide/32 v83, 0x8eec492

    mul-long v85, v0, v83

    add-long v53, v53, v85

    const-wide/32 v85, 0x20cd7705

    mul-long v0, v0, v85

    add-long v0, v55, v0

    const/16 v2, 0x1c

    ushr-long v55, v69, v2

    const/16 v2, 0x2a

    add-long v55, v71, v55

    const-wide/32 v71, 0xfffffff

    and-long v69, v69, v71

    mul-long v87, v55, v4

    add-long v47, v47, v87

    mul-long v87, v55, v73

    add-long v6, v6, v87

    mul-long v87, v55, v75

    add-long v8, v8, v87

    mul-long v87, v55, v77

    add-long v13, v13, v87

    mul-long v87, v55, v11

    add-long v79, v79, v87

    mul-long v87, v55, v81

    add-long v49, v49, v87

    mul-long v87, v55, v83

    add-long v51, v51, v87

    mul-long v55, v55, v85

    add-long v53, v53, v55

    mul-long v55, v69, v4

    add-long v45, v45, v55

    mul-long v55, v69, v73

    add-long v47, v47, v55

    mul-long v55, v69, v75

    add-long v6, v6, v55

    mul-long v55, v69, v77

    add-long v8, v8, v55

    mul-long v55, v69, v11

    add-long v13, v13, v55

    mul-long v55, v69, v81

    add-long v79, v79, v55

    mul-long v55, v69, v83

    add-long v49, v49, v55

    mul-long v69, v69, v85

    add-long v51, v51, v69

    const/16 v10, 0x1c

    ushr-long v55, v65, v10

    add-long v55, v67, v55

    and-long v65, v65, v71

    mul-long v67, v55, v4

    add-long v35, v35, v67

    mul-long v67, v55, v73

    add-long v45, v45, v67

    mul-long v67, v55, v75

    add-long v47, v47, v67

    mul-long v67, v55, v77

    add-long v6, v6, v67

    mul-long v67, v55, v11

    add-long v8, v8, v67

    mul-long v67, v55, v81

    add-long v13, v13, v67

    mul-long v67, v55, v83

    add-long v79, v79, v67

    mul-long v55, v55, v85

    add-long v49, v49, v55

    mul-long v55, v65, v4

    add-long v33, v33, v55

    mul-long v55, v65, v73

    add-long v35, v35, v55

    mul-long v55, v65, v75

    add-long v45, v45, v55

    mul-long v55, v65, v77

    add-long v47, v47, v55

    mul-long v55, v65, v11

    add-long v6, v6, v55

    mul-long v55, v65, v81

    add-long v8, v8, v55

    mul-long v55, v65, v83

    add-long v13, v13, v55

    mul-long v65, v65, v85

    add-long v79, v79, v65

    const/16 v10, 0x1c

    ushr-long v55, v61, v10

    add-long v55, v63, v55

    and-long v61, v61, v71

    mul-long v63, v55, v4

    add-long v43, v43, v63

    mul-long v63, v55, v73

    add-long v33, v33, v63

    mul-long v63, v55, v75

    add-long v35, v35, v63

    mul-long v63, v55, v77

    add-long v45, v45, v63

    mul-long v63, v55, v11

    add-long v47, v47, v63

    mul-long v63, v55, v81

    add-long v6, v6, v63

    mul-long v63, v55, v83

    add-long v8, v8, v63

    mul-long v55, v55, v85

    add-long v13, v13, v55

    mul-long v55, v61, v4

    add-long v31, v31, v55

    mul-long v55, v61, v73

    add-long v43, v43, v55

    mul-long v55, v61, v75

    add-long v33, v33, v55

    mul-long v55, v61, v77

    add-long v35, v35, v55

    mul-long v55, v61, v11

    add-long v45, v45, v55

    mul-long v55, v61, v81

    add-long v47, v47, v55

    mul-long v55, v61, v83

    add-long v6, v6, v55

    mul-long v61, v61, v85

    add-long v8, v8, v61

    const/16 v10, 0x1c

    ushr-long v55, v57, v10

    add-long v55, v59, v55

    and-long v57, v57, v71

    mul-long v59, v55, v4

    add-long v25, v25, v59

    mul-long v59, v55, v73

    add-long v31, v31, v59

    mul-long v59, v55, v75

    add-long v43, v43, v59

    mul-long v59, v55, v77

    add-long v33, v33, v59

    mul-long v59, v55, v11

    add-long v35, v35, v59

    mul-long v59, v55, v81

    add-long v45, v45, v59

    mul-long v59, v55, v83

    add-long v47, v47, v59

    mul-long v55, v55, v85

    add-long v6, v6, v55

    const/16 v10, 0x1c

    ushr-long v55, v49, v10

    add-long v51, v51, v55

    and-long v49, v49, v71

    ushr-long v55, v51, v10

    add-long v53, v53, v55

    and-long v51, v51, v71

    ushr-long v55, v53, v10

    add-long v0, v0, v55

    and-long v53, v53, v71

    ushr-long v55, v0, v10

    add-long v57, v57, v55

    and-long v0, v0, v71

    mul-long v55, v57, v4

    add-long v41, v41, v55

    mul-long v55, v57, v73

    add-long v25, v25, v55

    mul-long v55, v57, v75

    add-long v31, v31, v55

    mul-long v55, v57, v77

    add-long v43, v43, v55

    mul-long v55, v57, v11

    add-long v33, v33, v55

    mul-long v55, v57, v81

    add-long v35, v35, v55

    mul-long v55, v57, v83

    add-long v45, v45, v55

    mul-long v57, v57, v85

    add-long v47, v47, v57

    mul-long v55, v0, v4

    add-long v23, v23, v55

    mul-long v55, v0, v73

    add-long v41, v41, v55

    mul-long v55, v0, v75

    add-long v25, v25, v55

    mul-long v55, v0, v77

    add-long v31, v31, v55

    mul-long v55, v0, v11

    add-long v43, v43, v55

    mul-long v55, v0, v81

    add-long v33, v33, v55

    mul-long v55, v0, v83

    add-long v35, v35, v55

    mul-long v0, v0, v85

    add-long v45, v45, v0

    mul-long v0, v53, v4

    add-long v0, v39, v0

    mul-long v39, v53, v73

    add-long v23, v23, v39

    mul-long v39, v53, v75

    add-long v41, v41, v39

    mul-long v39, v53, v77

    add-long v25, v25, v39

    mul-long v39, v53, v11

    add-long v31, v31, v39

    mul-long v39, v53, v81

    add-long v43, v43, v39

    mul-long v39, v53, v83

    add-long v33, v33, v39

    mul-long v53, v53, v85

    add-long v35, v35, v53

    const/16 v10, 0x1c

    ushr-long v39, v8, v10

    add-long v13, v13, v39

    and-long v8, v8, v71

    ushr-long v39, v13, v10

    add-long v79, v79, v39

    and-long v13, v13, v71

    ushr-long v39, v79, v10

    add-long v49, v49, v39

    and-long v39, v79, v71

    ushr-long v53, v49, v10

    add-long v51, v51, v53

    and-long v49, v49, v71

    mul-long v53, v51, v4

    add-long v37, v37, v53

    mul-long v53, v51, v73

    add-long v0, v0, v53

    mul-long v53, v51, v75

    add-long v23, v23, v53

    mul-long v53, v51, v77

    add-long v41, v41, v53

    mul-long v53, v51, v11

    add-long v25, v25, v53

    mul-long v53, v51, v81

    add-long v31, v31, v53

    mul-long v53, v51, v83

    add-long v43, v43, v53

    mul-long v51, v51, v85

    add-long v33, v33, v51

    mul-long v51, v49, v4

    add-long v29, v29, v51

    mul-long v51, v49, v73

    add-long v37, v37, v51

    mul-long v51, v49, v75

    add-long v0, v0, v51

    mul-long v51, v49, v77

    add-long v23, v23, v51

    mul-long v51, v49, v11

    add-long v41, v41, v51

    mul-long v51, v49, v81

    add-long v25, v25, v51

    mul-long v51, v49, v83

    add-long v31, v31, v51

    mul-long v49, v49, v85

    add-long v43, v43, v49

    mul-long v49, v39, v4

    add-long v27, v27, v49

    mul-long v49, v39, v73

    add-long v29, v29, v49

    mul-long v49, v39, v75

    add-long v37, v37, v49

    mul-long v49, v39, v77

    add-long v0, v0, v49

    mul-long v49, v39, v11

    add-long v23, v23, v49

    mul-long v49, v39, v81

    add-long v41, v41, v49

    mul-long v49, v39, v83

    add-long v25, v25, v49

    mul-long v39, v39, v85

    add-long v31, v31, v39

    const/16 v10, 0x1c

    ushr-long v39, v45, v10

    add-long v47, v47, v39

    and-long v39, v45, v71

    ushr-long v45, v47, v10

    add-long v6, v6, v45

    and-long v45, v47, v71

    ushr-long v47, v6, v10

    add-long v8, v8, v47

    and-long v6, v6, v71

    ushr-long v47, v8, v10

    add-long v13, v13, v47

    and-long v8, v8, v71

    mul-long v47, v13, v4

    add-long v21, v21, v47

    mul-long v47, v13, v73

    add-long v27, v27, v47

    mul-long v47, v13, v75

    add-long v29, v29, v47

    mul-long v47, v13, v77

    add-long v37, v37, v47

    mul-long v47, v13, v11

    add-long v0, v0, v47

    mul-long v47, v13, v81

    add-long v23, v23, v47

    mul-long v47, v13, v83

    add-long v41, v41, v47

    mul-long v13, v13, v85

    add-long v25, v25, v13

    mul-long v4, v4, v8

    add-long v4, v19, v4

    mul-long v73, v73, v8

    add-long v21, v21, v73

    mul-long v75, v75, v8

    add-long v27, v27, v75

    mul-long v77, v77, v8

    add-long v29, v29, v77

    mul-long v11, v11, v8

    add-long v37, v37, v11

    mul-long v81, v81, v8

    add-long v0, v0, v81

    mul-long v83, v83, v8

    add-long v23, v23, v83

    mul-long v8, v8, v85

    add-long v41, v41, v8

    const-wide/16 v8, 0x4

    mul-long v6, v6, v8

    const/16 v8, 0x1a

    ushr-long v11, v45, v8

    add-long/2addr v6, v11

    const-wide/32 v11, 0x3ffffff

    and-long v13, v45, v11

    const-wide/16 v18, 0x1

    add-long v6, v6, v18

    const-wide/32 v45, 0x4a7bb0d

    mul-long v45, v45, v6

    add-long v16, v16, v45

    const-wide/32 v45, 0x873d6d5

    mul-long v45, v45, v6

    add-long v4, v4, v45

    const-wide/32 v45, 0xa70aadc

    mul-long v45, v45, v6

    add-long v21, v21, v45

    const-wide/32 v45, 0x3d8d723

    mul-long v45, v45, v6

    add-long v27, v27, v45

    const-wide/32 v45, 0x96fde93

    mul-long v45, v45, v6

    add-long v29, v29, v45

    const-wide/32 v45, 0xb65129c

    mul-long v45, v45, v6

    add-long v37, v37, v45

    const-wide/32 v45, 0x63bb124

    mul-long v45, v45, v6

    add-long v0, v0, v45

    const-wide/32 v45, 0x8335dc1

    mul-long v6, v6, v45

    add-long v23, v23, v6

    const/16 v6, 0x1c

    ushr-long v9, v16, v6

    add-long/2addr v4, v9

    and-long v16, v16, v71

    ushr-long v9, v4, v6

    add-long v21, v21, v9

    and-long v4, v4, v71

    ushr-long v9, v21, v6

    add-long v27, v27, v9

    and-long v21, v21, v71

    ushr-long v9, v27, v6

    add-long v29, v29, v9

    and-long v27, v27, v71

    ushr-long v9, v29, v6

    add-long v37, v37, v9

    and-long v29, v29, v71

    ushr-long v9, v37, v6

    add-long/2addr v0, v9

    and-long v37, v37, v71

    ushr-long v9, v0, v6

    add-long v23, v23, v9

    and-long v0, v0, v71

    ushr-long v9, v23, v6

    add-long v41, v41, v9

    and-long v23, v23, v71

    ushr-long v9, v41, v6

    add-long v25, v25, v9

    and-long v41, v41, v71

    ushr-long v9, v25, v6

    add-long v31, v31, v9

    and-long v25, v25, v71

    ushr-long v9, v31, v6

    add-long v43, v43, v9

    and-long v31, v31, v71

    ushr-long v9, v43, v6

    add-long v33, v33, v9

    and-long v43, v43, v71

    ushr-long v9, v33, v6

    add-long v35, v35, v9

    and-long v33, v33, v71

    ushr-long v9, v35, v6

    add-long v39, v39, v9

    and-long v35, v35, v71

    ushr-long v45, v39, v6

    add-long v13, v13, v45

    and-long v6, v39, v71

    ushr-long v8, v13, v8

    and-long/2addr v11, v13

    sub-long v8, v8, v18

    const-wide/32 v13, 0x4a7bb0d

    and-long/2addr v13, v8

    sub-long v16, v16, v13

    const-wide/32 v13, 0x873d6d5

    and-long/2addr v13, v8

    sub-long/2addr v4, v13

    const-wide/32 v13, 0xa70aadc

    and-long/2addr v13, v8

    sub-long v21, v21, v13

    const-wide/32 v13, 0x3d8d723

    and-long/2addr v13, v8

    sub-long v27, v27, v13

    const-wide/32 v13, 0x96fde93

    and-long/2addr v13, v8

    sub-long v29, v29, v13

    const-wide/32 v13, 0xb65129c

    and-long/2addr v13, v8

    sub-long v37, v37, v13

    const-wide/32 v13, 0x63bb124

    and-long/2addr v13, v8

    sub-long/2addr v0, v13

    const-wide/32 v13, 0x8335dc1

    and-long/2addr v8, v13

    sub-long v23, v23, v8

    const/16 v8, 0x1c

    shr-long v9, v16, v8

    add-long/2addr v4, v9

    and-long v9, v16, v71

    shr-long v13, v4, v8

    add-long v21, v21, v13

    and-long v4, v4, v71

    shr-long v13, v21, v8

    add-long v27, v27, v13

    and-long v13, v21, v71

    shr-long v16, v27, v8

    add-long v29, v29, v16

    and-long v16, v27, v71

    shr-long v18, v29, v8

    add-long v37, v37, v18

    and-long v18, v29, v71

    shr-long v20, v37, v8

    add-long v0, v0, v20

    and-long v20, v37, v71

    shr-long v27, v0, v8

    add-long v23, v23, v27

    and-long v0, v0, v71

    shr-long v27, v23, v8

    add-long v41, v41, v27

    and-long v23, v23, v71

    shr-long v27, v41, v8

    add-long v25, v25, v27

    and-long v27, v41, v71

    shr-long v29, v25, v8

    add-long v31, v31, v29

    and-long v25, v25, v71

    shr-long v29, v31, v8

    add-long v43, v43, v29

    and-long v29, v31, v71

    shr-long v31, v43, v8

    add-long v33, v33, v31

    and-long v31, v43, v71

    shr-long v37, v33, v8

    add-long v35, v35, v37

    and-long v33, v33, v71

    shr-long v37, v35, v8

    add-long v6, v6, v37

    and-long v35, v35, v71

    shr-long v37, v6, v8

    add-long v11, v11, v37

    and-long v6, v6, v71

    const/16 v15, 0x39

    new-array v15, v15, [B

    shl-long/2addr v4, v8

    or-long/2addr v4, v9

    const/4 v9, 0x0

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v4, v16, v8

    or-long/2addr v4, v13

    const/4 v9, 0x7

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v4, v20, v8

    or-long v4, v18, v4

    const/16 v9, 0xe

    invoke-static {v4, v5, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v4, v23, v8

    or-long/2addr v0, v4

    invoke-static {v0, v1, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v0, v25, v8

    or-long v0, v27, v0

    invoke-static {v0, v1, v15, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v0, v31, v8

    or-long v0, v29, v0

    const/16 v3, 0x23

    invoke-static {v0, v1, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v0, v35, v8

    or-long v0, v33, v0

    invoke-static {v0, v1, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    shl-long v0, v11, v8

    or-long/2addr v0, v6

    const/16 v2, 0x31

    invoke-static {v0, v1, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encode56(J[BI)V

    return-object v15
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 5

    const/16 v0, 0xe

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    aget p0, v1, v2

    xor-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, 0x1

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    invoke-static {v0, p0, v1, v3, v1}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result p0

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    const/16 p0, 0x8

    invoke-static {p1, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[I

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 p1, 0x6f

    :cond_0
    invoke-static {v1, p1, p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 12

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodeScalar([BI[I)V

    aget p0, v1, v2

    xor-int/lit8 p0, p0, -0x1

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    const/16 v5, 0xe

    invoke-static {v5, p0, v1, v4, v1}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    aput p0, v1, v5

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v4, 0x11

    :goto_0
    move v6, v4

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    ushr-int/lit8 v10, v6, 0x5

    aget v10, v1, v10

    and-int/lit8 v11, v6, 0x1f

    ushr-int/2addr v10, v11

    shl-int v11, v3, v8

    xor-int/lit8 v11, v11, -0x1

    and-int/2addr v9, v11

    shl-int/2addr v10, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v3

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;)V

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;->x:[I

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddPrecomp(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_0
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static scalarMultBaseXY(Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;[BI[I[I)V
    .locals 1

    if-eqz p0, :cond_1

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    new-instance p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0, p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    iget-object p0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0, p2, p4, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "This method is only for use by X448"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 5

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->L:[I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWnafVar([II)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v1, 0x1be

    :goto_0
    aget-byte v2, v0, v1

    if-eqz v2, :cond_1

    shr-int/lit8 v3, v2, 0x1f

    xor-int/2addr v2, v3

    const/4 v4, 0x1

    ushr-int/2addr v2, v4

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    aget-object v2, p0, v2

    invoke-static {v4, v2, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_0
.end method

.method private static scalarMultStrausVar([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V
    .locals 6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWnafVar([II)[B

    move-result-object p0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWnafVar([II)[B

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecomputeVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;I)[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    move-result-object p2

    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    const/16 v0, 0x1be

    :goto_0
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompBaseTable:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    aget-object v1, v5, v1

    invoke-static {v4, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    :cond_1
    aget-byte v1, p1, v0

    if-eqz v1, :cond_3

    shr-int/lit8 v4, v1, 0x1f

    xor-int/2addr v1, v4

    ushr-int/2addr v1, v3

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    aget-object v1, p2, v1

    invoke-static {v2, v1, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    return-void

    :cond_4
    invoke-static {p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    goto :goto_0
.end method

.method public static sign([BI[BI[B[BII[BI)V
    .locals 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static sign([BI[B[BII[BI)V
    .locals 9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 12

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    move-object/from16 v2, p5

    invoke-interface {v2, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signPrehash([BI[BI[B[BI[BI)V
    .locals 11

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 10

    const/16 v0, 0x40

    new-array v5, v0, [B

    const/4 v1, 0x0

    invoke-interface {p3, v5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p3

    if-ne v0, p3, :cond_0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move v9, p5

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[B[BI[BI)V
    .locals 9

    const/4 v3, 0x1

    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    return-void
.end method

.method public static validatePublicKeyFull([BI)Z
    .locals 4

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z

    move-result p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    iget-object p0, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p0, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p0, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p0, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object p1, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p0, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->isNeutralElementVar([I[I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    invoke-static {v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    iget-object p1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->x:[I

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->y:[I

    iget-object p0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;->z:[I

    invoke-static {p1, v0, p0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->isNeutralElementVar([I[I[I)Z

    move-result p0

    return p0
.end method

.method public static validatePublicKeyPartial([BI)Z
    .locals 2

    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$1;)V

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BIZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointExt;)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[B[BII)Z
    .locals 9

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result v0

    return v0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 10

    const/16 v0, 0x40

    new-array v7, v0, [B

    const/4 v1, 0x0

    invoke-interface {p5, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result p5

    if-ne v0, p5, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x40

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BI[BI[B[BI)Z
    .locals 9

    const/4 v5, 0x1

    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method
