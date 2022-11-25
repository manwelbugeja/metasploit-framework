.class public Lcom/keepassdroid/crypto/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hashGen(Ljava/lang/String;[BII)[B
    .locals 2

    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    new-instance v0, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {v0}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 102
    new-instance v1, Ljava/security/DigestOutputStream;

    invoke-direct {v1, v0, p0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 105
    :try_start_1
    invoke-virtual {v1, p1, p2, p3}, Ljava/security/DigestOutputStream;->write([BII)V

    .line 106
    invoke-virtual {v1}, Ljava/security/DigestOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 108
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 98
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hashSha256([B)[B
    .locals 2

    .line 78
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashSha256([BII)[B
    .locals 1

    const-string v0, "SHA-256"

    .line 82
    invoke-static {v0, p0, p1, p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashGen(Ljava/lang/String;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashSha512([B)[B
    .locals 2

    .line 86
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha512([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashSha512([BII)[B
    .locals 1

    const-string v0, "SHA-512"

    .line 90
    invoke-static {v0, p0, p1, p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashGen(Ljava/lang/String;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static resizeKey([BIII)[B
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    const/16 v1, 0x20

    if-gt p3, v1, :cond_1

    .line 38
    invoke-static {p0, p1, p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([BII)[B

    move-result-object p0

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha512([BII)[B

    move-result-object p0

    .line 41
    :goto_0
    array-length p1, p0

    if-ne p3, p1, :cond_2

    return-object p0

    .line 43
    :cond_2
    new-array p1, p3, [B

    .line 44
    array-length p2, p0

    if-ge p3, p2, :cond_3

    .line 45
    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_4

    :try_start_0
    const-string v3, "HmacSHA256"

    .line 53
    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    invoke-static {v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLongBuf(J)[B

    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    sub-int v4, p3, p2

    .line 61
    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 64
    invoke-static {v3, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    .line 68
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 73
    :cond_4
    :goto_2
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([BB)V

    return-object p1
.end method
