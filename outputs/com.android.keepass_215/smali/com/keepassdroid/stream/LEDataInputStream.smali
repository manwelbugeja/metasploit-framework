.class public Lcom/keepassdroid/stream/LEDataInputStream;
.super Ljava/io/InputStream;
.source "LEDataInputStream.java"


# static fields
.field public static final INT_TO_LONG_MASK:J = 0xffffffffL


# instance fields
.field private baseStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    return-void
.end method

.method public static padOut([BI)[B
    .locals 2

    if-eqz p0, :cond_1

    .line 177
    array-length v0, p0

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x4

    new-array p1, p1, [B

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    const/4 v0, 0x0

    .line 184
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 185
    aget-byte v1, p0, v0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method public static readBytes(Ljava/io/InputStream;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    new-array v0, p1, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    sub-int v3, p1, v2

    .line 114
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 119
    new-array p0, v2, [B

    .line 120
    invoke-static {v0, v1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_0
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static readInt(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 169
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 171
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->padOut([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p0

    return p0
.end method

.method public static readInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x0

    .line 206
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v0, p0

    return v0
.end method

.method public static readLong([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x0

    .line 158
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static readUInt(Ljava/io/InputStream;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUInt([BI)J
    .locals 2

    .line 165
    invoke-static {p0, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public static readUShort(Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 135
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 137
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->padOut([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort([BI)I

    move-result p0

    return p0
.end method

.method public static readUShort([BI)I
    .locals 1

    add-int/lit8 v0, p1, 0x0

    .line 154
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object p1

    return-object p1
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 58
    invoke-virtual {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    invoke-static {v0, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUInt()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method public readUShort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public readUUID()Ljava/util/UUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    .line 211
    invoke-virtual {p0, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v0

    .line 213
    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataInputStream;->baseStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
