.class public Lcom/keepassdroid/stream/HmacBlockOutputStream;
.super Ljava/io/OutputStream;
.source "HmacBlockOutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x100000


# instance fields
.field private baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

.field private blockIndex:J

.field private buffer:[B

.field private bufferPos:I

.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/high16 v0, 0x100000

    new-array v0, v0, [B

    .line 35
    iput-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->blockIndex:J

    .line 40
    new-instance v0, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    .line 41
    iput-object p2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->key:[B

    return-void
.end method

.method private WriteSafeBlock()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 92
    iget-wide v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->blockIndex:J

    invoke-static {v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLongBuf(J)[B

    move-result-object v1

    .line 93
    iget v2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->key:[B

    iget-wide v4, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->blockIndex:J

    invoke-static {v3, v4, v5}, Lcom/keepassdroid/stream/HmacBlockStream;->GetHmacKey64([BJ)[B

    move-result-object v3

    .line 100
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    .line 101
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 102
    invoke-virtual {v4, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-virtual {v4, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 110
    invoke-virtual {v4, v2}, Ljavax/crypto/Mac;->update([B)V

    .line 112
    iget v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 113
    iget-object v3, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    invoke-virtual {v4, v3, v1, v0}, Ljavax/crypto/Mac;->update([BII)V

    .line 116
    :cond_0
    invoke-virtual {v4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 118
    iget-object v3, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v3, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    .line 119
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    .line 121
    iget v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    if-lez v0, :cond_1

    .line 122
    iget-object v2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object v3, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    invoke-virtual {v2, v3, v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([BII)V

    .line 125
    :cond_1
    iget-wide v2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->blockIndex:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->blockIndex:J

    .line 126
    iput v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    return-void

    .line 106
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid HMAC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :catch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Hmac"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->WriteSafeBlock()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->WriteSafeBlock()V

    .line 50
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->WriteSafeBlock()V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->flush()V

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1, p1}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    .line 70
    iget v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    iget-object v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/keepassdroid/stream/HmacBlockOutputStream;->WriteSafeBlock()V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->buffer:[B

    iget v2, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 79
    iget v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/keepassdroid/stream/HmacBlockOutputStream;->bufferPos:I

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
