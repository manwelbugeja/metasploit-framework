.class public Lcom/keepassdroid/stream/HashedBlockInputStream;
.super Ljava/io/InputStream;
.source "HashedBlockInputStream.java"


# static fields
.field private static final HASH_SIZE:I = 0x20


# instance fields
.field private atEnd:Z

.field private baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

.field private buffer:[B

.field private bufferIndex:J

.field private bufferPos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    new-array v1, v0, [B

    .line 37
    iput-object v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    const-wide/16 v1, 0x0

    .line 38
    iput-wide v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferIndex:J

    .line 39
    iput-boolean v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->atEnd:Z

    .line 48
    new-instance v0, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {v0, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    return-void
.end method

.method private ReadHashedBlock()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->atEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    iput v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    .line 89
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readUInt()J

    move-result-wide v2

    .line 90
    iget-wide v4, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferIndex:J

    const-string v0, "Invalid data format"

    cmp-long v6, v2, v4

    if-nez v6, :cond_9

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 93
    iput-wide v4, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferIndex:J

    .line 95
    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 96
    array-length v4, v2

    if-ne v4, v3, :cond_8

    .line 100
    iget-object v4, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-static {v4}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v4

    if-ltz v4, :cond_7

    const/4 v5, 0x1

    if-nez v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 107
    aget-byte v6, v2, v4

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_2
    iput-boolean v5, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->atEnd:Z

    new-array v0, v1, [B

    .line 113
    iput-object v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    return v1

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-virtual {v1, v4}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    if-eqz v1, :cond_6

    .line 118
    array-length v1, v1

    if-ne v1, v4, :cond_6

    :try_start_0
    const-string v0, "SHA-256"

    .line 124
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    iget-object v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 130
    array-length v1, v0

    if-ne v1, v3, :cond_5

    .line 134
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    return v5

    .line 135
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Hashes didn\'t match."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Hash wrong size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SHA-256 not implemented here."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_6
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_8
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_9
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->baseStream:Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-boolean v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->atEnd:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 150
    :cond_0
    iget v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/keepassdroid/stream/HashedBlockInputStream;->ReadHashedBlock()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    iget v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->readUByte([BI)I

    move-result v0

    .line 155
    iget v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/keepassdroid/stream/HashedBlockInputStream;->read([BII)I

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

    .line 53
    iget-boolean v0, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->atEnd:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    move v0, p3

    :goto_0
    if-lez v0, :cond_2

    .line 58
    iget v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/keepassdroid/stream/HashedBlockInputStream;->ReadHashedBlock()Z

    move-result v1

    if-nez v1, :cond_1

    sub-int/2addr p3, v0

    return p3

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->buffer:[B

    iget v3, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 72
    iget v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/keepassdroid/stream/HashedBlockInputStream;->bufferPos:I

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
