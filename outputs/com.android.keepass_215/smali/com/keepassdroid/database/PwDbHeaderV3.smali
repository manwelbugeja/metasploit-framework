.class public Lcom/keepassdroid/database/PwDbHeaderV3;
.super Lcom/keepassdroid/database/PwDbHeader;
.source "PwDbHeaderV3.java"


# static fields
.field public static final BUF_SIZE:I = 0x7c

.field public static final DBSIG_2:I = -0x4ab4049b

.field public static final DBVER_DW:I = 0x30003

.field public static final FLAG_ARCFOUR:I = 0x4

.field public static final FLAG_RIJNDAEL:I = 0x2

.field public static final FLAG_SHA2:I = 0x1

.field public static final FLAG_TWOFISH:I = 0x8


# instance fields
.field public contentsHash:[B

.field public flags:I

.field public numEntries:I

.field public numGroups:I

.field public numKeyEncRounds:I

.field public signature1:I

.field public signature2:I

.field public transformSeed:[B

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDbHeader;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 69
    iput-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    new-array v0, v0, [B

    .line 82
    iput-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->contentsHash:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 114
    iput-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    return-void
.end method

.method public static compatibleHeaders(II)Z
    .locals 0

    and-int/lit16 p0, p0, -0x100

    and-int/lit16 p1, p1, -0x100

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static matchesHeader(II)Z
    .locals 1

    const v0, -0x655d26fd

    if-ne p0, v0, :cond_0

    const p0, -0x4ab4049b

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public loadFromFile([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x0

    .line 92
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->signature1:I

    add-int/lit8 v0, p2, 0x4

    .line 93
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->signature2:I

    add-int/lit8 v0, p2, 0x8

    .line 94
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    add-int/lit8 v0, p2, 0xc

    .line 95
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->version:I

    add-int/lit8 v0, p2, 0x10

    .line 97
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x20

    .line 98
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->encryptionIV:[B

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x30

    .line 100
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->numGroups:I

    add-int/lit8 v0, p2, 0x34

    .line 101
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->numEntries:I

    add-int/lit8 v0, p2, 0x38

    .line 103
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->contentsHash:[B

    const/16 v3, 0x20

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x58

    .line 105
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x78

    .line 106
    invoke-static {p1, p2}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->numKeyEncRounds:I

    if-ltz p1, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Does not support more than 2147483647 rounds."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public matchesVersion()Z
    .locals 2

    .line 126
    iget v0, p0, Lcom/keepassdroid/database/PwDbHeaderV3;->version:I

    const v1, 0x30003

    invoke-static {v0, v1}, Lcom/keepassdroid/database/PwDbHeaderV3;->compatibleHeaders(II)Z

    move-result v0

    return v0
.end method
