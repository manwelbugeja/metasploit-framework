.class public Lcom/keepassdroid/crypto/engine/TwofishEngine;
.super Lcom/keepassdroid/crypto/engine/CipherEngine;
.source "TwofishEngine.java"


# static fields
.field public static final CIPHER_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 36
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/crypto/engine/TwofishEngine;->CIPHER_UUID:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        -0x53t
        0x68t
        -0xet
        -0x61t
        0x57t
        0x6ft
        0x4bt
        -0x47t
        -0x5dt
        0x6at
        -0x2ct
        0x7at
        -0x7t
        0x65t
        0x34t
        0x6ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "Twofish/CBC/ZeroBytePadding"

    .line 44
    invoke-static {v0, p4}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_0

    :cond_0
    const-string v0, "Twofish/CBC/NoPadding"

    .line 46
    invoke-static {v0, p4}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 49
    :goto_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p4, p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p4
.end method
