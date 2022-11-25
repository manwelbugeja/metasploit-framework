.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field public static final mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field public static final mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

.field private static poly3488:[I

.field private static poly4608:[I

.field private static poly6688:[I

.field private static poly6960:[I

.field private static poly8192:[I


# instance fields
.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field private final m:I

.field private final n:I

.field private final name:Ljava/lang/String;

.field private final poly:[I

.field private final t:I

.field private final usePivots:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    sput-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly3488:[I

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    const-string v2, "mceliece348864"

    const/16 v3, 0xc

    const/16 v4, 0xda0

    const/16 v5, 0x40

    const/4 v7, 0x0

    const/16 v8, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v14, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly3488:[I

    const-string v10, "mceliece348864f"

    const/16 v11, 0xc

    const/16 v12, 0xda0

    const/16 v13, 0x40

    const/4 v15, 0x1

    const/16 v16, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece348864fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    const-string v2, "mceliece460896"

    const/16 v3, 0xd

    const/16 v4, 0x1200

    const/16 v5, 0x60

    const/16 v8, 0xc0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v14, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly4608:[I

    const-string v10, "mceliece460896f"

    const/16 v11, 0xd

    const/16 v12, 0x1200

    const/16 v13, 0x60

    const/16 v16, 0xc0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece460896fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const-string v2, "mceliece6688128"

    const/16 v4, 0x1a20

    const/16 v5, 0x80

    const/16 v8, 0x100

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v14, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6688:[I

    const-string v10, "mceliece6688128f"

    const/16 v12, 0x1a20

    const/16 v13, 0x80

    const/16 v16, 0x100

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6688128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    const-string v2, "mceliece6960119"

    const/16 v4, 0x1b30

    const/16 v5, 0x77

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v14, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly6960:[I

    const-string v10, "mceliece6960119f"

    const/16 v12, 0x1b30

    const/16 v13, 0x77

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece6960119fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    const-string v2, "mceliece8192128"

    const/16 v4, 0x2000

    const/16 v5, 0x80

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128r3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v14, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly8192:[I

    const-string v10, "mceliece8192128f"

    const/16 v12, 0x2000

    const/16 v13, 0x80

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;-><init>(Ljava/lang/String;III[IZI)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->mceliece8192128fr3:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xa
        0x9
        0x6
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x2
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
        0x1
        0x0
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;III[IZI)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->m:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->n:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->poly:[I

    iput-boolean p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->defaultKeySize:I

    new-instance p1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;-><init>(III[IZI)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    return-void
.end method


# virtual methods
.method public getDefaultKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->defaultKeySize:I

    return v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    return-object v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->m:I

    return v0
.end method

.method public getMu()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNu()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->usePivots:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    return v0
.end method
