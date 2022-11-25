.class public Lcom/keepassdroid/utils/UuidUtil;
.super Ljava/lang/Object;
.source "UuidUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteToChar(C)C
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x41

    sub-int/2addr p0, v0

    :goto_0
    int-to-char p0, p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x30

    goto :goto_0
.end method

.method public static toHexString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 31
    :cond_1
    array-length v0, p0

    if-nez v0, :cond_2

    const-string p0, ""

    return-object p0

    .line 34
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 39
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    ushr-int/lit8 v4, v3, 0x4

    int-to-char v4, v4

    and-int/lit8 v3, v3, 0xf

    int-to-char v3, v3

    .line 46
    invoke-static {v4}, Lcom/keepassdroid/utils/UuidUtil;->byteToChar(C)C

    .line 47
    invoke-static {v3}, Lcom/keepassdroid/utils/UuidUtil;->byteToChar(C)C

    .line 49
    invoke-static {v4}, Lcom/keepassdroid/utils/UuidUtil;->byteToChar(C)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {v3}, Lcom/keepassdroid/utils/UuidUtil;->byteToChar(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
