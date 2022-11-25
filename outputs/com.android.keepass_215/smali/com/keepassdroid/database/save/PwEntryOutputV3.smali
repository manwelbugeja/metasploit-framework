.class public Lcom/keepassdroid/database/save/PwEntryOutputV3;
.super Ljava/lang/Object;
.source "PwEntryOutputV3.java"


# static fields
.field public static final ACCESS_FIELD_TYPE:[B

.field public static final ADDITIONAL_FIELD_TYPE:[B

.field public static final BINARY_DATA_FIELD_TYPE:[B

.field public static final BINARY_DESC_FIELD_TYPE:[B

.field public static final CREATE_FIELD_TYPE:[B

.field public static final DATE_FIELD_SIZE:[B

.field public static final END_FIELD_TYPE:[B

.field public static final EXPIRE_FIELD_TYPE:[B

.field public static final FLAGS_FIELD_SIZE:[B

.field public static final GROUPID_FIELD_TYPE:[B

.field public static final IMAGEID_FIELD_SIZE:[B

.field public static final IMAGEID_FIELD_TYPE:[B

.field public static final LEVEL_FIELD_SIZE:[B

.field public static final LONG_FOUR:[B

.field public static final MOD_FIELD_TYPE:[B

.field public static final PASSWORD_FIELD_TYPE:[B

.field public static final TEST:[B

.field public static final TITLE_FIELD_TYPE:[B

.field public static final URL_FIELD_TYPE:[B

.field public static final USERNAME_FIELD_TYPE:[B

.field public static final UUID_FIELD_SIZE:[B

.field public static final UUID_FIELD_TYPE:[B

.field public static final ZERO_FIELD_SIZE:[B

.field public static final ZERO_FIVE:[B


# instance fields
.field private mOS:Ljava/io/OutputStream;

.field private mPE:Lcom/keepassdroid/database/PwEntryV3;

.field private outputBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->UUID_FIELD_TYPE:[B

    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->GROUPID_FIELD_TYPE:[B

    const/4 v0, 0x3

    .line 33
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->IMAGEID_FIELD_TYPE:[B

    const/4 v0, 0x4

    .line 34
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->TITLE_FIELD_TYPE:[B

    const/4 v1, 0x5

    .line 35
    invoke-static {v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->URL_FIELD_TYPE:[B

    const/4 v2, 0x6

    .line 36
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->USERNAME_FIELD_TYPE:[B

    const/4 v2, 0x7

    .line 37
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->PASSWORD_FIELD_TYPE:[B

    const/16 v2, 0x8

    .line 38
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ADDITIONAL_FIELD_TYPE:[B

    const/16 v2, 0x9

    .line 39
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->CREATE_FIELD_TYPE:[B

    const/16 v2, 0xa

    .line 40
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->MOD_FIELD_TYPE:[B

    const/16 v2, 0xb

    .line 41
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ACCESS_FIELD_TYPE:[B

    const/16 v2, 0xc

    .line 42
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->EXPIRE_FIELD_TYPE:[B

    const/16 v2, 0xd

    .line 43
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->BINARY_DESC_FIELD_TYPE:[B

    const/16 v2, 0xe

    .line 44
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->BINARY_DATA_FIELD_TYPE:[B

    const v2, 0xffff

    .line 45
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShortBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->END_FIELD_TYPE:[B

    .line 46
    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->LONG_FOUR:[B

    const/16 v3, 0x10

    .line 47
    invoke-static {v3}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v3

    sput-object v3, Lcom/keepassdroid/database/save/PwEntryOutputV3;->UUID_FIELD_SIZE:[B

    .line 48
    invoke-static {v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v3

    sput-object v3, Lcom/keepassdroid/database/save/PwEntryOutputV3;->DATE_FIELD_SIZE:[B

    .line 49
    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->IMAGEID_FIELD_SIZE:[B

    .line 50
    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->LEVEL_FIELD_SIZE:[B

    .line 51
    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->FLAGS_FIELD_SIZE:[B

    const/4 v2, 0x0

    .line 52
    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    sput-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ZERO_FIELD_SIZE:[B

    new-array v1, v1, [B

    .line 53
    fill-array-data v1, :array_0

    sput-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ZERO_FIVE:[B

    new-array v0, v0, [B

    .line 54
    fill-array-data v0, :array_1

    sput-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->TEST:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x33t
        0x33t
        0x33t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwEntryV3;Ljava/io/OutputStream;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 65
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    .line 66
    iput-object p2, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    return-void
.end method

.method private writeByteArray([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 147
    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->BINARY_DATA_FIELD_TYPE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 152
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    return v0
.end method

.method private writeDate([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 163
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->DATE_FIELD_SIZE:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p2, :cond_0

    .line 165
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object p2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ZERO_FIVE:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    return-wide v0
.end method

.method public output()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    const-wide/16 v2, 0x86

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 75
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->UUID_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 76
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->UUID_FIELD_SIZE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntryV3;->getUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 80
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->GROUPID_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 81
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->LONG_FOUR:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 82
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget v2, v2, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 85
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->IMAGEID_FIELD_TYPE:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 86
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 87
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    iget v1, v1, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    invoke-static {v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 91
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->TITLE_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 92
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    .line 93
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 96
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->URL_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 97
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    .line 98
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 101
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->USERNAME_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 102
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    .line 103
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 106
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getPasswordBytes()[B

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v2, Lcom/keepassdroid/database/save/PwEntryOutputV3;->PASSWORD_FIELD_TYPE:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 108
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 109
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 110
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 111
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 114
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ADDITIONAL_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 115
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    .line 116
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 119
    sget-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->CREATE_FIELD_TYPE:[B

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->getCDate()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->writeDate([B[B)V

    .line 122
    sget-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->MOD_FIELD_TYPE:[B

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->getCDate()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->writeDate([B[B)V

    .line 125
    sget-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ACCESS_FIELD_TYPE:[B

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->getCDate()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->writeDate([B[B)V

    .line 128
    sget-object v0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->EXPIRE_FIELD_TYPE:[B

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v1, v1, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDate;->getCDate()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->writeDate([B[B)V

    .line 131
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->BINARY_DESC_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 132
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Types;->writeCString(Ljava/lang/String;Ljava/io/OutputStream;)I

    move-result v0

    .line 133
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 136
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mPE:Lcom/keepassdroid/database/PwEntryV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV3;->getBinaryData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->writeByteArray([B)I

    move-result v0

    .line 137
    iget-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->outputBytes:J

    .line 140
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->END_FIELD_TYPE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 141
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwEntryOutputV3;->mOS:Ljava/io/OutputStream;

    sget-object v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;->ZERO_FIELD_SIZE:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
