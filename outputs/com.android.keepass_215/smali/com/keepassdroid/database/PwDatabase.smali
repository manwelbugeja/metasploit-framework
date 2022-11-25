.class public abstract Lcom/keepassdroid/database/PwDatabase;
.super Ljava/lang/Object;
.source "PwDatabase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field public finalKey:[B

.field public groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/keepassdroid/database/PwGroupId;",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field public iconFactory:Lcom/keepassdroid/database/PwIconFactory;

.field public masterKey:[B

.field public name:Ljava/lang/String;

.field public rootGroup:Lcom/keepassdroid/database/PwGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 44
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->masterKey:[B

    const-string v0, "KeePass database"

    .line 46
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->name:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/keepassdroid/database/PwIconFactory;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwIconFactory;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    return-void
.end method

.method public static getNewDBInstance(Ljava/lang/String;)Lcom/keepassdroid/database/PwDatabase;
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/keepassdroid/database/PwDatabase;->isKDBExtension(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 64
    new-instance p0, Lcom/keepassdroid/database/PwDatabaseV3;

    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabaseV3;-><init>()V

    return-object p0

    .line 66
    :cond_0
    new-instance p0, Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabaseV4;-><init>()V

    return-object p0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 183
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 186
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static isKDBExtension(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "."

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".kdb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected static transformMasterKey([B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-static {}, Lcom/keepassdroid/crypto/finalkey/FinalKeyFactory;->createFinalKey()Lcom/keepassdroid/crypto/finalkey/FinalKey;

    move-result-object v0

    int-to-long v1, p2

    .line 98
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/keepassdroid/crypto/finalkey/FinalKey;->transformMasterKey([B[BJ)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 276
    iget-object v0, p2, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/PwEntry;->setParent(Lcom/keepassdroid/database/PwGroup;)V

    .line 280
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addGroupTo(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V
    .locals 2

    if-nez p2, :cond_0

    .line 256
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    .line 259
    :cond_0
    iget-object v0, p2, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/PwGroup;->setParent(Lcom/keepassdroid/database/PwGroup;)V

    .line 261
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 263
    invoke-virtual {p2, p1, p1}, Lcom/keepassdroid/database/PwGroup;->touch(ZZ)V

    return-void
.end method

.method public abstract appSettingsEnabled()Z
.end method

.method public canRecycle(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canRecycle(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract clearCache()V
.end method

.method public abstract createGroup()Lcom/keepassdroid/database/PwGroup;
.end method

.method public deleteEntry(Lcom/keepassdroid/database/PwEntry;)V
    .locals 2

    .line 352
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    .line 353
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/PwDatabase;->removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/database/PwGroup;->touch(ZZ)V

    return-void
.end method

.method protected getCompositeKey(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidKeyFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/PwDatabase;->getFileKey(Ljava/io/InputStream;)[B

    move-result-object p2

    .line 117
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabase;->getPasswordKey(Ljava/lang/String;)[B

    move-result-object p1

    :try_start_0
    const-string v0, "SHA-256"

    .line 121
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 128
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1

    .line 123
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SHA-256 not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;
.end method

.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end method

.method protected getFileKey(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidKeyFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    invoke-static {p1, v0}, Lcom/keepassdroid/utils/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 139
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwDatabase;->loadXmlKeyFile(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 145
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const-wide/16 v2, 0x20

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x40

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 154
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/keepassdroid/database/PwDatabase;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :try_start_1
    const-string v0, "SHA-256"

    .line 162
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 173
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 164
    :catch_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SHA-256 not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_3
    new-instance p1, Lcom/keepassdroid/database/exception/KeyFileEmptyException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/KeyFileEmptyException;-><init>()V

    throw p1
.end method

.method public abstract getGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGrpRoots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMasterKey(Ljava/lang/String;Ljava/io/InputStream;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidKeyFileException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNumRounds()J
.end method

.method protected abstract getPasswordEncoding()Ljava/lang/String;
.end method

.method public getPasswordKey(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "SHA-256"

    .line 222
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabase;->getPasswordEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    .line 234
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 236
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1

    .line 224
    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "SHA-256 not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRecycleBin()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initNew(Ljava/lang/String;)V
.end method

.method public abstract isBackup(Lcom/keepassdroid/database/PwGroup;)Z
.end method

.method protected isGroupIdUsed(Lcom/keepassdroid/database/PwGroupId;)Z
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabase;->getGroups()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 303
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 304
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwGroup;

    .line 305
    invoke-virtual {v3}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract loadXmlKeyFile(Ljava/io/InputStream;)[B
.end method

.method public makeFinalKey([B[BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA-256"

    .line 75
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    new-instance v1, Lcom/keepassdroid/stream/NullOutputStream;

    invoke-direct {v1}, Lcom/keepassdroid/stream/NullOutputStream;-><init>()V

    .line 80
    new-instance v2, Ljava/security/DigestOutputStream;

    invoke-direct {v2, v1, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    .line 82
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabase;->masterKey:[B

    invoke-static {p2, v1, p3}, Lcom/keepassdroid/database/PwDatabase;->transformMasterKey([B[BI)[B

    move-result-object p2

    .line 83
    invoke-virtual {v2, p1}, Ljava/security/DigestOutputStream;->write([B)V

    .line 84
    invoke-virtual {v2, p2}, Ljava/security/DigestOutputStream;->write([B)V

    .line 86
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabase;->finalKey:[B

    return-void

    .line 77
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SHA-256 not implemented here."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract newGroupId()Lcom/keepassdroid/database/PwGroupId;
.end method

.method public populateGlobals(Lcom/keepassdroid/database/PwGroup;)V
    .locals 6

    .line 319
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    .line 320
    iget-object p1, p1, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 322
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 323
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwEntry;

    .line 324
    iget-object v4, p0, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    .line 329
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabase;->populateGlobals(Lcom/keepassdroid/database/PwGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public recycle(Lcom/keepassdroid/database/PwEntry;)V
    .locals 1

    .line 344
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Call not valid for .kdb databases."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 286
    iget-object p2, p2, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeGroupFrom(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 268
    iget-object p2, p2, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 270
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMasterKey(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidKeyFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->getMasterKey(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabase;->masterKey:[B

    return-void
.end method

.method public abstract setNumRounds(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation
.end method

.method public undoDeleteEntry(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public undoRecycle(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 348
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Call not valid for .kdb databases."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validatePasswordEncoding(Ljava/lang/String;)Z
    .locals 4

    .line 192
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabase;->getPasswordEncoding()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 196
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_0
    return v1
.end method
