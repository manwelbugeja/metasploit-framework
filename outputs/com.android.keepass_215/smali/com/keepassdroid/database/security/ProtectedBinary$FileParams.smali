.class Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;
.super Ljava/lang/Object;
.source "ProtectedBinary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/security/ProtectedBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileParams"
.end annotation


# instance fields
.field public cos:Ljavax/crypto/CipherOutputStream;

.field private dataFile:Ljava/io/File;

.field public ivSpec:Ljavax/crypto/spec/IvParameterSpec;

.field public keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field final synthetic this$0:Lcom/keepassdroid/database/security/ProtectedBinary;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/security/ProtectedBinary;Ljava/io/File;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->this$0:Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->dataFile:Ljava/io/File;

    .line 108
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->setupEnc(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public initCipher(I)Ljavax/crypto/Cipher;
    .locals 3

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 70
    invoke-static {v0}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->ivSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setupEnc(Ljava/io/File;)V
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 89
    invoke-static {}, Lcom/keepassdroid/database/security/ProtectedBinary;->access$000()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 90
    invoke-static {}, Lcom/keepassdroid/database/security/ProtectedBinary;->access$000()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 92
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 93
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->ivSpec:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->initCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 98
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/keepassdroid/database/security/ProtectedBinary$FileParams;->cos:Ljavax/crypto/CipherOutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
