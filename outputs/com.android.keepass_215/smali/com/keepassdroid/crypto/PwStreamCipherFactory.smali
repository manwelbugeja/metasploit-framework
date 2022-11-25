.class public Lcom/keepassdroid/crypto/PwStreamCipherFactory;
.super Ljava/lang/Object;
.source "PwStreamCipherFactory.java"


# static fields
.field private static final SALSA_IV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 42
    fill-array-data v0, :array_0

    sput-object v0, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->SALSA_IV:[B

    return-void

    :array_0
    .array-data 1
        -0x18t
        0x30t
        0x9t
        0x4bt
        -0x69t
        0x20t
        0x5dt
        0x2at
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChaCha20([B)Lorg/bouncycastle/crypto/StreamCipher;
    .locals 5

    .line 60
    invoke-static {p0}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha512([B)[B

    move-result-object p0

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0xc

    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 64
    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    invoke-static {p0, v0, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    new-instance p0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 68
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 70
    new-instance p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    const/4 v1, 0x1

    .line 71
    invoke-interface {p0, v1, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object p0
.end method

.method public static getInstance(Lcom/keepassdroid/database/CrsAlgorithm;[B)Lorg/bouncycastle/crypto/StreamCipher;
    .locals 1

    .line 32
    sget-object v0, Lcom/keepassdroid/database/CrsAlgorithm;->Salsa20:Lcom/keepassdroid/database/CrsAlgorithm;

    if-ne p0, v0, :cond_0

    .line 33
    invoke-static {p1}, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->getSalsa20([B)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    sget-object v0, Lcom/keepassdroid/database/CrsAlgorithm;->ChaCha20:Lcom/keepassdroid/database/CrsAlgorithm;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {p1}, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->getChaCha20([B)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSalsa20([B)Lorg/bouncycastle/crypto/StreamCipher;
    .locals 2

    .line 47
    invoke-static {p0}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([B)[B

    move-result-object p0

    .line 49
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 50
    new-instance p0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    sget-object v1, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->SALSA_IV:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 52
    new-instance v0, Lorg/bouncycastle/crypto/engines/Salsa20Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    const/4 v1, 0x1

    .line 53
    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0
.end method
