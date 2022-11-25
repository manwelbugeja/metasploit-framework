.class public Lcom/keepassdroid/stream/HmacBlockStream;
.super Ljava/lang/Object;
.source "HmacBlockStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetHmacKey64([BJ)[B
    .locals 3

    :try_start_0
    const-string v0, "SHA-512"

    .line 32
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    new-instance v1, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {v1}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 38
    new-instance v2, Ljava/security/DigestOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 39
    new-instance v1, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 42
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    .line 43
    invoke-virtual {v1, p0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    .line 44
    invoke-virtual {v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
