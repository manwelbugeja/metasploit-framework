.class public Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;
.super Lcom/keepassdroid/database/save/PwDbHeaderOutput;
.source "PwDbHeaderOutputV4.java"


# static fields
.field private static EndHeaderValue:[B


# instance fields
.field private db:Lcom/keepassdroid/database/PwDatabaseV4;

.field private dos:Ljava/security/DigestOutputStream;

.field private header:Lcom/keepassdroid/database/PwDbHeaderV4;

.field public headerHmac:[B

.field private los:Lcom/keepassdroid/stream/LEDataOutputStream;

.field private mos:Lcom/keepassdroid/stream/MacOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->EndHeaderValue:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    const-string v0, "HmacSHA256"

    .line 55
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbHeaderOutput;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    .line 57
    iput-object p2, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    :try_start_0
    const-string p2, "SHA-256"

    .line 61
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    :try_start_1
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    iget-object v2, p1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    invoke-virtual {p1, v1, v2}, Lcom/keepassdroid/database/PwDatabaseV4;->makeFinalKey([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    :try_start_2
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 75
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV4;->hmacKey:[B

    sget-wide v3, Lcom/keepassdroid/utils/Types;->ULONG_MAX_VALUE:J

    invoke-static {v2, v3, v4}, Lcom/keepassdroid/stream/HmacBlockStream;->GetHmacKey64([BJ)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 76
    invoke-virtual {p1, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    new-instance v0, Ljava/security/DigestOutputStream;

    invoke-direct {v0, p3, p2}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->dos:Ljava/security/DigestOutputStream;

    .line 84
    new-instance p2, Lcom/keepassdroid/stream/MacOutputStream;

    iget-object p3, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->dos:Ljava/security/DigestOutputStream;

    invoke-direct {p2, p3, p1}, Lcom/keepassdroid/stream/MacOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Mac;)V

    iput-object p2, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->mos:Lcom/keepassdroid/stream/MacOutputStream;

    .line 85
    new-instance p1, Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->mos:Lcom/keepassdroid/stream/MacOutputStream;

    invoke-direct {p1, p2}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    return-void

    :catch_0
    move-exception p1

    .line 80
    new-instance p2, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 78
    new-instance p2, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 69
    new-instance p2, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 63
    :catch_3
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string p2, "SHA-256 not implemented here."

    invoke-direct {p1, p2}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeHeaderField(B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write(I)V

    if-eqz p2, :cond_0

    .line 135
    array-length p1, p2

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderFieldSize(I)V

    .line 136
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {p1, p2}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderFieldSize(I)V

    :goto_0
    return-void
.end method

.method private writeHeaderFieldSize(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 144
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public output()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const-wide/32 v1, -0x655d26fd

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUInt(J)V

    .line 91
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    const-wide/32 v1, -0x4ab40499

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUInt(J)V

    .line 92
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUInt(J)V

    .line 95
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    invoke-static {v0}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 96
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    iget v0, v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;->id:I

    invoke-static {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 97
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 99
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x5

    .line 100
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDbHeaderV4;->getTransformSeed()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    const/4 v0, 0x6

    .line 101
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-wide v4, v1, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    invoke-static {v4, v5}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLongBuf(J)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 103
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    invoke-static {v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->serialize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x7

    .line 107
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/16 v0, 0x8

    .line 111
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    const/16 v0, 0x9

    .line 112
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    const/16 v0, 0xa

    .line 113
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    iget v1, v1, Lcom/keepassdroid/database/CrsAlgorithm;->id:I

    invoke-static {v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeIntBuf(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

    invoke-virtual {v0}, Lcom/keepassdroid/collections/VariantDictionary;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 117
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    new-instance v1, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV4;->publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

    invoke-static {v2, v1}, Lcom/keepassdroid/collections/VariantDictionary;->serialize(Lcom/keepassdroid/collections/VariantDictionary;Lcom/keepassdroid/stream/LEDataOutputStream;)V

    const/16 v1, 0xc

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    :cond_3
    const/4 v0, 0x0

    .line 123
    sget-object v1, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->EndHeaderValue:[B

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->writeHeaderField(B[B)V

    .line 125
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->los:Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->flush()V

    .line 126
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->dos:Ljava/security/DigestOutputStream;

    invoke-virtual {v0}, Ljava/security/DigestOutputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->hashOfHeader:[B

    .line 127
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->mos:Lcom/keepassdroid/stream/MacOutputStream;

    invoke-virtual {v0}, Lcom/keepassdroid/stream/MacOutputStream;->getMac()[B

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->headerHmac:[B

    return-void
.end method
