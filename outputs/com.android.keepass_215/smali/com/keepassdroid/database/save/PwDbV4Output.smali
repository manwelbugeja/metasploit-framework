.class public Lcom/keepassdroid/database/save/PwDbV4Output;
.super Lcom/keepassdroid/database/save/PwDbOutput;
.source "PwDbV4Output.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;,
        Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private engine:Lcom/keepassdroid/crypto/engine/CipherEngine;

.field private hashOfHeader:[B

.field private header:Lcom/keepassdroid/database/PwDbHeaderV4;

.field private headerHmac:[B

.field mPM:Lcom/keepassdroid/database/PwDatabaseV4;

.field private randomStream:Lorg/bouncycastle/crypto/StreamCipher;

.field private xml:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;Ljava/io/OutputStream;)V
    .locals 0

    .line 176
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/save/PwDbOutput;-><init>(Ljava/io/OutputStream;)V

    const/4 p2, 0x0

    .line 173
    iput-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->engine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    .line 178
    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->startGroup(Lcom/keepassdroid/database/PwGroupV4;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keepassdroid/database/save/PwDbV4Output;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV4Output;->endGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/PwEntryV4;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeEntry(Lcom/keepassdroid/database/PwEntryV4;Z)V

    return-void
.end method

.method private attachStreamEncryptor(Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->engine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV4;->finalKey:[B

    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    invoke-virtual {v0, v1, v2, p1}, Lcom/keepassdroid/crypto/engine/CipherEngine;->getCipher(I[B[B)Ljavax/crypto/Cipher;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    new-instance v0, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v0, p2, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 373
    new-instance p2, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Invalid algorithm."

    invoke-direct {p2, v0, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private endGroup()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Group"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private outputDatabase(Ljava/io/OutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "UTF-8"

    .line 290
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 291
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 293
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "KeePassFile"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeMeta()V

    .line 297
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    .line 298
    iget-object v3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "Root"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->startGroup(Lcom/keepassdroid/database/PwGroupV4;)V

    .line 300
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 301
    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v5, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;

    invoke-direct {v5, p0, v3}, Lcom/keepassdroid/database/save/PwDbV4Output$GroupWriter;-><init>(Lcom/keepassdroid/database/save/PwDbV4Output;Ljava/util/Stack;)V

    new-instance v6, Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;

    invoke-direct {v6, p0, v1}, Lcom/keepassdroid/database/save/PwDbV4Output$EntryWriter;-><init>(Lcom/keepassdroid/database/save/PwDbV4Output;Lcom/keepassdroid/database/save/PwDbV4Output$1;)V

    invoke-virtual {p1, v5, v6}, Lcom/keepassdroid/database/PwGroupV4;->preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    :goto_0
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result p1

    if-le p1, v0, :cond_0

    .line 306
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "Group"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV4Output;->endGroup()V

    .line 312
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->deletedObjects:Ljava/util/List;

    const-string v0, "DeletedObjects"

    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Ljava/util/List;)V

    .line 314
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 316
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 317
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void

    .line 303
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Writing groups failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private safeXmlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 866
    invoke-static {p1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 873
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 874
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const v3, 0xd7ff

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const v3, 0xe000

    if-lt v2, v3, :cond_3

    const v3, 0xfffd

    if-gt v2, v3, :cond_3

    .line 880
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 885
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private startGroup(Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Group"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    const-string v1, "UUID"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 441
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->name:Ljava/lang/String;

    const-string v1, "Name"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->notes:Ljava/lang/String;

    const-string v1, "Notes"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->icon:Lcom/keepassdroid/database/PwIconStandard;

    iget v0, v0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    int-to-long v0, v0

    const-string v2, "IconID"

    invoke-direct {p0, v2, v0, v1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 445
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    sget-object v1, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwIconCustom;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    iget-object v0, v0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    const-string v1, "CustomIconUUID"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    :cond_0
    const-string v0, "Times"

    .line 449
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Lcom/keepassdroid/database/ITimeLogger;)V

    .line 450
    iget-boolean v0, p1, Lcom/keepassdroid/database/PwGroupV4;->isExpanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IsExpanded"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 451
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->defaultAutoTypeSequence:Ljava/lang/String;

    const-string v1, "DefaultAutoTypeSequence"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->enableAutoType:Ljava/lang/Boolean;

    const-string v1, "EnableAutoType"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 453
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    const-string v1, "EnableSearching"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 454
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->lastTopVisibleEntry:Ljava/util/UUID;

    const-string v1, "LastTopVisibleEntry"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 456
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v2, 0x40001

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 457
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->prevParentGroup:Ljava/util/UUID;

    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->prevParentGroup:Ljava/util/UUID;

    const-string v1, "PreviousParentGroup"

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 461
    :cond_1
    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    const-string v0, "Tags"

    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private subWriteValue(Lcom/keepassdroid/database/security/ProtectedBinary;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    invoke-virtual {p1}, Lcom/keepassdroid/database/security/ProtectedBinary;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 545
    new-array v1, v3, [B

    .line 546
    invoke-virtual {p1}, Lcom/keepassdroid/database/security/ProtectedBinary;->getData()Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    .line 548
    invoke-virtual {p1}, Lcom/keepassdroid/database/security/ProtectedBinary;->isProtected()Z

    move-result p1

    const-string v0, "True"

    const/4 v2, 0x0

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    .line 549
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "Protected"

    invoke-interface {p1, v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 551
    new-array p1, v3, [B

    .line 552
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->randomStream:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 553
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    sget-object v3, Lcom/keepassdroid/database/PwCompressionAlgorithm;->Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    if-ne p1, v3, :cond_1

    .line 557
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "Compressed"

    invoke-interface {p1, v2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 558
    invoke-static {v1}, Lcom/keepassdroid/utils/MemUtil;->compress([B)[B

    move-result-object p1

    .line 559
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 561
    :cond_1
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    :goto_0
    return-void
.end method

.method private writeBinPool()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Binaries"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 851
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v0}, Lcom/keepassdroid/database/BinaryPool;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 852
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "Binary"

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 853
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ID"

    invoke-interface {v4, v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 855
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-direct {p0, v3}, Lcom/keepassdroid/database/save/PwDbV4Output;->subWriteValue(Lcom/keepassdroid/database/security/ProtectedBinary;)V

    .line 857
    iget-object v3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeCustomIconList()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 821
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->customIcons:Ljava/util/List;

    .line 822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    const-string v3, "CustomIcons"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 826
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwIconCustom;

    .line 827
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "Icon"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 829
    iget-object v4, v1, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    const-string v6, "UUID"

    invoke-direct {p0, v6, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 830
    iget-object v4, v1, Lcom/keepassdroid/database/PwIconCustom;->imageData:[B

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Data"

    invoke-direct {p0, v6, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v6, v4, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v8, 0x40001

    cmp-long v4, v6, v8

    if-ltz v4, :cond_2

    .line 833
    iget-object v4, v1, Lcom/keepassdroid/database/PwIconCustom;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 834
    iget-object v4, v1, Lcom/keepassdroid/database/PwIconCustom;->name:Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, "Name"

    invoke-direct {p0, v7, v4, v6}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 837
    :cond_1
    iget-object v4, v1, Lcom/keepassdroid/database/PwIconCustom;->lastMod:Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 838
    iget-object v1, v1, Lcom/keepassdroid/database/PwIconCustom;->lastMod:Ljava/util/Date;

    const-string v4, "LastModificationTime"

    invoke-direct {p0, v4, v1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 842
    :cond_2
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 845
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeEntry(Lcom/keepassdroid/database/PwEntryV4;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Entry"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    const-string v3, "UUID"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 478
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->icon:Lcom/keepassdroid/database/PwIconStandard;

    iget v0, v0, Lcom/keepassdroid/database/PwIconStandard;->iconId:I

    int-to-long v3, v0

    const-string v0, "IconID"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 480
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    sget-object v3, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    invoke-virtual {v0, v3}, Lcom/keepassdroid/database/PwIconCustom;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    iget-object v0, v0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    const-string v3, "CustomIconUUID"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 484
    :cond_0
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    const-string v3, "ForegroundColor"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    const-string v3, "BackgroundColor"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    const-string v3, "OverrideURL"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v5, 0x40001

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwEntryV4;->qualityCheck:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 489
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "QualityCheck"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 492
    :cond_1
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->tags:Ljava/lang/String;

    const-string v3, "Tags"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->prevParentGroup:Ljava/util/UUID;

    sget-object v3, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    .line 495
    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->prevParentGroup:Ljava/util/UUID;

    const-string v3, "PreviousParentGroup"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    :cond_2
    const-string v0, "Times"

    .line 499
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Lcom/keepassdroid/database/ITimeLogger;)V

    .line 501
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/util/Map;Z)V

    .line 502
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/util/Map;)V

    .line 503
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    const-string v4, "AutoType"

    invoke-direct {p0, v4, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwEntryV4$AutoType;)V

    if-nez p2, :cond_3

    .line 506
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    const-string p2, "History"

    invoke-direct {p0, p2, p1, v3}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Ljava/util/List;Z)V

    .line 511
    :cond_3
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Lcom/keepassdroid/database/ITimeLogger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 796
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getLastModificationTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "LastModificationTime"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 797
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "CreationTime"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 798
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "LastAccessTime"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 799
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getExpiryTime()Ljava/util/Date;

    move-result-object v0

    const-string v2, "ExpiryTime"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 800
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->expires()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "Expires"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 801
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getUsageCount()J

    move-result-wide v2

    const-string v0, "UsageCount"

    invoke-direct {p0, v0, v2, v3}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 802
    invoke-interface {p2}, Lcom/keepassdroid/database/ITimeLogger;->getLocationChanged()Ljava/util/Date;

    move-result-object p2

    const-string v0, "LocationChanged"

    invoke-direct {p0, v0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 804
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwCustomData;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    invoke-virtual {p2}, Lcom/keepassdroid/database/PwCustomData;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 776
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 779
    iget-object v3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v3, v3, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v5, 0x40001

    cmp-long v8, v3, v5

    if-ltz v8, :cond_0

    .line 780
    invoke-virtual {p2, v7}, Lcom/keepassdroid/database/PwCustomData;->getLastMod(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    move-object v10, v3

    goto :goto_1

    :cond_0
    move-object v10, v1

    .line 783
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v5, "Item"

    const-string v6, "Key"

    const-string v8, "Value"

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 787
    :cond_1
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 760
    iget-boolean v0, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ProtectTitle"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 761
    iget-boolean v0, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ProtectUserName"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 762
    iget-boolean v0, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ProtectPassword"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 763
    iget-boolean v0, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "ProtectURL"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 764
    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "ProtectNotes"

    invoke-direct {p0, v0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 766
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwEntryV4$AutoType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    iget-boolean v0, p2, Lcom/keepassdroid/database/PwEntryV4$AutoType;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "Enabled"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 648
    iget-wide v2, p2, Lcom/keepassdroid/database/PwEntryV4$AutoType;->obfuscationOptions:J

    const-string v0, "DataTransferObfuscation"

    invoke-direct {p0, v0, v2, v3}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 650
    iget-object v0, p2, Lcom/keepassdroid/database/PwEntryV4$AutoType;->defaultSequence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 651
    iget-object v0, p2, Lcom/keepassdroid/database/PwEntryV4$AutoType;->defaultSequence:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "DefaultSequence"

    invoke-direct {p0, v3, v0, v2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 654
    :cond_0
    invoke-virtual {p2}, Lcom/keepassdroid/database/PwEntryV4$AutoType;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 655
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 656
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v4, "Association"

    const-string v5, "Window"

    const-string v7, "KeystrokeSequence"

    move-object v3, p0

    .line 655
    invoke-direct/range {v3 .. v9}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 659
    :cond_1
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwDeletedObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 747
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDeletedObject;

    const-string v2, "DeletedObject"

    .line 748
    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Lcom/keepassdroid/database/PwDeletedObject;)V

    goto :goto_0

    .line 751
    :cond_0
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntryV4;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 812
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    .line 813
    invoke-direct {p0, v0, p3}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeEntry(Lcom/keepassdroid/database/PwEntryV4;Z)V

    goto :goto_0

    .line 816
    :cond_0
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeList(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 736
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/security/ProtectedBinary;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedBinary;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeList(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedString;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 667
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-direct {p0, v1, v0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedString;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeMeta()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Meta"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->localizedAppName:Ljava/lang/String;

    const-string v3, "Generator"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->hashOfHeader:[B

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    .line 327
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "HeaderHash"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->name:Ljava/lang/String;

    const-string v3, "DatabaseName"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->nameChanged:Ljava/util/Date;

    const-string v3, "DatabaseNameChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 332
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->description:Ljava/lang/String;

    const-string v3, "DatabaseDescription"

    invoke-direct {p0, v3, v0, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 333
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->descriptionChanged:Ljava/util/Date;

    const-string v3, "DatabaseDescriptionChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 334
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserName:Ljava/lang/String;

    const-string v3, "DefaultUserName"

    invoke-direct {p0, v3, v0, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserNameChanged:Ljava/util/Date;

    const-string v3, "DefaultUserNameChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 336
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDatabaseV4;->maintenanceHistoryDays:J

    const-string v0, "MaintenanceHistoryDays"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 337
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->color:Ljava/lang/String;

    const-string v3, "Color"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->keyLastChanged:Ljava/util/Date;

    const-string v3, "MasterKeyChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 339
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeRecDays:J

    const-string v0, "MasterKeyChangeRec"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 340
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeForceDays:J

    const-string v0, "MasterKeyChangeForce"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 343
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    const-string v3, "MemoryProtection"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;)V

    .line 345
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeCustomIconList()V

    .line 347
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-boolean v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "RecycleBinEnabled"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 348
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    const-string v3, "RecycleBinUUID"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 349
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinChanged:Ljava/util/Date;

    const-string v3, "RecycleBinChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 350
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroup:Ljava/util/UUID;

    const-string v3, "EntryTemplatesGroup"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 351
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroupChanged:Ljava/util/Date;

    const-string v3, "EntryTemplatesGroupChanged"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 352
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxItems:I

    int-to-long v3, v0

    const-string v0, "HistoryMaxItems"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 353
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxSize:J

    const-string v0, "HistoryMaxSize"

    invoke-direct {p0, v0, v3, v4}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;J)V

    .line 354
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->lastSelectedGroup:Ljava/util/UUID;

    const-string v3, "LastSelectedGroup"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 355
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->lastTopVisibleGroup:Ljava/util/UUID;

    const-string v3, "LastTopVisibleGroup"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 357
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v5, 0x40000

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeBinPool()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    const-string v3, "CustomData"

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeList(Ljava/lang/String;Lcom/keepassdroid/database/PwCustomData;)V

    .line 362
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeObject(Ljava/lang/String;Lcom/keepassdroid/database/PwDeletedObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    iget-object v0, p2, Lcom/keepassdroid/database/PwDeletedObject;->uuid:Ljava/util/UUID;

    const-string v2, "UUID"

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/UUID;)V

    .line 728
    invoke-virtual {p2}, Lcom/keepassdroid/database/PwDeletedObject;->getDeletionTime()Ljava/util/Date;

    move-result-object p2

    const-string v0, "DeletionTime"

    invoke-direct {p0, v0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 730
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedBinary;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "Binary"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "Key"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "Value"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p3, :cond_0

    .line 526
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/BinaryPool;->poolFind(Lcom/keepassdroid/database/security/ProtectedBinary;)I

    move-result p1

    .line 527
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 531
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string p3, "Ref"

    invoke-interface {p2, v1, p3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 534
    :cond_1
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->subWriteValue(Lcom/keepassdroid/database/security/ProtectedBinary;)V

    .line 536
    :goto_1
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedString;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const-string v2, "String"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "Key"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 679
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "Value"

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedString;->isProtected()Z

    move-result v0

    if-eqz p3, :cond_4

    const-string p3, "Title"

    .line 684
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 685
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    goto :goto_0

    :cond_0
    const-string p3, "UserName"

    .line 687
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 688
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    goto :goto_0

    :cond_1
    const-string p3, "Password"

    .line 690
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 691
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    goto :goto_0

    :cond_2
    const-string p3, "URL"

    .line 693
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 694
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    goto :goto_0

    :cond_3
    const-string p3, "Notes"

    .line 696
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 697
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean v0, p1, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 702
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const-string p3, "Protected"

    const-string v0, "True"

    invoke-interface {p1, v1, p3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 705
    array-length v7, v5

    if-lez v7, :cond_6

    .line 708
    new-array p1, v7, [B

    .line 709
    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->randomStream:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    .line 710
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 p3, 0x2

    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 714
    :cond_5
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 718
    iget-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "True"

    goto :goto_0

    :cond_1
    const-string p2, "False"

    .line 614
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 582
    invoke-direct {p0, p1, p2, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, p3}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget-object p3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0, p5}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p6, :cond_0

    const-string p2, "LastModificationTime"

    .line 636
    invoke-direct {p0, p2, p6}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/util/Date;)V

    .line 639
    :cond_0
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p3, :cond_0

    .line 574
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->safeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 577
    :cond_0
    iget-object p3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p3, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    iget-object p2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->xml:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/util/Date;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 587
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4XML;->dateFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, p2}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 590
    invoke-static {v0}, Lcom/keepassdroid/utils/DateUtil;->convertDateToKDBX4Time(Lorg/joda/time/DateTime;)J

    move-result-wide v0

    .line 591
    invoke-static {v0, v1}, Lcom/keepassdroid/stream/LEDataOutputStream;->writeLongBuf(J)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 592
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 593
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private writeObject(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    invoke-static {p2}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 619
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/save/PwDbV4Output;->writeObject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public output()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    invoke-static {v0}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/util/UUID;)Lcom/keepassdroid/crypto/engine/CipherEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->engine:Lcom/keepassdroid/crypto/engine/CipherEngine;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mOS:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeader;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwDbHeaderV4;

    iput-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    .line 194
    iget-wide v0, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 195
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mOS:Ljava/io/OutputStream;

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/save/PwDbV4Output;->attachStreamEncryptor(Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 198
    new-instance v1, Lcom/keepassdroid/stream/HashedBlockOutputStream;

    invoke-direct {v1, v0}, Lcom/keepassdroid/stream/HashedBlockOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mOS:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->hashOfHeader:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 202
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mOS:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->headerHmac:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    new-instance v0, Lcom/keepassdroid/stream/HmacBlockOutputStream;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mOS:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->hmacKey:[B

    invoke-direct {v0, v1, v4}, Lcom/keepassdroid/stream/HmacBlockOutputStream;-><init>(Ljava/io/OutputStream;[B)V

    .line 205
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->attachStreamEncryptor(Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 212
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    sget-object v4, Lcom/keepassdroid/database/PwCompressionAlgorithm;->Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    if-ne v0, v4, :cond_1

    .line 213
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-wide v4, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 219
    new-instance v0, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->header:Lcom/keepassdroid/database/PwDbHeaderV4;

    invoke-direct {v0, v2, v3, v1}, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)V

    .line 220
    invoke-virtual {v0}, Lcom/keepassdroid/database/save/PwDbInnerHeaderOutputV4;->output()V

    .line 224
    :cond_2
    invoke-direct {p0, v1}, Lcom/keepassdroid/database/save/PwDbV4Output;->outputDatabase(Ljava/io/OutputStream;)V

    .line 225
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_0
    move-exception v0

    .line 229
    :try_start_3
    new-instance v1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {v1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 227
    new-instance v1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {v1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    .line 188
    new-instance v1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v2, "No such cipher"

    invoke-direct {v1, v2, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 232
    :goto_1
    new-instance v1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    invoke-direct {v1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public outputHeader(Ljava/io/OutputStream;)Lcom/keepassdroid/database/PwDbHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 421
    new-instance v0, Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwDbHeaderV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    .line 422
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDatabaseV4;->getMinKdbxVersion()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    .line 423
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/save/PwDbV4Output;->setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;

    .line 425
    new-instance v1, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;

    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v1, v2, v0, p1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDbHeaderV4;Ljava/io/OutputStream;)V

    .line 427
    :try_start_0
    invoke-virtual {v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->output()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    invoke-virtual {v1}, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->getHashOfHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->hashOfHeader:[B

    .line 433
    iget-object p1, v1, Lcom/keepassdroid/database/save/PwDbHeaderOutputV4;->headerHmac:[B

    iput-object p1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->headerHmac:[B

    return-object v0

    :catch_0
    move-exception p1

    .line 429
    new-instance v0, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v1, "Failed to output the header."

    invoke-direct {v0, v1, p1}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 383
    invoke-super {p0, p1}, Lcom/keepassdroid/database/save/PwDbOutput;->setIVs(Lcom/keepassdroid/database/PwDbHeader;)Ljava/security/SecureRandom;

    move-result-object v0

    .line 385
    check-cast p1, Lcom/keepassdroid/database/PwDbHeaderV4;

    .line 386
    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 388
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->engine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    invoke-virtual {v1}, Lcom/keepassdroid/crypto/engine/CipherEngine;->ivLength()I

    move-result v1

    .line 389
    iget-object v2, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 390
    new-array v1, v1, [B

    iput-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    .line 392
    :cond_0
    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 394
    iget-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    iget-object v1, v1, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    .line 395
    invoke-static {v1}, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->get(Ljava/util/UUID;)Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->mPM:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    invoke-virtual {v1, v2}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->randomize(Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V

    .line 398
    iget-wide v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    const-wide/32 v3, 0x40000

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 399
    sget-object v1, Lcom/keepassdroid/database/CrsAlgorithm;->Salsa20:Lcom/keepassdroid/database/CrsAlgorithm;

    iput-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 400
    iput-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    goto :goto_0

    .line 402
    :cond_1
    sget-object v1, Lcom/keepassdroid/database/CrsAlgorithm;->ChaCha20:Lcom/keepassdroid/database/CrsAlgorithm;

    iput-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 403
    iput-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    .line 405
    :goto_0
    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 407
    iget-object v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    iget-object v2, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    invoke-static {v1, v2}, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->getInstance(Lcom/keepassdroid/database/CrsAlgorithm;[B)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object v1

    iput-object v1, p0, Lcom/keepassdroid/database/save/PwDbV4Output;->randomStream:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz v1, :cond_3

    .line 412
    iget-wide v1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 413
    iget-object p1, p1, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_2
    return-object v0

    .line 409
    :cond_3
    new-instance p1, Lcom/keepassdroid/database/exception/PwDbOutputException;

    const-string v0, "Invalid random cipher"

    invoke-direct {p1, v0}, Lcom/keepassdroid/database/exception/PwDbOutputException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
