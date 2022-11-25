.class public abstract Lcom/keepassdroid/crypto/engine/CipherEngine;
.super Ljava/lang/Object;
.source "CipherEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCipher(I[B[B)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/keepassdroid/crypto/engine/CipherEngine;->getCipher(I[B[BZ)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public abstract getCipher(I[B[BZ)Ljavax/crypto/Cipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method public ivLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public keyLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
