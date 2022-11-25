.class public Lcom/keepassdroid/biometric/BiometricHelper;
.super Ljava/lang/Object;
.source "BiometricHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;
    }
.end annotation


# static fields
.field private static final ALIAS_KEY:Ljava/lang/String; = "example-key"


# instance fields
.field private biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

.field private biometricManager:Landroidx/biometric/BiometricManager;

.field private cancellationSignal:Landroidx/core/os/CancellationSignal;

.field private cipher:Ljavax/crypto/Cipher;

.field private cryptoInitOk:Z

.field private cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

.field private initOk:Z

.field private keyGenerator:Ljavax/crypto/KeyGenerator;

.field private keyStore:Ljava/security/KeyStore;

.field private keyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;)V
    .locals 3

    const-string v0, "AndroidKeyStore"

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    .line 51
    iput-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyGenerator:Ljavax/crypto/KeyGenerator;

    .line 52
    iput-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    .line 53
    iput-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyguardManager:Landroid/app/KeyguardManager;

    .line 54
    iput-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->initOk:Z

    .line 57
    iput-boolean v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoInitOk:Z

    .line 84
    invoke-static {p1}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v2

    iput-object v2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricManager:Landroidx/biometric/BiometricManager;

    const-string v2, "keyguard"

    .line 85
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyguardManager:Landroid/app/KeyguardManager;

    .line 87
    invoke-direct {p0}, Lcom/keepassdroid/biometric/BiometricHelper;->isBiometricSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    invoke-virtual {p0, v1}, Lcom/keepassdroid/biometric/BiometricHelper;->setInitOk(Z)V

    return-void

    .line 92
    :cond_0
    iput-object p2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    .line 95
    :try_start_0
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const-string p1, "AES"

    .line 96
    invoke-static {p1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyGenerator:Ljavax/crypto/KeyGenerator;

    const-string p1, "AES/CBC/PKCS7Padding"

    .line 99
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    .line 103
    new-instance p1, Landroidx/biometric/BiometricPrompt$CryptoObject;

    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {p1, v0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoObject:Landroidx/biometric/BiometricPrompt$CryptoObject;

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/keepassdroid/biometric/BiometricHelper;->setInitOk(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    invoke-virtual {p0, v1}, Lcom/keepassdroid/biometric/BiometricHelper;->setInitOk(Z)V

    .line 107
    invoke-interface {p2}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :goto_0
    return-void
.end method

.method private createNewKeyIfNeeded(Z)V
    .locals 4

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "example-key"

    if-eqz p1, :cond_0

    .line 256
    :try_start_1
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    .line 257
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    const-string v1, "CBC"

    const/4 v2, 0x1

    const-string v3, "PKCS7Padding"

    .line 266
    invoke-static {v0, p1, v1, v2, v3}, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->build(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 273
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initDecryptKey(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-direct {p0, p2}, Lcom/keepassdroid/biometric/BiometricHelper;->createNewKeyIfNeeded(Z)V

    .line 218
    iget-object p2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 219
    iget-object p2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const-string v1, "example-key"

    invoke-virtual {p2, v1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljavax/crypto/SecretKey;

    const/4 v0, 0x2

    .line 222
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 223
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 224
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, v0, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoInitOk:Z

    return-void
.end method

.method private initEncryptKey(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lcom/keepassdroid/biometric/BiometricHelper;->createNewKeyIfNeeded(Z)V

    .line 153
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 154
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyStore:Ljava/security/KeyStore;

    const-string v1, "example-key"

    invoke-virtual {p1, v1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    .line 155
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 156
    iput-boolean v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoInitOk:Z

    return-void
.end method

.method private isBiometricSupported()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricManager:Landroidx/biometric/BiometricManager;

    invoke-virtual {v0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->keyguardManager:Landroid/app/KeyguardManager;

    .line 114
    invoke-static {v0}, Lcom/keepassdroid/compat/KeyguardManagerCompat;->isKeyguardSecure(Landroid/app/KeyguardManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public decryptData(Ljava/lang/String;)V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcom/keepassdroid/biometric/BiometricHelper;->isFingerprintInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x2

    .line 239
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 241
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 244
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1, v0}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->handleDecryptedResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    goto :goto_0

    .line 247
    :catch_1
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onKeyInvalidated()V

    :goto_0
    return-void
.end method

.method public encryptData(Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/keepassdroid/biometric/BiometricHelper;->isFingerprintInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :cond_0
    return-void

    .line 170
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 171
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p1

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 175
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    .line 176
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1, v0, v2}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->handleEncryptedResult(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :goto_0
    return-void
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public initDecryptData(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoInitOk:Z

    const/4 v1, 0x1

    .line 193
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/biometric/BiometricHelper;->initDecryptKey(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 207
    :catch_0
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    goto :goto_0

    .line 199
    :catch_1
    :try_start_1
    iget-object v2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {v2}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onKeyInvalidated()V

    .line 200
    invoke-direct {p0, p1, v1}, Lcom/keepassdroid/biometric/BiometricHelper;->initDecryptKey(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 204
    :catch_2
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    goto :goto_0

    .line 202
    :catch_3
    iget-object p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {p1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onInvalidKeyException()V

    :goto_0
    return v0
.end method

.method public initEncryptData()Z
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->cryptoInitOk:Z

    .line 124
    invoke-virtual {p0}, Lcom/keepassdroid/biometric/BiometricHelper;->isFingerprintInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    if-eqz v1, :cond_0

    .line 126
    invoke-interface {v1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    .line 131
    :try_start_0
    invoke-direct {p0, v0}, Lcom/keepassdroid/biometric/BiometricHelper;->initEncryptKey(Z)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 143
    :catch_0
    iget-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {v1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    goto :goto_0

    .line 135
    :catch_1
    :try_start_1
    iget-object v2, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {v2}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onKeyInvalidated()V

    .line 136
    invoke-direct {p0, v1}, Lcom/keepassdroid/biometric/BiometricHelper;->initEncryptKey(Z)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 140
    :catch_2
    iget-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {v1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onException()V

    goto :goto_0

    .line 138
    :catch_3
    iget-object v1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->biometricCallback:Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;

    invoke-interface {v1}, Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;->onInvalidKeyException()V

    :goto_0
    return v0
.end method

.method public isFingerprintInitialized()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/keepassdroid/biometric/BiometricHelper;->initOk:Z

    return v0
.end method

.method setInitOk(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/keepassdroid/biometric/BiometricHelper;->initOk:Z

    return-void
.end method
