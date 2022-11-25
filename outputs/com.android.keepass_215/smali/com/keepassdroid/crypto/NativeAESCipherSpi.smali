.class public Lcom/keepassdroid/crypto/NativeAESCipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "NativeAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/crypto/NativeAESCipherSpi$Cleanup;
    }
.end annotation


# static fields
.field private static mCleanup:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ref/PhantomReference<",
            "Lcom/keepassdroid/crypto/NativeAESCipherSpi;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsStaticInit:Z = false

.field private static mQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/keepassdroid/crypto/NativeAESCipherSpi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AES_BLOCK_SIZE:I

.field private mCtxPtr:J

.field private mEncrypting:Z

.field private mIV:[B

.field private mIsInited:Z

.field private mPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCleanup:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/16 v0, 0x10

    .line 51
    iput v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->AES_BLOCK_SIZE:I

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsInited:Z

    .line 55
    iput-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mEncrypting:Z

    .line 58
    iput-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mPadding:Z

    .line 102
    sget-boolean v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsStaticInit:Z

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->staticInit()V

    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .line 45
    sget-object v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 45
    sget-object v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCleanup:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(J)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nCleanup(J)V

    return-void
.end method

.method private static addToCleanupQueue(Lcom/keepassdroid/crypto/NativeAESCipherSpi;J)V
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queued cipher context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeepassDroid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCleanup:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/PhantomReference;

    sget-object v2, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p0, v2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doFinal([BII[BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->engineGetOutputSize(I)I

    move-result v9

    if-eqz p1, :cond_0

    if-lez p3, :cond_0

    .line 153
    iget-wide v1, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCtxPtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nUpdate(J[BII[BII)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    iget-wide v1, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCtxPtr:J

    iget-boolean v3, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mPadding:Z

    add-int v5, p5, p1

    sub-int v6, v9, p1

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nFinal(JZ[BII)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private init(ILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsInited:Z

    if-nez v0, :cond_1

    .line 238
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsInited:Z

    .line 242
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p3

    iput-object p3, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIV:[B

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    iput-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mEncrypting:Z

    .line 244
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    iget-object p2, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIV:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nInit(Z[B[B)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCtxPtr:J

    .line 245
    invoke-static {p0, p1, p2}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->addToCleanupQueue(Lcom/keepassdroid/crypto/NativeAESCipherSpi;J)V

    return-void

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Don\'t allow multiple inits"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native nCleanup(J)V
.end method

.method private native nFinal(JZ[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method private native nGetCacheSize(J)I
.end method

.method private native nInit(Z[B[B)J
.end method

.method private native nUpdate(J[BII[BII)I
.end method

.method private static staticInit()V
    .locals 3

    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsStaticInit:Z

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mQueue:Ljava/lang/ref/ReferenceQueue;

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keepassdroid/crypto/NativeAESCipherSpi$Cleanup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/keepassdroid/crypto/NativeAESCipherSpi$Cleanup;-><init>(Lcom/keepassdroid/crypto/NativeAESCipherSpi$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 137
    invoke-direct/range {p0 .. p5}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->doFinal([BII[BI)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    return p1

    .line 140
    :cond_0
    new-instance p1, Ljavax/crypto/ShortBufferException;

    invoke-direct {p1}, Ljavax/crypto/ShortBufferException;-><init>()V

    throw p1
.end method

.method protected engineDoFinal([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->engineGetOutputSize(I)I

    move-result v0

    .line 111
    new-array v7, v0, [B

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v7

    .line 116
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->doFinal([BII[BI)I

    move-result p1
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p1, :cond_0

    return-object v7

    .line 126
    :cond_0
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 127
    invoke-static {v7, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 119
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Short buffer exception shouldn\'t be possible from here."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIV:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCtxPtr:J

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nGetCacheSize(J)I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 225
    :try_start_0
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 227
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 197
    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 199
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->init(ILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)V

    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 209
    instance-of p4, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz p4, :cond_0

    .line 210
    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->init(ILjava/security/Key;Ljavax/crypto/spec/IvParameterSpec;)V

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "params must be an IvParameterSpec."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "CBC"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "This only supports CBC mode"

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mIsInited:Z

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lcom/keepassdroid/crypto/NativeLib;->init()Z

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "PKCS5Padding"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 273
    iput-boolean p1, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mPadding:Z

    return-void

    .line 270
    :cond_2
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "Only supports PKCS5Padding."

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 299
    invoke-virtual/range {p0 .. p5}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->update([BII[BI)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    return p1

    .line 302
    :cond_0
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "Insufficient buffer."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected engineUpdate([BII)[B
    .locals 8

    .line 279
    invoke-virtual {p0, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->engineGetOutputSize(I)I

    move-result v0

    .line 280
    new-array v7, v0, [B

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v7

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->update([BII[BI)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v7

    .line 288
    :cond_0
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 289
    invoke-static {v7, p3, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method update([BII[BI)I
    .locals 9

    .line 310
    invoke-virtual {p0, p3}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->engineGetOutputSize(I)I

    move-result v8

    .line 312
    iget-wide v1, p0, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->mCtxPtr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/keepassdroid/crypto/NativeAESCipherSpi;->nUpdate(J[BII[BII)I

    move-result p1

    return p1
.end method
