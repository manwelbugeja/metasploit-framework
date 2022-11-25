.class public Lcom/keepassdroid/crypto/engine/AesEngine;
.super Lcom/keepassdroid/crypto/engine/CipherEngine;
.source "AesEngine.java"


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

    sput-object v0, Lcom/keepassdroid/crypto/engine/AesEngine;->CIPHER_UUID:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        -0x3ft
        -0xet
        -0x1at
        -0x41t
        0x71t
        0x43t
        0x50t
        -0x42t
        0x58t
        0x5t
        0x21t
        0x6at
        -0x4t
        0x5at
        -0x1t
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

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 44
    invoke-static {v0, p4}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 46
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p4, p1, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p4
.end method
