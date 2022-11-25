.class public Lcom/keepassdroid/crypto/engine/ChaCha20Engine;
.super Lcom/keepassdroid/crypto/engine/CipherEngine;
.source "ChaCha20Engine.java"


# static fields
.field public static final CIPHER_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 37
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/crypto/engine/ChaCha20Engine;->CIPHER_UUID:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        -0x2at
        0x3t
        -0x76t
        0x2bt
        -0x75t
        0x6ft
        0x4ct
        -0x4bt
        -0x5bt
        0x24t
        0x33t
        -0x66t
        0x31t
        -0x25t
        -0x4bt
        -0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/keepassdroid/crypto/engine/CipherEngine;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipher(I[B[BZ)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 49
    new-instance p4, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const-string v0, "Chacha7539"

    invoke-static {v0, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 50
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "ChaCha7539"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p4, p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p4
.end method

.method public ivLength()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
