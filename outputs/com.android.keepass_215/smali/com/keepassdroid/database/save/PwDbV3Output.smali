.class public Lcom/keepassdroid/database/save/PwDbV3Output;
.super Lcom/keepassdroid/database/save/PwDbOutput;
.source "PwDbV3Output.java"


# instance fields
.field private headerHashBlock:[B

.field private mPM:Lcom/keepassdroid/database/PwDatabaseV3;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV3;Ljava/io/OutputStream;)V
    .locals 0

    .line 57
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/save/PwDbOutput;-><init>(Ljava/io/OutputStream;)V

    .line 59
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    return-void
.end method

.method private getHeaderHashBuffer([B)[B
    .locals 1

    .line 269
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->writeExtData([BLjava/io/OutputStream;)V

    .line 272
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private prepForOutput()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV3Output;->sortGroupsForOutput()V

    return-void
.end method

.method private sortGroup(Lcom/keepassdroid/database/PwGroupV3;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/PwGroupV3;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;)V"
        }
    .end annotation

    .line 260
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 263
    :goto_0
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p0, v1, p2}, Lcom/keepassdroid/database/save/PwDbV3Output;->sortGroup(Lcom/keepassdroid/database/PwGroupV3;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sortGroupsForOutput()V
    .locals 4

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDatabaseV3;->getGrpRoots()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 251
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 252
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->sortGroup(Lcom/keepassdroid/database/PwGroupV3;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v1, v0}, Lcom/keepassdroid/database/PwDatabaseV3;->setGroups(Ljava/util/List;)V

    return-void
.end method

.method private writeExtData([BLjava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    new-instance v0, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v0, p2}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    array-length p2, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/keepassdroid/database/save/PwDbV3Output;->writeExtDataField(Lcom/keepassdroid/stream/LEDataOutputStream;I[BI)V

    const/16 p1, 0x20

    new-array p2, p1, [B

    .line 283
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 284
    invoke-virtual {v1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x2

    .line 285
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/keepassdroid/database/save/PwDbV3Output;->writeExtDataField(Lcom/keepassdroid/stream/LEDataOutputStream;I[BI)V

    const p1, 0xffff

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/keepassdroid/database/save/PwDbV3Output;->writeExtDataField(Lcom/keepassdroid/stream/LEDataOutputStream;I[BI)V

    return-void
.end method

.method private writeExtDataField(Lcom/keepassdroid/stream/LEDataOutputStream;I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    invoke-virtual {p1, p2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I)V

    .line 292
    invoke-virtual {p1, p4}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    if-eqz p3, :cond_0

    .line 294
    invoke-virtual {p1, p3}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFinalKey(Lcom/keepassdroid/database/PwDbHeader;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 65
    :try_start_0
    check-cast p1, Lcom/keepassdroid/database/PwDbHeaderV3;

    .line 66
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget v2, v2, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/keepassdroid/database/PwDatabaseV3;->makeFinalKey([B[BI)V

    .line 67
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV3;->finalKey:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 69
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key creation failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public output()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV3Output;->prepForOutput()V

    .line 77
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mOS:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeaderV3;

    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->getFinalKey(Lcom/keepassdroid/database/PwDbHeader;)[B

    move-result-object v1

    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    sget-object v3, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne v2, v3, :cond_0

    const-string v2, "AES/CBC/PKCS5Padding"

    .line 84
    invoke-static {v2}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    sget-object v3, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Twofish:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne v2, v3, :cond_1

    const-string v2, "Twofish/CBC/PKCS7PADDING"

    .line 86
    invoke-static {v2}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v3, 0x1

    .line 95
    :try_start_1
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDbHeader;->encryptionIV:[B

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 96
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mOS:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 97
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/keepassdroid/database/save/PwDbV3Output;->outputPlanGroupAndEntries(Ljava/io/OutputStream;)V

    .line 99
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 100
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 107
    :catch_0
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v1, "Failed to output final encrypted part."

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_1
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v1, "Invalid algorithm parameter."

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catch_2
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v1, "Invalid key"

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 91
    :catch_3
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v1, "Algorithm not supported."

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/save/PwDbV3Output;->outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeaderV3;

    move-result-object p1

    return-object p1
.end method

.method public outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeaderV3;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    const-string v0, "SHA-256 not implemented here."

    const-string v1, "SHA-256"

    .line 128
    new-instance v2, Lcom/keepassdroid/database/PwDbHeaderV3;

    invoke-direct {v2}, Lcom/keepassdroid/database/PwDbHeaderV3;-><init>()V

    const v3, -0x655d26fd

    .line 129
    iput v3, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->signature1:I

    const v3, -0x4ab4049b

    .line 130
    iput v3, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->signature2:I

    const/4 v3, 0x1

    .line 131
    iput v3, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    .line 133
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v4}, Lcom/keepassdroid/database/PwDatabaseV3;->getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    move-result-object v4

    sget-object v5, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne v4, v5, :cond_0

    .line 134
    iget v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    goto :goto_0

    .line 135
    :cond_0
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v4}, Lcom/keepassdroid/database/PwDatabaseV3;->getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    move-result-object v4

    sget-object v5, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Twofish:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne v4, v5, :cond_1

    .line 136
    iget v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    :goto_0
    const v4, 0x30003

    .line 141
    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->version:I

    .line 142
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v4}, Lcom/keepassdroid/database/PwDatabaseV3;->getGroups()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->numGroups:I

    .line 143
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->numEntries:I

    .line 144
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v4}, Lcom/keepassdroid/database/PwDatabaseV3;->getNumKeyEncRecords()I

    move-result v4

    iput v4, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->numKeyEncRounds:I

    .line 146
    invoke-virtual {p0, v2}, Lcom/keepassdroid/database/save/PwDbV3Output;->setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;

    .line 151
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .line 159
    :try_start_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    .line 164
    new-instance v1, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {v1}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 165
    new-instance v5, Ljava/security/DigestOutputStream;

    invoke-direct {v5, v1, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 168
    new-instance v1, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;

    invoke-direct {v1, v2, v5}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;-><init>(Lcom/keepassdroid/database/PwDbHeaderV3;Ljava/io/OutputStream;)V

    .line 170
    :try_start_2
    invoke-virtual {v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;->outputStart()V

    .line 171
    invoke-virtual {v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;->outputEnd()V

    .line 172
    invoke-virtual {v5}, Ljava/security/DigestOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->getHeaderHashBuffer([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->headerHashBlock:[B

    .line 180
    new-instance v0, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {v0}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 181
    new-instance v1, Ljava/security/DigestOutputStream;

    invoke-direct {v1, v0, v4}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 182
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 184
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/save/PwDbV3Output;->outputPlanGroupAndEntries(Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 186
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 191
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, v2, Lcom/keepassdroid/database/PwDbHeaderV3;->contentsHash:[B

    .line 194
    new-instance v0, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;

    invoke-direct {v0, v2, p1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;-><init>(Lcom/keepassdroid/database/PwDbHeaderV3;Ljava/io/OutputStream;)V

    .line 196
    :try_start_4
    invoke-virtual {v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;->outputStart()V

    const/4 p1, 0x0

    .line 197
    invoke-virtual {v1, p1}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 198
    invoke-virtual {v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;->outputContentHash()V

    .line 199
    invoke-virtual {v1, v3}, Ljava/security/DigestOutputStream;->on(Z)V

    .line 200
    invoke-virtual {v0}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV3;->outputEnd()V

    .line 201
    invoke-virtual {v1}, Ljava/security/DigestOutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 203
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 188
    :catch_1
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Failed to generate checksum."

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 174
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 161
    :catch_3
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :catch_4
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_1
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Unsupported algorithm."

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public outputPlanGroupAndEntries(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 210
    new-instance v0, Lcom/keepassdroid/stream/LEDataOutputStream;

    invoke-direct {v0, p1}, Lcom/keepassdroid/stream/LEDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 212
    invoke-virtual {p0}, Lcom/keepassdroid/database/save/PwDbV3Output;->useHeaderHash()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->headerHashBlock:[B

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeUShort(I)V

    .line 215
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->headerHashBlock:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I)V

    .line 216
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->headerHashBlock:[B

    invoke-virtual {v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to output header hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDatabaseV3;->getGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 224
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwGroupV3;

    .line 226
    new-instance v4, Lcom/keepassdroid/database/save/PwGroupOutputV3;

    invoke-direct {v4, v3, p1}, Lcom/keepassdroid/database/save/PwGroupOutputV3;-><init>(Lcom/keepassdroid/database/PwGroupV3;Ljava/io/OutputStream;)V

    .line 228
    :try_start_1
    invoke-virtual {v4}, Lcom/keepassdroid/database/save/PwGroupOutputV3;->output()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 230
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to output a group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV3Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV3;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV3;

    .line 237
    new-instance v1, Lcom/keepassdroid/database/save/PwEntryOutputV3;

    invoke-direct {v1, v0, p1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;-><init>(Lcom/keepassdroid/database/PwEntryV3;Ljava/io/OutputStream;)V

    .line 239
    :try_start_2
    invoke-virtual {v1}, Lcom/keepassdroid/database/save/PwEntryOutputV3;->output()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 241
    :catch_2
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Failed to output an entry."

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method protected setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcom/keepassdroid/database/save/PwDbOutput;->setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 120
    check-cast p1, Lcom/keepassdroid/database/PwDbHeaderV3;

    .line 121
    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method protected useHeaderHash()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
