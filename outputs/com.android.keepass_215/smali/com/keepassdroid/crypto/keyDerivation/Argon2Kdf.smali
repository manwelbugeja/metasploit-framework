.class public Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;
.super Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;
.source "Argon2Kdf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;
    }
.end annotation


# static fields
.field public static final CIPHER_UUID_D:Ljava/util/UUID;

.field public static final CIPHER_UUID_ID:Ljava/util/UUID;

.field private static final DefaultIterations:J = 0x2L

.field private static final DefaultMemory:J = 0x100000L

.field private static final DefaultParallelism:J = 0x2L

.field private static final MaxIterations:J = 0xffffffffL

.field private static final MaxMemory:J = 0x7fffffffL

.field private static final MaxParallelism:I = 0xffffff

.field private static final MaxSalt:I = 0x7fffffff

.field public static final MaxVersion:J = 0x13L

.field private static final MinIterations:J = 0x1L

.field private static final MinMemory:J = 0x2000L

.field private static final MinParallelism:I = 0x1

.field private static final MinSalt:I = 0x8

.field public static final MinVersion:J = 0x10L

.field public static final ParamAssocData:Ljava/lang/String; = "A"

.field public static final ParamIterations:Ljava/lang/String; = "I"

.field public static final ParamMemory:Ljava/lang/String; = "M"

.field public static final ParamParallelism:Ljava/lang/String; = "P"

.field public static final ParamSalt:Ljava/lang/String; = "S"

.field public static final ParamSecretKey:Ljava/lang/String; = "K"

.field public static final ParamVersion:Ljava/lang/String; = "V"


# instance fields
.field private type:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 43
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->CIPHER_UUID_D:Ljava/util/UUID;

    new-array v0, v0, [B

    .line 48
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->CIPHER_UUID_ID:Ljava/util/UUID;

    return-void

    nop

    :array_0
    .array-data 1
        -0x11t
        0x63t
        0x6dt
        -0x21t
        -0x74t
        0x29t
        0x44t
        0x4bt
        -0x6ft
        -0x9t
        -0x57t
        -0x5ct
        0x3t
        -0x1dt
        0xat
        0xct
    .end array-data

    :array_1
    .array-data 1
        -0x62t
        0x29t
        -0x75t
        0x19t
        0x56t
        -0x25t
        0x47t
        0x73t
        -0x4et
        0x3dt
        -0x4t
        0x3et
        -0x3at
        -0x10t
        -0x5ft
        -0x1at
    .end array-data
.end method

.method public constructor <init>(Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;-><init>()V

    .line 82
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->D:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    if-ne p1, v0, :cond_0

    .line 83
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->CIPHER_UUID_D:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->uuid:Ljava/util/UUID;

    goto :goto_0

    .line 85
    :cond_0
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->CIPHER_UUID_ID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->uuid:Ljava/util/UUID;

    .line 88
    :goto_0
    iput-object p1, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->type:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    return-void
.end method


# virtual methods
.method public getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;
    .locals 4

    .line 93
    invoke-super {p0}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    const-string v1, "V"

    const-wide/16 v2, 0x13

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt32(Ljava/lang/String;J)V

    const-string v1, "M"

    const-wide/32 v2, 0x100000

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt64(Ljava/lang/String;J)V

    const-string v1, "P"

    const-wide/16 v2, 0x2

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt32(Ljava/lang/String;J)V

    return-object v0
.end method

.method public randomize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V
    .locals 2

    .line 119
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 122
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const-string v0, "S"

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public transform([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "S"

    .line 105
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "P"

    .line 106
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getUInt32(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v3, v0

    const-string v0, "M"

    .line 107
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getUInt64(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "I"

    .line 108
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getUInt64(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "V"

    .line 109
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getUInt32(Ljava/lang/String;)J

    move-result-wide v10

    const-string v0, "K"

    .line 110
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    const-string v0, "A"

    .line 111
    invoke-virtual {p2, v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 113
    iget-object p2, p0, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf;->type:Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;

    .line 114
    invoke-virtual {p2}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Kdf$Argon2Type;->value()I

    move-result v12

    move-object v1, p1

    .line 113
    invoke-static/range {v1 .. v12}, Lcom/keepassdroid/crypto/keyDerivation/Argon2Native;->transformKey([B[BIJJ[B[BJI)[B

    move-result-object p1

    return-object p1
.end method
