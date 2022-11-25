.class public Lcom/keepassdroid/crypto/keyDerivation/AesKdf;
.super Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;
.source "AesKdf.java"


# static fields
.field public static final CIPHER_UUID:Ljava/util/UUID;

.field public static final ParamRounds:Ljava/lang/String; = "R"

.field public static final ParamSeed:Ljava/lang/String; = "S"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->CIPHER_UUID:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        -0x37t
        -0x27t
        -0xdt
        -0x66t
        0x62t
        -0x76t
        0x44t
        0x60t
        -0x41t
        0x74t
        0xdt
        0x8t
        -0x3ft
        -0x76t
        0x4ft
        -0x16t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;-><init>()V

    .line 42
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->CIPHER_UUID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->uuid:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
    .locals 4

    .line 47
    invoke-super {p0}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    const-string v1, "R"

    const-wide/16 v2, 0x1770

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt32(Ljava/lang/String;J)V

    return-object v0
.end method

.method public randomize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V
    .locals 2

    .line 72
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 75
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "S"

    .line 77
    invoke-virtual {p1, v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public transform([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "R"

    .line 55
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getUInt64(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "S"

    .line 56
    invoke-virtual {p2, v2}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 58
    array-length v2, p1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 59
    invoke-static {p1}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([B)[B

    move-result-object p1

    .line 62
    :cond_0
    array-length v2, p2

    if-eq v2, v3, :cond_1

    .line 63
    invoke-static {p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([B)[B

    move-result-object p2

    .line 66
    :cond_1
    invoke-static {}, Lcom/keepassdroid/crypto/finalkey/FinalKeyFactory;->createFinalKey()Lcom/keepassdroid/crypto/finalkey/FinalKey;

    move-result-object v2

    .line 67
    invoke-virtual {v2, p2, p1, v0, v1}, Lcom/keepassdroid/crypto/finalkey/FinalKey;->transformMasterKey([B[BJ)[B

    move-result-object p1

    return-object p1
.end method
