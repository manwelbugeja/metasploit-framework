.class public Lcom/keepassdroid/database/load/ImporterV3;
.super Lcom/keepassdroid/database/load/Importer;
.source "ImporterV3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/keepassdroid/database/load/Importer;-><init>()V

    return-void
.end method

.method public static bsw32([BI)V
    .locals 3

    .line 321
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x3

    .line 322
    aget-byte v2, p0, v1

    aput-byte v2, p0, p1

    .line 323
    aput-byte v0, p0, v1

    add-int/lit8 v0, p1, 0x1

    .line 324
    aget-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x2

    .line 325
    aget-byte v2, p0, p1

    aput-byte v2, p0, v0

    .line 326
    aput-byte v1, p0, p1

    return-void
.end method

.method public static makePad([B)[B
    .locals 4

    .line 298
    array-length v0, p0

    const/16 v1, 0x20

    rem-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 306
    new-array v1, v0, [B

    const/16 v3, -0x80

    .line 307
    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, -0x8

    .line 311
    array-length v2, p0

    shr-int/lit8 v2, v2, 0x1d

    invoke-static {v2, v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I[BI)V

    .line 312
    invoke-static {v1, v0}, Lcom/keepassdroid/database/load/ImporterV3;->bsw32([BI)V

    add-int/lit8 v0, v0, 0x4

    .line 314
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0, v1, v0}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeInt(I[BI)V

    .line 315
    invoke-static {v1, v0}, Lcom/keepassdroid/database/load/ImporterV3;->bsw32([BI)V

    return-object v1
.end method


# virtual methods
.method protected createDB()Lcom/keepassdroid/database/PwDatabaseV3;
    .locals 1

    .line 102
    new-instance v0, Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwDatabaseV3;-><init>()V

    return-object v0
.end method

.method public bridge synthetic openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/keepassdroid/database/load/ImporterV3;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDatabaseV3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 95
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV3;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDatabaseV3;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 128
    new-instance v4, Lcom/keepassdroid/UpdateStatus;

    invoke-direct {v4}, Lcom/keepassdroid/UpdateStatus;-><init>()V

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/database/load/ImporterV3;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 138
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p5

    add-int/lit8 p6, p5, 0x10

    .line 139
    new-array p6, p6, [B

    const/4 v6, 0x0

    .line 140
    invoke-virtual {p1, p6, v6, p5}, Ljava/io/InputStream;->read([BII)I

    .line 141
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/16 p1, 0x7c

    if-lt p5, p1, :cond_b

    .line 146
    new-instance v7, Lcom/keepassdroid/database/PwDbHeaderV3;

    invoke-direct {v7}, Lcom/keepassdroid/database/PwDbHeaderV3;-><init>()V

    .line 147
    invoke-virtual {v7, p6, v6}, Lcom/keepassdroid/database/PwDbHeaderV3;->loadFromFile([BI)V

    .line 149
    iget v0, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->signature1:I

    const v1, -0x655d26fd

    if-ne v0, v1, :cond_a

    iget v0, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->signature2:I

    const v1, -0x4ab4049b

    if-ne v0, v1, :cond_a

    .line 153
    invoke-virtual {v7}, Lcom/keepassdroid/database/PwDbHeaderV3;->matchesVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f100057

    .line 157
    invoke-virtual {p4, v0}, Lcom/keepassdroid/UpdateStatus;->updateMessage(I)V

    .line 158
    invoke-virtual {p0}, Lcom/keepassdroid/database/load/ImporterV3;->createDB()Lcom/keepassdroid/database/PwDatabaseV3;

    move-result-object v8

    .line 159
    invoke-virtual {v8, p2, p3}, Lcom/keepassdroid/database/PwDatabaseV3;->setMasterKey(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 162
    iget p2, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    const/4 p3, 0x2

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 163
    sget-object p2, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    iput-object p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    goto :goto_0

    .line 164
    :cond_0
    iget p2, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->flags:I

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_8

    .line 165
    sget-object p2, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Twofish:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    iput-object p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    .line 171
    :goto_0
    invoke-virtual {v8, v7}, Lcom/keepassdroid/database/PwDatabaseV3;->copyHeader(Lcom/keepassdroid/database/PwDbHeaderV3;)V

    .line 173
    iget p2, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->numKeyEncRounds:I

    iput p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    const-string p2, "KeePass Password Manager"

    .line 175
    iput-object p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->name:Ljava/lang/String;

    .line 178
    iget-object p2, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->masterSeed:[B

    iget-object v0, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->transformSeed:[B

    iget v1, v8, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    invoke-virtual {v8, p2, v0, v1}, Lcom/keepassdroid/database/PwDatabaseV3;->makeFinalKey([B[BI)V

    const p2, 0x7f10005a

    .line 180
    invoke-virtual {p4, p2}, Lcom/keepassdroid/UpdateStatus;->updateMessage(I)V

    .line 184
    :try_start_0
    iget-object p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    sget-object p4, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne p2, p4, :cond_1

    const-string p2, "AES/CBC/PKCS5Padding"

    .line 185
    invoke-static {p2}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    :goto_1
    move-object v0, p2

    goto :goto_2

    .line 186
    :cond_1
    iget-object p2, v8, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    sget-object p4, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Twofish:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne p2, p4, :cond_7

    const-string p2, "Twofish/CBC/PKCS7Padding"

    .line 187
    invoke-static {p2}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_1

    .line 199
    :goto_2
    :try_start_1
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object p4, v8, Lcom/keepassdroid/database/PwDatabaseV3;->finalKey:[B

    const-string v1, "AES"

    invoke-direct {p2, p4, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p4, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->encryptionIV:[B

    invoke-direct {p4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, p3, p2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v2, 0x7c

    add-int/lit8 v3, p5, -0x7c

    const/16 v5, 0x7c

    move-object v1, p6

    move-object v4, p6

    .line 209
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 219
    invoke-virtual {v8, p6, p1, p2}, Lcom/keepassdroid/database/PwDatabaseV3;->copyEncrypted([BII)V

    :try_start_3
    const-string p3, "SHA-256"

    .line 223
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0

    .line 227
    new-instance p4, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {p4}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 228
    new-instance p5, Ljava/security/DigestOutputStream;

    invoke-direct {p5, p4, p3}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 229
    invoke-virtual {p5, p6, p1, p2}, Ljava/security/DigestOutputStream;->write([BII)V

    .line 230
    invoke-virtual {p5}, Ljava/security/DigestOutputStream;->close()V

    .line 231
    invoke-virtual {p3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    .line 233
    iget-object p3, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->contentsHash:[B

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 242
    new-instance p2, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p2}, Lcom/keepassdroid/database/PwGroupV3;-><init>()V

    const/4 p3, 0x0

    .line 243
    :goto_3
    iget p4, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->numGroups:I

    const p5, 0xffff

    if-ge p3, p4, :cond_3

    .line 244
    invoke-static {p6, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort([BI)I

    move-result v3

    add-int/lit8 p1, p1, 0x2

    .line 246
    invoke-static {p6, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p4

    add-int/lit8 p1, p1, 0x4

    if-ne v3, p5, :cond_2

    .line 252
    invoke-virtual {p2, v8}, Lcom/keepassdroid/database/PwGroupV3;->populateBlankFields(Lcom/keepassdroid/database/PwDatabaseV3;)V

    .line 253
    iget-object p5, v8, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance p2, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p2}, Lcom/keepassdroid/database/PwGroupV3;-><init>()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_2
    move-object v0, p0

    move-object v1, v8

    move-object v2, p2

    move-object v4, p6

    move v5, p1

    .line 258
    invoke-virtual/range {v0 .. v5}, Lcom/keepassdroid/database/load/ImporterV3;->readGroupField(Lcom/keepassdroid/database/PwDatabaseV3;Lcom/keepassdroid/database/PwGroupV3;I[BI)V

    :goto_4
    add-int/2addr p1, p4

    goto :goto_3

    .line 264
    :cond_3
    new-instance p2, Lcom/keepassdroid/database/PwEntryV3;

    invoke-direct {p2}, Lcom/keepassdroid/database/PwEntryV3;-><init>()V

    .line 265
    :goto_5
    iget p3, v7, Lcom/keepassdroid/database/PwDbHeaderV3;->numEntries:I

    if-ge v6, p3, :cond_5

    .line 266
    invoke-static {p6, p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort([BI)I

    move-result p3

    add-int/lit8 p4, p1, 0x2

    .line 267
    invoke-static {p6, p4}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p4

    if-ne p3, p5, :cond_4

    .line 271
    invoke-virtual {p2, v8}, Lcom/keepassdroid/database/PwEntryV3;->populateBlankFields(Lcom/keepassdroid/database/PwDatabaseV3;)V

    .line 272
    iget-object p3, v8, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance p2, Lcom/keepassdroid/database/PwEntryV3;

    invoke-direct {p2}, Lcom/keepassdroid/database/PwEntryV3;-><init>()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 277
    :cond_4
    invoke-virtual {p0, v8, p2, p6, p1}, Lcom/keepassdroid/database/load/ImporterV3;->readEntryField(Lcom/keepassdroid/database/PwDatabaseV3;Lcom/keepassdroid/database/PwEntryV3;[BI)V

    :goto_6
    add-int/lit8 p4, p4, 0x6

    add-int/2addr p1, p4

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    .line 282
    invoke-virtual {v8, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->constructTree(Lcom/keepassdroid/database/PwGroupV3;)V

    return-object v8

    :cond_6
    const-string p1, "KeePassDroid"

    const-string p2, "Database file did not decrypt correctly. (checksum code is broken)"

    .line 235
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidPasswordException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidPasswordException;-><init>()V

    throw p1

    .line 225
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No SHA-256 algorithm"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :catch_1
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidPasswordException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidPasswordException;-><init>()V

    throw p1

    .line 213
    :catch_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid block size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :catch_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Buffer too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :catch_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid algorithm parameter."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :catch_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_7
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Encryption algorithm is not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_6

    .line 195
    :catch_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No such padding"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :catch_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No such algorithm"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_8
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidAlgorithmException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidAlgorithmException;-><init>()V

    throw p1

    .line 154
    :cond_9
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBVersionException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBVersionException;-><init>()V

    throw p1

    .line 150
    :cond_a
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBSignatureException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBSignatureException;-><init>()V

    throw p1

    .line 145
    :cond_b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File too short for header"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method readEntryField(Lcom/keepassdroid/database/PwDatabaseV3;Lcom/keepassdroid/database/PwEntryV3;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 377
    invoke-static {p3, p4}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort([BI)I

    move-result v0

    add-int/lit8 p4, p4, 0x2

    .line 379
    invoke-static {p3, p4}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result v1

    add-int/lit8 p4, p4, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 433
    :pswitch_0
    invoke-virtual {p2, p3, p4, v1}, Lcom/keepassdroid/database/PwEntryV3;->setBinaryData([BII)V

    goto/16 :goto_0

    .line 430
    :pswitch_1
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->binaryDesc:Ljava/lang/String;

    goto :goto_0

    .line 427
    :pswitch_2
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p3, p4}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 424
    :pswitch_3
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p3, p4}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 421
    :pswitch_4
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p3, p4}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 418
    :pswitch_5
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p3, p4}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 415
    :pswitch_6
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->additional:Ljava/lang/String;

    goto :goto_0

    .line 412
    :pswitch_7
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->strlen([BI)I

    move-result p1

    invoke-virtual {p2, p3, p4, p1}, Lcom/keepassdroid/database/PwEntryV3;->setPassword([BII)V

    goto :goto_0

    .line 409
    :pswitch_8
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->username:Ljava/lang/String;

    goto :goto_0

    .line 406
    :pswitch_9
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->url:Ljava/lang/String;

    goto :goto_0

    .line 403
    :pswitch_a
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->title:Ljava/lang/String;

    goto :goto_0

    .line 393
    :pswitch_b
    invoke-static {p3, p4}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p3

    const/4 p4, -0x1

    if-ne p3, p4, :cond_0

    const/4 p3, 0x0

    .line 400
    :cond_0
    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV3;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-virtual {p1, p3}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwEntryV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto :goto_0

    .line 390
    :pswitch_c
    invoke-static {p3, p4}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    iput p1, p2, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    goto :goto_0

    .line 387
    :pswitch_d
    invoke-static {p3, p4}, Lcom/keepassdroid/utils/Types;->bytestoUUID([BI)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/keepassdroid/database/PwEntryV3;->setUUID(Ljava/util/UUID;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method readGroupField(Lcom/keepassdroid/database/PwDatabaseV3;Lcom/keepassdroid/database/PwGroupV3;I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    invoke-static {p4, p5}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    iput p1, p2, Lcom/keepassdroid/database/PwGroupV3;->flags:I

    goto :goto_0

    .line 364
    :pswitch_1
    invoke-static {p4, p5}, Lcom/keepassdroid/stream/LEDataInputStream;->readUShort([BI)I

    move-result p1

    iput p1, p2, Lcom/keepassdroid/database/PwGroupV3;->level:I

    goto :goto_0

    .line 361
    :pswitch_2
    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV3;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-static {p4, p5}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto :goto_0

    .line 358
    :pswitch_3
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p4, p5}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->tExpire:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 355
    :pswitch_4
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p4, p5}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->tLastAccess:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 352
    :pswitch_5
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p4, p5}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->tLastMod:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 349
    :pswitch_6
    new-instance p1, Lcom/keepassdroid/database/PwDate;

    invoke-direct {p1, p4, p5}, Lcom/keepassdroid/database/PwDate;-><init>([BI)V

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->tCreation:Lcom/keepassdroid/database/PwDate;

    goto :goto_0

    .line 346
    :pswitch_7
    invoke-static {p4, p5}, Lcom/keepassdroid/utils/Types;->readCString([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/keepassdroid/database/PwGroupV3;->name:Ljava/lang/String;

    goto :goto_0

    .line 343
    :pswitch_8
    invoke-static {p4, p5}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt([BI)I

    move-result p1

    iput p1, p2, Lcom/keepassdroid/database/PwGroupV3;->groupId:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
