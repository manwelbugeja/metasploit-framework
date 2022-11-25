.class public Lcom/keepassdroid/stream/BetterCipherInputStream;
.super Ljava/io/FilterInputStream;
.source "BetterCipherInputStream.java"


# static fields
.field private static final I_DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private finished:Z

.field private final i_buffer:[B

.field private index:I

.field private o_buffer:[B


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 87
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/stream/BetterCipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    .locals 1

    const/16 v0, 0x2000

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/keepassdroid/stream/BetterCipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    iput-object p2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    .line 74
    new-array p1, p3, [B

    iput-object p1, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->i_buffer:[B

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->finished:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->index:I

    array-length v3, v0

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    .line 102
    iput v1, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->index:I

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :cond_1
    :goto_0
    return v1

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->index:I

    array-length v3, v0

    if-ge v2, v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 105
    iput v1, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->index:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_3
    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->index:I

    const/4 v2, 0x0

    .line 108
    iput-object v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B

    if-nez v2, :cond_5

    .line 111
    iget-object v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->i_buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->finished:Z

    goto :goto_2

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_4
    iget-object v3, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->i_buffer:[B

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->o_buffer:[B

    goto :goto_1

    .line 122
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/keepassdroid/stream/BetterCipherInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/keepassdroid/stream/BetterCipherInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/keepassdroid/stream/BetterCipherInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/keepassdroid/stream/BetterCipherInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 174
    aput-byte v1, p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v0

    .line 164
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Underlying input stream is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/keepassdroid/stream/BetterCipherInputStream;->available()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, p1

    if-gez v4, :cond_0

    move-wide p1, v0

    :cond_0
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/keepassdroid/stream/BetterCipherInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    goto :goto_0

    :cond_1
    return-wide v2
.end method
