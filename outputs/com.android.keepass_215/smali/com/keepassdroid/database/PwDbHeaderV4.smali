.class public Lcom/keepassdroid/database/PwDbHeaderV4;
.super Lcom/keepassdroid/database/PwDbHeader;
.source "PwDbHeaderV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;,
        Lcom/keepassdroid/database/PwDbHeaderV4$KdbxBinaryFlags;,
        Lcom/keepassdroid/database/PwDbHeaderV4$PwDbInnerHeaderV4Fields;,
        Lcom/keepassdroid/database/PwDbHeaderV4$PwDbHeaderV4Fields;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DBSIG_2:I = -0x4ab40499

.field public static final DBSIG_PRE2:I = -0x4ab4049a

.field public static final FILE_VERSION_32:I = 0x40001

.field public static final FILE_VERSION_32_3:I = 0x30001

.field public static final FILE_VERSION_32_4:I = 0x40000

.field public static final FILE_VERSION_32_4_1:I = 0x40001

.field private static final FILE_VERSION_CRITICAL_MASK:I = -0x10000


# instance fields
.field private db:Lcom/keepassdroid/database/PwDatabaseV4;

.field public innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

.field public innerRandomStreamKey:[B

.field public streamStartBytes:[B

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;)V
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDbHeader;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 95
    iput-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    new-array v1, v0, [B

    .line 96
    iput-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    .line 101
    iput-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    const-wide/16 v1, 0x0

    .line 102
    iput-wide v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    new-array p1, v0, [B

    .line 103
    iput-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    return-void
.end method

.method public static computeHeaderHmac([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 306
    sget-wide v1, Lcom/keepassdroid/utils/Types;->ULONG_MAX_VALUE:J

    invoke-static {p1, v1, v2}, Lcom/keepassdroid/stream/HmacBlockStream;->GetHmacKey64([BJ)[B

    move-result-object p1

    .line 310
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 311
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 312
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0

    .line 316
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid Hmac Key"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :catch_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No HmacAlogirthm"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static matchesHeader(II)Z
    .locals 1

    const v0, -0x655d26fd

    if-ne p0, v0, :cond_1

    const p0, -0x4ab4049a

    if-eq p1, p0, :cond_0

    const p0, -0x4ab40499

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readHeaderField(Lcom/keepassdroid/stream/LEDataInputStream;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/keepassdroid/stream/LEDataInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 149
    iget-wide v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v3, 0x40000

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort()I

    move-result v1

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 157
    new-array v2, v1, [B

    .line 159
    invoke-virtual {p1, v2}, Lcom/keepassdroid/stream/LEDataInputStream;->read([B)I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Header ended early."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 229
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-static {v2}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->deserialize([B)Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v1

    iput-object v1, v0, Lcom/keepassdroid/database/PwDatabaseV4;->publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

    goto/16 :goto_2

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-static {v2}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->deserialize([B)Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v1

    iput-object v1, v0, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    goto :goto_2

    .line 217
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/keepassdroid/database/PwDbHeaderV4;->setRandomStreamID([B)V

    goto :goto_2

    .line 212
    :pswitch_3
    iput-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    goto :goto_2

    .line 208
    :pswitch_4
    iput-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    goto :goto_2

    .line 203
    :pswitch_5
    iput-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    goto :goto_2

    .line 193
    :pswitch_6
    new-instance v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;

    invoke-direct {v0}, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;-><init>()V

    .line 194
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    iget-object v1, v1, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-virtual {v0}, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    .line 197
    :cond_3
    invoke-static {v2, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v0

    .line 198
    iget-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    const-string v3, "R"

    invoke-virtual {v2, v3, v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt64(Ljava/lang/String;J)V

    .line 199
    iget-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iput-wide v0, v2, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    goto :goto_2

    .line 183
    :pswitch_7
    new-instance v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;

    invoke-direct {v0}, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    iget-object v1, v1, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    iget-object v3, v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-virtual {v0}, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    iput-object v0, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    const-string v1, "S"

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setByteArray(Ljava/lang/String;[B)V

    goto :goto_2

    .line 178
    :pswitch_8
    iput-object v2, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    goto :goto_2

    .line 174
    :pswitch_9
    invoke-direct {p0, v2}, Lcom/keepassdroid/database/PwDbHeaderV4;->setCompressionFlags([B)V

    goto :goto_2

    .line 170
    :pswitch_a
    invoke-direct {p0, v2}, Lcom/keepassdroid/database/PwDbHeaderV4;->setCipher([B)V

    :goto_2
    return p1

    :cond_5
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setCipher([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 237
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, v0, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid cipher ID."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setCompressionFlags([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 245
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 249
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-static {p1}, Lcom/keepassdroid/database/PwCompressionAlgorithm;->fromId(I)Lcom/keepassdroid/database/PwCompressionAlgorithm;

    move-result-object p1

    iput-object p1, v0, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    return-void

    .line 251
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unrecognized compression flag."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid compression flags."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setTransformRounds([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 259
    array-length v0, p1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 263
    invoke-static {p1, v0}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 270
    iget-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iput-wide v0, p1, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    return-void

    .line 267
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Rounds higher than 2147483647 are not currently supported."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid rounds."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validVersion(J)Z
    .locals 3

    const-wide/32 v0, -0x10000

    and-long/2addr p1, v0

    const-wide/32 v0, 0x40000

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getTransformSeed()[B
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public loadFromFile(Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBVersionException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-256"

    .line 114
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    new-instance v2, Lcom/keepassdroid/stream/CopyInputStream;

    invoke-direct {v2, p1, v1}, Lcom/keepassdroid/stream/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 121
    new-instance p1, Ljava/security/DigestInputStream;

    invoke-direct {p1, v2, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 122
    new-instance v2, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {v2, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    invoke-virtual {v2}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result p1

    .line 125
    invoke-virtual {v2}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result v3

    .line 127
    invoke-static {p1, v3}, Lcom/keepassdroid/database/PwDbHeaderV4;->matchesHeader(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {v2}, Lcom/keepassdroid/stream/LEDataInputStream;->readUInt()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    .line 132
    invoke-direct {p0, v3, v4}, Lcom/keepassdroid/database/PwDbHeaderV4;->validVersion(J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 138
    invoke-direct {p0, v2}, Lcom/keepassdroid/database/PwDbHeaderV4;->readHeaderField(Lcom/keepassdroid/stream/LEDataInputStream;)Z

    move-result p1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 142
    new-instance v0, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;-><init>(Lcom/keepassdroid/database/PwDbHeaderV4;[B[B)V

    return-object v0

    .line 133
    :cond_1
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBVersionException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBVersionException;-><init>()V

    throw p1

    .line 128
    :cond_2
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBVersionException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBVersionException;-><init>()V

    throw p1

    .line 116
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "No SHA-256 implementation"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setRandomStreamID([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid stream id."

    if-eqz p1, :cond_1

    .line 275
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 279
    invoke-static {p1, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    .line 284
    invoke-static {p1}, Lcom/keepassdroid/database/CrsAlgorithm;->fromId(I)Lcom/keepassdroid/database/CrsAlgorithm;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    return-void

    .line 281
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
