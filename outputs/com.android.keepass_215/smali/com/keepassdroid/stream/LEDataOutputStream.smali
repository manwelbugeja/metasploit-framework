.class public Lcom/keepassdroid/stream/LEDataOutputStream;
.super Ljava/io/OutputStream;
.source "LEDataOutputStream.java"


# instance fields
.field private baseStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    return-void
.end method

.method public static writeInt(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 121
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 122
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 123
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 124
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeIntBuf(I)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I[BI)V

    return-object v0
.end method

.method public static writeLong(J[BI)V
    .locals 5

    add-int/lit8 v0, p3, 0x0

    const-wide/16 v1, 0xff

    and-long v3, p0, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 134
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x1

    const/16 v3, 0x8

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 135
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v3, 0x10

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 136
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v3, 0x18

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 137
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v3, 0x20

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 138
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v3, 0x28

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 139
    aput-byte v3, p2, v0

    add-int/lit8 v0, p3, 0x6

    const/16 v3, 0x30

    ushr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 140
    aput-byte v3, p2, v0

    add-int/lit8 p3, p3, 0x7

    const/16 v0, 0x38

    ushr-long/2addr p0, v0

    and-long/2addr p0, v1

    long-to-int p1, p0

    int-to-byte p0, p1

    .line 141
    aput-byte p0, p2, p3

    return-void
.end method

.method public static writeLongBuf(J)[B
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 129
    invoke-static {p0, p1, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J[BI)V

    return-object v0
.end method

.method public static writeUShort(I[BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    .line 109
    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x1

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 110
    aput-byte p0, p1, p2

    return-void
.end method

.method public static writeUShortBuf(I)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I[BI)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 76
    invoke-static {p1, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I[BI)V

    .line 78
    iget-object p1, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeLong(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 70
    invoke-static {p1, p2, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J[BI)V

    .line 71
    iget-object p1, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeUInt(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    long-to-int p2, p1

    invoke-static {p2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public writeUShort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 83
    invoke-static {p1, v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I[BI)V

    .line 84
    iget-object p1, p0, Lcom/keepassdroid/stream/LEDataOutputStream;->baseStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
