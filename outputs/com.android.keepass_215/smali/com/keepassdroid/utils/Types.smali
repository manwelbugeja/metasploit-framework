.class public Lcom/keepassdroid/utils/Types;
.super Ljava/lang/Object;
.source "Types.java"


# static fields
.field private static final CRLF:Ljava/lang/String;

.field private static final CRLFbuf:[B

.field private static final REPLACE:Z

.field private static final SEP:Ljava/lang/String;

.field public static ULONG_MAX_VALUE:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 117
    fill-array-data v0, :array_0

    sput-object v0, Lcom/keepassdroid/utils/Types;->CRLFbuf:[B

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/keepassdroid/utils/Types;->CRLF:Ljava/lang/String;

    const-string v0, "line.separator"

    .line 119
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/utils/Types;->SEP:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/keepassdroid/utils/Types;->REPLACE:Z

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UUIDtoBytes(Ljava/util/UUID;)[B
    .locals 4

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 176
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J[BI)V

    .line 177
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    const/16 p0, 0x8

    invoke-static {v1, v2, v0, p0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLong(J[BI)V

    return-object v0
.end method

.method public static bytestoUUID([B)Ljava/util/UUID;
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-static {p0, v0}, Lcom/keepassdroid/utils/Types;->bytestoUUID([BI)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static bytestoUUID([BI)Ljava/util/UUID;
    .locals 8

    const-wide/16 v0, 0x0

    const/16 v2, 0xf

    move-wide v3, v0

    :goto_0
    const/16 v5, 0x8

    if-lt v2, v5, :cond_0

    shl-long/2addr v3, v5

    add-int v5, v2, p1

    .line 161
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    :goto_1
    if-ltz v2, :cond_1

    shl-long/2addr v0, v5

    add-int v6, v2, p1

    .line 166
    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v0, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 169
    :cond_1
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method public static extract([BII)[B
    .locals 2

    .line 111
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 112
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseVersion(Ljava/lang/String;)J
    .locals 9

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "[.,]"

    .line 187
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 189
    array-length v2, p0

    if-gtz v2, :cond_1

    return-wide v0

    :cond_1
    const/4 v3, 0x0

    .line 195
    :try_start_0
    aget-object v3, p0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x30

    shl-long/2addr v3, v5

    const/4 v5, 0x2

    if-lt v2, v5, :cond_2

    const/4 v6, 0x1

    .line 199
    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    :cond_2
    const/4 v6, 0x3

    if-lt v2, v6, :cond_3

    .line 204
    aget-object v5, p0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v7, v5

    const/16 v5, 0x10

    shl-long/2addr v7, v5

    or-long/2addr v3, v7

    :cond_3
    const/4 v5, 0x4

    if-lt v2, v5, :cond_4

    .line 209
    aget-object p0, p0, v6

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p0

    or-long/2addr v3, v0

    :cond_4
    return-wide v3

    :catch_0
    return-wide v0
.end method

.method public static readCString([BI)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Types;->strlen([BI)I

    move-result v1

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, p1, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 125
    sget-boolean p0, Lcom/keepassdroid/utils/Types;->REPLACE:Z

    if-eqz p0, :cond_0

    .line 126
    sget-object p0, Lcom/keepassdroid/utils/Types;->CRLF:Ljava/lang/String;

    sget-object p1, Lcom/keepassdroid/utils/Types;->SEP:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static readUByte([BI)I
    .locals 0

    .line 64
    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static strlen([BI)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    add-int v1, p1, v0

    .line 95
    aget-byte v1, p0, v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 135
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 136
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    return v1

    .line 140
    :cond_0
    sget-boolean v2, Lcom/keepassdroid/utils/Types;->REPLACE:Z

    if-eqz v2, :cond_1

    .line 141
    sget-object v2, Lcom/keepassdroid/utils/Types;->SEP:Ljava/lang/String;

    sget-object v3, Lcom/keepassdroid/utils/Types;->CRLF:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v2, "UTF-8"

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 146
    array-length v2, p0

    add-int/2addr v2, v0

    .line 147
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 148
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 149
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    return v2
.end method

.method public static writeUByte(I)B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/keepassdroid/utils/Types;->writeUByte(I[BI)V

    aget-byte p0, v0, v1

    return p0
.end method

.method public static writeUByte(I[BI)V
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 74
    aput-byte p0, p1, p2

    return-void
.end method
