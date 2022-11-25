.class public Lcom/keepassdroid/stream/HashedBlockOutputStream;
.super Ljava/io/OutputStream;
.source "HashedBlockOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x100000


# instance fields
.field private baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

.field private buffer:[B

.field private bufferIndex:J

.field private bufferPos:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferIndex:J

    const/high16 v0, 0x100000

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->init(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferIndex:J

    if-gtz p2, :cond_0

    const/high16 p2, 0x100000

    .line 45
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->init(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private WriteHashedBlock()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-wide v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferIndex:J

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUInt(J)V

    .line 100
    iget-wide v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferIndex:J

    .line 102
    iget v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    :try_start_0
    const-string v0, "SHA-256"

    .line 105
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    iget v3, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 112
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v2, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    goto :goto_0

    .line 107
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 not implemented here."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    .line 128
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v2, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    .line 129
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v2, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    .line 130
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, v2, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J)V

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget v2, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    if-lez v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object v3, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    invoke-virtual {v2, v3, v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([BII)V

    .line 139
    :cond_1
    iput v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    return-void
.end method

.method private init(Ljava/io/OutputStream;I)V
    .locals 1

    .line 49
    new-instance v0, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    .line 50
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->WriteHashedBlock()V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->WriteHashedBlock()V

    .line 71
    invoke-virtual {p0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->flush()V

    .line 72
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

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

    .line 77
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->baseStream:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 58
    invoke-virtual {p0, v1, v2, v0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->write([BII)V

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

    .line 83
    iget v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    iget-object v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;->WriteHashedBlock()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->buffer:[B

    iget v2, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    .line 92
    iget v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/keepassdroid/stream/HashedBlockOutputStream;->bufferPos:I

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method
