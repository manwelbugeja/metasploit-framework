.class public Lcom/keepassdroid/crypto/CipherFactory;
.super Ljava/lang/Object;
.source "CipherFactory.java"


# static fields
.field private static blacklistInit:Z = false

.field private static blacklisted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BC"

    .line 45
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceBlacklisted()Z
    .locals 2

    .line 63
    sget-boolean v0, Lcom/keepassdroid/crypto/CipherFactory;->blacklistInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 64
    sput-boolean v0, Lcom/keepassdroid/crypto/CipherFactory;->blacklistInit:Z

    .line 67
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/keepassdroid/crypto/CipherFactory;->blacklisted:Z

    .line 69
    :cond_0
    sget-boolean v0, Lcom/keepassdroid/crypto/CipherFactory;->blacklisted:Z

    return v0
.end method

.method public static getInstance(Ljava/util/UUID;)Lcom/keepassdroid/crypto/engine/CipherEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/keepassdroid/crypto/engine/AesEngine;->CIPHER_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance p0, Lcom/keepassdroid/crypto/engine/AesEngine;

    invoke-direct {p0}, Lcom/keepassdroid/crypto/engine/AesEngine;-><init>()V

    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lcom/keepassdroid/crypto/engine/TwofishEngine;->CIPHER_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance p0, Lcom/keepassdroid/crypto/engine/TwofishEngine;

    invoke-direct {p0}, Lcom/keepassdroid/crypto/engine/TwofishEngine;-><init>()V

    return-object p0

    .line 90
    :cond_1
    sget-object v0, Lcom/keepassdroid/crypto/engine/ChaCha20Engine;->CIPHER_UUID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 91
    new-instance p0, Lcom/keepassdroid/crypto/engine/ChaCha20Engine;

    invoke-direct {p0}, Lcom/keepassdroid/crypto/engine/ChaCha20Engine;-><init>()V

    return-object p0

    .line 94
    :cond_2
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "UUID unrecognized."

    invoke-direct {p0, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, v0}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;Z)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Z)Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/keepassdroid/crypto/CipherFactory;->deviceBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/keepassdroid/crypto/CipherFactory;->hasNativeImplementation(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->loaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Lcom/keepassdroid/crypto/AESProvider;

    invoke-direct {p1}, Lcom/keepassdroid/crypto/AESProvider;-><init>()V

    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method private static hasNativeImplementation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
