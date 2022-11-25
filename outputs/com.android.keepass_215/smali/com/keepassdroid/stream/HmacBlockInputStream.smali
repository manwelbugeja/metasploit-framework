.class public Lcom/keepassdroid/stream/HmacBlockInputStream;
.super Ljava/io/InputStream;
.source "HmacBlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

.field private blockIndex:J

.field private buffer:[B

.field private bufferPos:I

.field private endOfStream:Z

.field private key:[B

.field private verify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z[B)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    const-wide/16 v1, 0x0

    .line 39
    iput-wide v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->blockIndex:J

    .line 40
    iput-boolean v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->endOfStream:Z

    .line 45
    new-instance v1, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {v1, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    .line 46
    iput-boolean p2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->verify:Z

    .line 47
    iput-object p3, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->key:[B

    new-array p1, v0, [B

    .line 48
    iput-object p1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    return-void
.end method

.method private readSafeBlock()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    const-string v1, "Invalid Hmac"

    .line 99
    iget-boolean v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->endOfStream:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v2

    const-string v5, "File corrupted"

    if-eqz v2, :cond_6

    .line 102
    array-length v6, v2

    if-ne v6, v4, :cond_6

    .line 106
    iget-wide v6, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->blockIndex:J

    invoke-static {v6, v7}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLongBuf(J)[B

    move-result-object v4

    .line 107
    iget-object v6, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v6

    if-eqz v6, :cond_5

    .line 108
    array-length v8, v6

    if-ne v8, v7, :cond_5

    .line 111
    invoke-static {v6, v3}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v5

    .line 112
    iput v3, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    .line 114
    iget-object v7, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-virtual {v7, v5}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v7

    iput-object v7, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    .line 116
    iget-boolean v7, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->verify:Z

    if-eqz v7, :cond_3

    .line 118
    iget-object v7, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->key:[B

    iget-wide v8, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->blockIndex:J

    invoke-static {v7, v8, v9}, Lcom/keepassdroid/stream/HmacBlockStream;->GetHmacKey64([BJ)[B

    move-result-object v7

    .line 121
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v8

    .line 122
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v9, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 123
    invoke-virtual {v8, v9}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {v8, v4}, Ljavax/crypto/Mac;->update([B)V

    .line 131
    invoke-virtual {v8, v6}, Ljavax/crypto/Mac;->update([B)V

    .line 133
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    array-length v4, v0

    if-lez v4, :cond_1

    .line 134
    invoke-virtual {v8, v0}, Ljavax/crypto/Mac;->update([B)V

    .line 137
    :cond_1
    invoke-virtual {v8}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 138
    invoke-static {v7, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 140
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :catch_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :catch_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_3
    :goto_0
    iget-wide v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->blockIndex:J

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->blockIndex:J

    const/4 v0, 0x1

    if-nez v5, :cond_4

    .line 149
    iput-boolean v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->endOfStream:Z

    return v3

    :cond_4
    return v0

    .line 109
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->close()V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->endOfStream:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 55
    :cond_0
    iget v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    iget-object v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockInputStream;->readSafeBlock()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v0

    .line 60
    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/keepassdroid/stream/HmacBlockInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    :goto_0
    if-lez v0, :cond_2

    .line 69
    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    iget-object v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockInputStream;->readSafeBlock()Z

    move-result v1

    if-nez v1, :cond_1

    sub-int/2addr p3, v0

    if-gtz p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return p3

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->buffer:[B

    iget v3, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 85
    iget v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/keepassdroid/stream/HmacBlockInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 p1, 0x0

    return-wide p1
.end method
