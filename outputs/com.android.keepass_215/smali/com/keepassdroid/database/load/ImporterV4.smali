.class public Lcom/keepassdroid/database/load/ImporterV4;
.super Lcom/keepassdroid/database/load/Importer;
.source "ImporterV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/load/ImporterV4$KdbContext;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_HISTORY_DAYS:J = 0x16dL

.field private static final MAX_UINT:J = 0x100000000L


# instance fields
.field private binNum:I

.field private ctxATName:Ljava/lang/String;

.field private ctxATSeq:Ljava/lang/String;

.field private ctxBinaryName:Ljava/lang/String;

.field private ctxBinaryValue:Lcom/keepassdroid/database/security/ProtectedBinary;

.field private ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

.field private ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

.field private ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

.field private ctxGroups:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/keepassdroid/database/PwGroupV4;",
            ">;"
        }
    .end annotation
.end field

.field private ctxHistoryBase:Lcom/keepassdroid/database/PwEntryV4;

.field private ctxStringName:Ljava/lang/String;

.field private ctxStringValue:Lcom/keepassdroid/database/security/ProtectedString;

.field private customDataKey:Ljava/lang/String;

.field private customDataLastMod:Ljava/util/Date;

.field private customDataValue:Ljava/lang/String;

.field private customIconData:[B

.field private customIconID:Ljava/util/UUID;

.field private customIconLastMod:Ljava/util/Date;

.field private customIconName:Ljava/lang/String;

.field private db:Lcom/keepassdroid/database/PwDatabaseV4;

.field private entryCustomDataKey:Ljava/lang/String;

.field private entryCustomDataValue:Ljava/lang/String;

.field private entryInHistory:Z

.field private groupCustomDataKey:Ljava/lang/String;

.field private groupCustomDataValue:Ljava/lang/String;

.field private hashOfHeader:[B

.field private pbHeader:[B

.field private randomStream:Lorg/bouncycastle/crypto/StreamCipher;

.field private readNextNode:Z

.field private streamDir:Ljava/io/File;

.field utcCal:Ljava/util/Calendar;

.field private version:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Lcom/keepassdroid/database/load/Importer;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->hashOfHeader:[B

    .line 85
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->pbHeader:[B

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->binNum:I

    const/4 v2, 0x1

    .line 303
    iput-boolean v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->readNextNode:Z

    .line 304
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    .line 305
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    .line 306
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    .line 307
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringName:Ljava/lang/String;

    .line 308
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringValue:Lcom/keepassdroid/database/security/ProtectedString;

    .line 309
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryName:Ljava/lang/String;

    .line 310
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryValue:Lcom/keepassdroid/database/security/ProtectedBinary;

    .line 311
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATName:Ljava/lang/String;

    .line 312
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATSeq:Ljava/lang/String;

    .line 313
    iput-boolean v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    .line 314
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxHistoryBase:Lcom/keepassdroid/database/PwEntryV4;

    .line 315
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    .line 316
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconID:Ljava/util/UUID;

    .line 318
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconName:Ljava/lang/String;

    .line 319
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconLastMod:Ljava/util/Date;

    .line 320
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataKey:Ljava/lang/String;

    .line 321
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataValue:Ljava/lang/String;

    .line 322
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataLastMod:Ljava/util/Date;

    .line 323
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataKey:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataValue:Ljava/lang/String;

    .line 325
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataKey:Ljava/lang/String;

    .line 326
    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataValue:Ljava/lang/String;

    const-string v0, "UTC"

    .line 92
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->utcCal:Ljava/util/Calendar;

    .line 93
    iput-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->streamDir:Ljava/io/File;

    return-void
.end method

.method private AttachCipherStream(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Ljava/io/InputStream;
    .locals 2

    .line 216
    new-instance v0, Lcom/keepassdroid/stream/BetterCipherInputStream;

    const v1, 0xc800

    invoke-direct {v0, p1, p2, v1}, Lcom/keepassdroid/stream/BetterCipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;I)V

    return-object v0
.end method

.method private static CreatePullParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 339
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 342
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 343
    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method private EndXmlElement(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 814
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    .line 815
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->KeePassFile:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_0

    const-string v0, "KeePassFile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Null:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 817
    :cond_0
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1

    const-string v0, "Meta"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->KeePassFile:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 819
    :cond_1
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Root:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_2

    const-string v0, "Root"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->KeePassFile:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 821
    :cond_2
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->MemoryProtection:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_3

    const-string v0, "MemoryProtection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 822
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 823
    :cond_3
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomIcons:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_4

    const-string v0, "CustomIcons"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 825
    :cond_4
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomIcon:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    const-string v0, "Icon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 826
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconID:Ljava/util/UUID;

    sget-object p2, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 827
    new-instance p1, Lcom/keepassdroid/database/PwIconCustom;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconID:Ljava/util/UUID;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconData:[B

    invoke-direct {p1, p2, v0}, Lcom/keepassdroid/database/PwIconCustom;-><init>(Ljava/util/UUID;[B)V

    .line 828
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconName:Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 829
    iput-object p2, p1, Lcom/keepassdroid/database/PwIconCustom;->name:Ljava/lang/String;

    .line 831
    :cond_5
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconLastMod:Ljava/util/Date;

    if-eqz p2, :cond_6

    .line 832
    iput-object p2, p1, Lcom/keepassdroid/database/PwIconCustom;->lastMod:Ljava/util/Date;

    .line 835
    :cond_6
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->customIcons:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-virtual {p2, p1}, Lcom/keepassdroid/database/PwIconFactory;->put(Lcom/keepassdroid/database/PwIconCustom;)V

    .line 839
    :cond_7
    sget-object p1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconID:Ljava/util/UUID;

    .line 840
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconData:[B

    .line 841
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconName:Ljava/lang/String;

    .line 842
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customIconLastMod:Ljava/util/Date;

    .line 844
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomIcons:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 845
    :cond_8
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Binaries:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_9

    const-string v0, "Binaries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 846
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 847
    :cond_9
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const-string v2, "CustomData"

    if-ne p1, v0, :cond_a

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 848
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 849
    :cond_a
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const-string v3, "Item"

    if-ne p1, v0, :cond_c

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 850
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataKey:Ljava/lang/String;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataValue:Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 851
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataLastMod:Ljava/util/Date;

    invoke-virtual {p1, p2, v0, v2}, Lcom/keepassdroid/database/PwCustomData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 854
    :cond_b
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataKey:Ljava/lang/String;

    .line 855
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataValue:Ljava/lang/String;

    .line 856
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataLastMod:Ljava/util/Date;

    .line 858
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 859
    :cond_c
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_10

    const-string v0, "Group"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 860
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    sget-object p2, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 861
    :cond_d
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p1, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    .line 864
    :cond_e
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 866
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-nez p1, :cond_f

    .line 867
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    .line 868
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Root:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 870
    :cond_f
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    iput-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    .line 871
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 873
    :cond_10
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupTimes:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const-string v4, "Times"

    if-ne p1, v0, :cond_11

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 874
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 875
    :cond_11
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_12

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 876
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 877
    :cond_12
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupCustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_14

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 878
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataKey:Ljava/lang/String;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataValue:Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 879
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->customDataLastMod:Ljava/util/Date;

    invoke-virtual {p1, p2, p2, v0}, Lcom/keepassdroid/database/PwCustomData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    .line 884
    :cond_13
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataKey:Ljava/lang/String;

    .line 885
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataValue:Ljava/lang/String;

    .line 887
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 889
    :cond_14
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_18

    const-string v0, "Entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 890
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    sget-object p2, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 891
    :cond_15
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    iput-object p2, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    .line 894
    :cond_16
    iget-boolean p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    if-eqz p1, :cond_17

    .line 895
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxHistoryBase:Lcom/keepassdroid/database/PwEntryV4;

    iput-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    .line 896
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryHistory:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 899
    :cond_17
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 900
    :cond_18
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryTimes:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_19

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 901
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 902
    :cond_19
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryString:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1a

    const-string v0, "String"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 903
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringName:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringValue:Lcom/keepassdroid/database/security/ProtectedString;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringName:Ljava/lang/String;

    .line 905
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringValue:Lcom/keepassdroid/database/security/ProtectedString;

    .line 907
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 908
    :cond_1a
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryBinary:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1b

    const-string v0, "Binary"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 909
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryName:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryValue:Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryName:Ljava/lang/String;

    .line 911
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryValue:Lcom/keepassdroid/database/security/ProtectedBinary;

    .line 913
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 914
    :cond_1b
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryAutoType:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1c

    const-string v0, "AutoType"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 915
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 916
    :cond_1c
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryAutoTypeItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1d

    const-string v0, "Association"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 917
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATName:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATSeq:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/keepassdroid/database/PwEntryV4$AutoType;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATName:Ljava/lang/String;

    .line 919
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATSeq:Ljava/lang/String;

    .line 921
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryAutoType:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 922
    :cond_1d
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_1e

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 923
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 924
    :cond_1e
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryCustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_20

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 925
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataKey:Ljava/lang/String;

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataValue:Ljava/lang/String;

    if-eqz p1, :cond_1f

    .line 926
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataValue:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/keepassdroid/database/PwCustomData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    :cond_1f
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataKey:Ljava/lang/String;

    .line 932
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataValue:Ljava/lang/String;

    .line 934
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 935
    :cond_20
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryHistory:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_21

    const-string v0, "History"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 p1, 0x0

    .line 936
    iput-boolean p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    .line 937
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 938
    :cond_21
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->RootDeletedObjects:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_22

    const-string v0, "DeletedObjects"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 939
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Root:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    .line 940
    :cond_22
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->DeletedObject:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne p1, v0, :cond_23

    const-string v0, "DeletedObject"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 941
    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    .line 942
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->RootDeletedObjects:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    return-object p1

    :cond_23
    if-eqz p1, :cond_24

    .line 948
    invoke-virtual {p1}, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_24
    const-string p1, ""

    .line 950
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid end element: Context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "End element: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private LoadInnerHeader(Ljava/io/InputStream;Lcom/keepassdroid/database/PwDbHeaderV4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {v0, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadInnerHeader(Lcom/keepassdroid/stream/LEDataInputStream;Lcom/keepassdroid/database/PwDbHeaderV4;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void
.end method

.method private ProcessNode(Lorg/xmlpull/v1/XmlPullParser;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const-string v0, "Protected"

    .line 1153
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "True"

    .line 1154
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1155
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadStringRaw(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    .line 1158
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 1159
    array-length p1, v2

    new-array p1, p1, [B

    .line 1161
    iget-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->randomStream:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v6, 0x0

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-object p1

    :cond_0
    const/4 p1, 0x0

    new-array v1, p1, [B

    :cond_1
    return-object v1
.end method

.method private ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1006
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    .line 1008
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "false"

    .line 1010
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return p2
.end method

.method private ReadDocumentStreamed(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 352
    sget-object v0, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Null:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const/4 v1, 0x1

    .line 354
    iput-boolean v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->readNextNode:Z

    .line 357
    :goto_0
    iget-boolean v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->readNextNode:Z

    if-eqz v2, :cond_2

    .line 358
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 387
    sget-object p1, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Null:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    const-string v1, "Malformed"

    if-ne v0, p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 360
    :cond_2
    iput-boolean v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->readNextNode:Z

    .line 363
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 374
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    goto :goto_0

    .line 369
    :cond_5
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->EndXmlElement(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadXmlElement(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v0

    goto :goto_0
.end method

.method private ReadInnerHeader(Lcom/keepassdroid/stream/LEDataInputStream;Lcom/keepassdroid/database/PwDbHeaderV4;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lcom/keepassdroid/stream/LEDataInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 231
    invoke-virtual {p1}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt()I

    move-result v1

    if-ltz v1, :cond_6

    const/4 v2, 0x0

    new-array v3, v2, [B

    const/4 v4, 0x3

    if-lez v1, :cond_0

    if-eq v0, v4, :cond_0

    .line 237
    invoke-virtual {p1, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v3

    :cond_0
    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v5, :cond_4

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1, v5}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object p2

    aget-byte p2, p2, v2

    and-int/2addr p2, v5

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 256
    :cond_2
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {p2}, Lcom/keepassdroid/database/BinaryPool;->findUnusedKey()I

    move-result p2

    .line 257
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/keepassdroid/database/load/ImporterV4;->streamDir:Ljava/io/File;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 258
    new-instance p2, Lcom/keepassdroid/database/security/ProtectedBinary;

    sub-int/2addr v1, v5

    invoke-direct {p2, v2, v0, v1}, Lcom/keepassdroid/database/security/ProtectedBinary;-><init>(ZLjava/io/File;I)V

    .line 259
    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedBinary;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 260
    invoke-static {p1, v0, v1}, Lcom/keepassdroid/utils/Util;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)I

    .line 261
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 263
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/BinaryPool;->poolAdd(Lcom/keepassdroid/database/security/ProtectedBinary;)V

    goto :goto_0

    .line 249
    :cond_3
    iput-object v3, p2, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {p2, v3}, Lcom/keepassdroid/database/PwDbHeaderV4;->setRandomStreamID([B)V

    :goto_0
    const/4 v2, 0x1

    :cond_5
    return v2

    .line 232
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Corrupted file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ReadInt(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1030
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 1034
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method private ReadLong(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1056
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 1060
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide p2
.end method

.method private ReadProtectedBinary(Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/security/ProtectedBinary;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "Ref"

    .line 1095
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1099
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1100
    iget-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v0, p1}, Lcom/keepassdroid/database/BinaryPool;->get(I)Lcom/keepassdroid/database/security/ProtectedBinary;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "Compressed"

    .line 1104
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "True"

    .line 1106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1109
    :goto_0
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ProcessNode(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1111
    new-instance p1, Lcom/keepassdroid/database/security/ProtectedBinary;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v2}, Lcom/keepassdroid/database/security/ProtectedBinary;-><init>(Z[B)V

    return-object p1

    .line 1113
    :cond_2
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    sget-object p1, Lcom/keepassdroid/database/security/ProtectedBinary;->EMPTY:Lcom/keepassdroid/database/security/ProtectedBinary;

    return-object p1

    :cond_3
    const/4 v2, 0x2

    .line 1116
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz v0, :cond_4

    .line 1119
    invoke-static {p1}, Lcom/keepassdroid/utils/MemUtil;->decompress([B)[B

    move-result-object p1

    .line 1122
    :cond_4
    new-instance v0, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-direct {v0, v1, p1}, Lcom/keepassdroid/database/security/ProtectedBinary;-><init>(Z[B)V

    return-object v0
.end method

.method private ReadProtectedString(Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/security/ProtectedString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ProcessNode(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1084
    :try_start_0
    new-instance p1, Lcom/keepassdroid/database/security/ProtectedString;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p1, v1, v2}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1086
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1087
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1091
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/security/ProtectedString;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method private ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1126
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ProcessNode(Lorg/xmlpull/v1/XmlPullParser;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    :try_start_0
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1132
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ReadStringRaw(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 955
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 958
    iget-wide v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->version:J

    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const/4 v0, 0x2

    .line 959
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 960
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    new-array v0, v2, [B

    .line 962
    array-length v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 966
    :cond_0
    invoke-static {p1, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readLong([BI)J

    move-result-wide v0

    .line 967
    invoke-static {v0, v1}, Lcom/keepassdroid/utils/DateUtil;->convertKDBX4Time(J)Ljava/util/Date;

    move-result-object p1

    goto :goto_1

    .line 972
    :cond_1
    :try_start_0
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4XML;->dateFormatter:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 978
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method private ReadUInt(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1046
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/database/load/ImporterV4;->ReadULong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    const-wide v0, 0x100000000L

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    return-wide p1

    .line 1048
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string p2, "Outside of the uint size"

    invoke-direct {p1, p2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ReadULong(Lorg/xmlpull/v1/XmlPullParser;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1069
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/database/load/ImporterV4;->ReadLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    return-wide p2
.end method

.method private ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 989
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 991
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 992
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ProcessNode(Lorg/xmlpull/v1/XmlPullParser;)[B

    .line 994
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 995
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 996
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 998
    :cond_2
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1018
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1020
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 1024
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1026
    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 1021
    :cond_1
    :goto_0
    sget-object p1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    return-object p1
.end method

.method private ReadXmlElement(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 393
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 394
    sget-object v4, Lcom/keepassdroid/database/load/ImporterV4$1;->$SwitchMap$com$keepassdroid$database$load$ImporterV4$KdbContext:[I

    invoke-virtual/range {p1 .. p1}, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "PreviousParentGroup"

    const-string v6, "Tags"

    const-string v7, "Times"

    const-string v9, "CustomIconUUID"

    const-string v10, "IconID"

    const-string v11, "Name"

    const-string v12, "Entry"

    const-string v13, "Group"

    const-string v14, "Binary"

    const-string v15, "CustomData"

    const-string v8, "LastModificationTime"

    move-object/from16 v16, v13

    const-string v13, "Item"

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    const-string v14, "UUID"

    const-string v15, "Value"

    move-object/from16 v19, v11

    const-string v11, "Key"

    move-object/from16 v20, v7

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    .line 804
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 794
    :pswitch_0
    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDeletedObject;->uuid:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_0
    const-string v4, "DeletionTime"

    .line 796
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 797
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/keepassdroid/database/PwDeletedObject;->setDeletionTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 799
    :cond_1
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_1
    const-string v4, "DeletedObject"

    .line 783
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    new-instance v3, Lcom/keepassdroid/database/PwDeletedObject;

    invoke-direct {v3}, Lcom/keepassdroid/database/PwDeletedObject;-><init>()V

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    .line 785
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->deletedObjects:Ljava/util/List;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxDeletedObject:Lcom/keepassdroid/database/PwDeletedObject;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->DeletedObject:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 789
    :cond_2
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 771
    :pswitch_2
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 772
    new-instance v3, Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v3}, Lcom/keepassdroid/database/PwEntryV4;-><init>()V

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    .line 773
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxHistoryBase:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 775
    iput-boolean v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    .line 776
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 778
    :cond_3
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_3
    const-string v4, "Window"

    .line 761
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 762
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v4, "KeystrokeSequence"

    .line 763
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 764
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxATSeq:Ljava/lang/String;

    goto/16 :goto_1

    .line 766
    :cond_5
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_4
    const-string v4, "Enabled"

    .line 747
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 748
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwEntryV4$AutoType;->enabled:Z

    goto/16 :goto_1

    :cond_6
    const-string v4, "DataTransferObfuscation"

    .line 749
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 750
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v4, v5}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUInt(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keepassdroid/database/PwEntryV4$AutoType;->obfuscationOptions:J

    goto/16 :goto_1

    :cond_7
    const-string v4, "DefaultSequence"

    .line 751
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 752
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4$AutoType;->defaultSequence:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    const-string v4, "Association"

    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 754
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryAutoTypeItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 756
    :cond_9
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 739
    :pswitch_5
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 740
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryName:Ljava/lang/String;

    goto/16 :goto_1

    .line 741
    :cond_a
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 742
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadProtectedBinary(Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/security/ProtectedBinary;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxBinaryValue:Lcom/keepassdroid/database/security/ProtectedBinary;

    goto/16 :goto_1

    .line 729
    :pswitch_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 730
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringName:Ljava/lang/String;

    goto/16 :goto_1

    .line 731
    :cond_b
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 732
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadProtectedString(Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/security/ProtectedString;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxStringValue:Lcom/keepassdroid/database/security/ProtectedString;

    goto/16 :goto_1

    .line 734
    :cond_c
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 703
    :pswitch_7
    sget-object v4, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupTimes:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    if-ne v1, v4, :cond_d

    .line 704
    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    goto :goto_0

    .line 706
    :cond_d
    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    .line 709
    :goto_0
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 710
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setLastModificationTime(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_e
    const-string v5, "CreationTime"

    .line 711
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 712
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setCreationTime(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_f
    const-string v5, "LastAccessTime"

    .line 713
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 714
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setLastAccessTime(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_10
    const-string v5, "ExpiryTime"

    .line 715
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 716
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setExpiryTime(Ljava/util/Date;)V

    goto/16 :goto_1

    :cond_11
    const-string v5, "Expires"

    .line 717
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 718
    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setExpires(Z)V

    goto/16 :goto_1

    :cond_12
    const-string v5, "UsageCount"

    .line 719
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-wide/16 v5, 0x0

    .line 720
    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadULong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v2

    invoke-interface {v4, v2, v3}, Lcom/keepassdroid/database/ITimeLogger;->setUsageCount(J)V

    goto/16 :goto_1

    :cond_13
    const-string v5, "LocationChanged"

    .line 721
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 722
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/keepassdroid/database/ITimeLogger;->setLocationChanged(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 724
    :cond_14
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 691
    :pswitch_8
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 692
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 693
    :cond_15
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 694
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->entryCustomDataValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 696
    :cond_16
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 684
    :pswitch_9
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 685
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryCustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 687
    :cond_17
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 642
    :pswitch_a
    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 643
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/keepassdroid/database/PwEntryV4;->setUUID(Ljava/util/UUID;)V

    goto/16 :goto_1

    .line 644
    :cond_18
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 645
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUInt(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {v4, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto/16 :goto_1

    .line 646
    :cond_19
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 647
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(Ljava/util/UUID;)Lcom/keepassdroid/database/PwIconCustom;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    goto/16 :goto_1

    :cond_1a
    const-string v4, "ForegroundColor"

    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 649
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1b
    const-string v4, "BackgroundColor"

    .line 650
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 651
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1c
    const-string v4, "OverrideURL"

    .line 652
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 653
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1d
    const-string v4, "QualityCheck"

    .line 654
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 655
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwEntryV4;->qualityCheck:Z

    goto/16 :goto_1

    .line 656
    :cond_1e
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 657
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->tags:Ljava/lang/String;

    goto/16 :goto_1

    .line 658
    :cond_1f
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 659
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwEntryV4;->prevParentGroup:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_20
    move-object/from16 v4, v20

    .line 660
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 661
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryTimes:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_21
    const-string v4, "String"

    .line 662
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 663
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryString:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_22
    move-object/from16 v4, v17

    .line 664
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 665
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryBinary:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_23
    const-string v4, "AutoType"

    .line 666
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 667
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryAutoType:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_24
    move-object/from16 v8, v18

    .line 668
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 669
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_25
    const-string v4, "History"

    .line 670
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 673
    iget-boolean v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    if-nez v3, :cond_26

    .line 674
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxHistoryBase:Lcom/keepassdroid/database/PwEntryV4;

    .line 675
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->EntryHistory:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 677
    :cond_26
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 680
    :cond_27
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 631
    :pswitch_b
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 632
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 633
    :cond_28
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 634
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->groupCustomDataValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 636
    :cond_29
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 624
    :pswitch_c
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 625
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupCustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 627
    :cond_2a
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v8, v18

    move-object/from16 v4, v20

    .line 579
    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 580
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v11, v19

    .line 581
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2c

    .line 582
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2c
    const-string v11, "Notes"

    .line 583
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 584
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->notes:Ljava/lang/String;

    goto/16 :goto_1

    .line 585
    :cond_2d
    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2e

    .line 586
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const-wide/16 v5, 0x0

    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUInt(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {v4, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto/16 :goto_1

    .line 587
    :cond_2e
    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 588
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(Ljava/util/UUID;)Lcom/keepassdroid/database/PwIconCustom;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    goto/16 :goto_1

    .line 589
    :cond_2f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 590
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupTimes:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_30
    const-string v4, "IsExpanded"

    .line 591
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 592
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwGroupV4;->isExpanded:Z

    goto/16 :goto_1

    :cond_31
    const-string v4, "DefaultAutoTypeSequence"

    .line 593
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 594
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->defaultAutoTypeSequence:Ljava/lang/String;

    goto/16 :goto_1

    :cond_32
    const-string v4, "EnableAutoType"

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 596
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->StringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->enableAutoType:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_33
    const-string v4, "EnableSearching"

    .line 597
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 598
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->StringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    goto/16 :goto_1

    :cond_34
    const-string v4, "LastTopVisibleEntry"

    .line 599
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 600
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->lastTopVisibleEntry:Ljava/util/UUID;

    goto/16 :goto_1

    .line 601
    :cond_35
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 602
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->prevParentGroup:Ljava/util/UUID;

    goto/16 :goto_1

    .line 603
    :cond_36
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 604
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    goto/16 :goto_1

    .line 605
    :cond_37
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 606
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->GroupCustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_38
    move-object/from16 v4, v16

    .line 607
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 608
    new-instance v3, Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v3}, Lcom/keepassdroid/database/PwGroupV4;-><init>()V

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    .line 609
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwGroupV4;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/keepassdroid/database/PwGroupV4;->AddGroup(Lcom/keepassdroid/database/PwGroupV4;Z)V

    .line 610
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 613
    :cond_39
    invoke-virtual {v3, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 614
    new-instance v3, Lcom/keepassdroid/database/PwEntryV4;

    invoke-direct {v3}, Lcom/keepassdroid/database/PwEntryV4;-><init>()V

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxEntry:Lcom/keepassdroid/database/PwEntryV4;

    .line 615
    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/keepassdroid/database/PwGroupV4;->AddEntry(Lcom/keepassdroid/database/PwEntryV4;Z)V

    .line 617
    iput-boolean v7, v0, Lcom/keepassdroid/database/load/ImporterV4;->entryInHistory:Z

    .line 618
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Entry:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 620
    :cond_3a
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v4, v16

    .line 562
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 564
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_3b

    .line 566
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    new-instance v4, Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v4}, Lcom/keepassdroid/database/PwGroupV4;-><init>()V

    iput-object v4, v3, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    .line 567
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    check-cast v4, Lcom/keepassdroid/database/PwGroupV4;

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroups:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwGroupV4;

    iput-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->ctxGroup:Lcom/keepassdroid/database/PwGroupV4;

    .line 570
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Group:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 564
    :cond_3b
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Group list should be empty."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    const-string v4, "DeletedObjects"

    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 572
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->RootDeletedObjects:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 574
    :cond_3d
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 550
    :pswitch_f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 551
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customDataKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 552
    :cond_3e
    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 553
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customDataValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 554
    :cond_3f
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 555
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customDataLastMod:Ljava/util/Date;

    goto/16 :goto_1

    .line 557
    :cond_40
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 542
    :pswitch_10
    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 543
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomDataItem:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 545
    :cond_41
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v4, v17

    .line 526
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    const/4 v3, 0x0

    const-string v4, "ID"

    .line 527
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 529
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadProtectedBinary(Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/security/ProtectedBinary;

    move-result-object v2

    .line 530
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 531
    iget-object v4, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v4, v4, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v4, v3, v2}, Lcom/keepassdroid/database/BinaryPool;->put(ILcom/keepassdroid/database/security/ProtectedBinary;)Lcom/keepassdroid/database/security/ProtectedBinary;

    goto/16 :goto_1

    .line 533
    :cond_42
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 536
    :cond_43
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v11, v19

    .line 507
    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 508
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customIconID:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_44
    const-string v4, "Data"

    .line 509
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 510
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 511
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6f

    const/4 v3, 0x2

    .line 512
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customIconData:[B

    goto/16 :goto_1

    .line 516
    :cond_45
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 517
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customIconName:Ljava/lang/String;

    goto/16 :goto_1

    .line 518
    :cond_46
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 519
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/load/ImporterV4;->customIconLastMod:Ljava/util/Date;

    goto/16 :goto_1

    .line 521
    :cond_47
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_13
    const-string v4, "Icon"

    .line 499
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 500
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomIcon:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 502
    :cond_48
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_14
    const-string v4, "ProtectTitle"

    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 482
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    goto/16 :goto_1

    :cond_49
    const-string v4, "ProtectUserName"

    .line 483
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 484
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    goto/16 :goto_1

    :cond_4a
    const-string v4, "ProtectPassword"

    .line 485
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 486
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    goto/16 :goto_1

    :cond_4b
    const-string v4, "ProtectURL"

    .line 487
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 488
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    goto/16 :goto_1

    :cond_4c
    const-string v4, "ProtectNotes"

    .line 489
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 490
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    goto/16 :goto_1

    :cond_4d
    const-string v4, "AutoEnableVisualHiding"

    .line 491
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 492
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->autoEnableVisualHiding:Z

    goto/16 :goto_1

    .line 494
    :cond_4e
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v8, v18

    const-string v4, "Generator"

    .line 412
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 413
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_4f
    const-string v4, "HeaderHash"

    .line 414
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 415
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v2}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6f

    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->hashOfHeader:[B

    if-eqz v3, :cond_6f

    const/4 v3, 0x2

    .line 417
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 418
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->hashOfHeader:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_50

    goto/16 :goto_1

    .line 419
    :cond_50
    new-instance v1, Lcom/keepassdroid/database/exception/InvalidDBException;

    invoke-direct {v1}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>()V

    throw v1

    :cond_51
    const-string v4, "SettingsChanged"

    .line 422
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 423
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->settingsChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_52
    const-string v4, "DatabaseName"

    .line 424
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 425
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->name:Ljava/lang/String;

    goto/16 :goto_1

    :cond_53
    const-string v4, "DatabaseNameChanged"

    .line 426
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 427
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->nameChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_54
    const-string v4, "DatabaseDescription"

    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 429
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->description:Ljava/lang/String;

    goto/16 :goto_1

    :cond_55
    const-string v4, "DatabaseDescriptionChanged"

    .line 430
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 431
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->descriptionChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_56
    const-string v4, "DefaultUserName"

    .line 432
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 433
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_57
    const-string v4, "DefaultUserNameChanged"

    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 435
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserNameChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_58
    const-string v4, "Color"

    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 438
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadString(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->color:Ljava/lang/String;

    goto/16 :goto_1

    :cond_59
    const-string v4, "MaintenanceHistoryDays"

    .line 439
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 440
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    const-wide/16 v4, 0x16d

    invoke-direct {v0, v2, v4, v5}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUInt(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keepassdroid/database/PwDatabaseV4;->maintenanceHistoryDays:J

    goto/16 :goto_1

    :cond_5a
    const-string v4, "MasterKeyChanged"

    .line 441
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 442
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->keyLastChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_5b
    const-string v4, "MasterKeyChangeRec"

    .line 443
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_5c

    .line 444
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeRecDays:J

    goto/16 :goto_1

    :cond_5c
    const-string v4, "MasterKeyChangeForce"

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 446
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeForceDays:J

    goto/16 :goto_1

    :cond_5d
    const-string v4, "MasterKeyChangeForceOnce"

    .line 447
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 448
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2, v7}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeForceOnce:Z

    goto/16 :goto_1

    :cond_5e
    const-string v4, "MemoryProtection"

    .line 449
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 450
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->MemoryProtection:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_5f
    const-string v4, "CustomIcons"

    .line 451
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 452
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomIcons:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_60
    const-string v4, "RecycleBinEnabled"

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 454
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4}, Lcom/keepassdroid/database/load/ImporterV4;->ReadBool(Lorg/xmlpull/v1/XmlPullParser;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    goto/16 :goto_1

    :cond_61
    const-string v4, "RecycleBinUUID"

    .line 455
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 456
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_62
    const-string v4, "RecycleBinChanged"

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 458
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_63
    const-string v4, "EntryTemplatesGroup"

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 460
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroup:Ljava/util/UUID;

    goto/16 :goto_1

    :cond_64
    const-string v4, "EntryTemplatesGroupChanged"

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 462
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroupChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_65
    const-string v7, "HistoryMaxItems"

    .line 463
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 464
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4}, Lcom/keepassdroid/database/load/ImporterV4;->ReadInt(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v2

    iput v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxItems:I

    goto/16 :goto_1

    :cond_66
    const-string v7, "HistoryMaxSize"

    .line 465
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 466
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2, v5, v6}, Lcom/keepassdroid/database/load/ImporterV4;->ReadLong(Lorg/xmlpull/v1/XmlPullParser;J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxSize:J

    goto/16 :goto_1

    .line 467
    :cond_67
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 468
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadTime(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroupChanged:Ljava/util/Date;

    goto/16 :goto_1

    :cond_68
    const-string v4, "LastSelectedGroup"

    .line 469
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 470
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->lastSelectedGroup:Ljava/util/UUID;

    goto :goto_1

    :cond_69
    const-string v4, "LastTopVisibleGroup"

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 472
    iget-object v3, v0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUuid(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v3, Lcom/keepassdroid/database/PwDatabaseV4;->lastTopVisibleGroup:Ljava/util/UUID;

    goto :goto_1

    :cond_6a
    const-string v4, "Binaries"

    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 474
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Binaries:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 475
    :cond_6b
    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 476
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->CustomData:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :pswitch_16
    const-string v4, "Meta"

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 403
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Meta:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    :cond_6c
    const-string v4, "Root"

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 405
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->Root:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 407
    :cond_6d
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :pswitch_17
    const-string v4, "KeePassFile"

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 397
    sget-object v3, Lcom/keepassdroid/database/load/ImporterV4$KdbContext;->KeePassFile:Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    invoke-direct {v0, v1, v3, v2}, Lcom/keepassdroid/database/load/ImporterV4;->SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;

    move-result-object v1

    return-object v1

    .line 398
    :cond_6e
    invoke-direct {v0, v2}, Lcom/keepassdroid/database/load/ImporterV4;->ReadUnknown(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_6f
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method private ReadXmlStreamed(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 331
    :try_start_0
    invoke-static {p1}, Lcom/keepassdroid/database/load/ImporterV4;->CreatePullParser(Ljava/io/InputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadDocumentStreamed(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 334
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private StringToBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "true"

    .line 1190
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 1191
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v1, "false"

    .line 1192
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1193
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private SwitchContext(Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lcom/keepassdroid/database/load/ImporterV4$KdbContext;Lorg/xmlpull/v1/XmlPullParser;)Lcom/keepassdroid/database/load/ImporterV4$KdbContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1176
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    return-object p1

    :cond_0
    return-object p2
.end method


# virtual methods
.method protected createDB()Lcom/keepassdroid/database/PwDatabaseV4;
    .locals 1

    .line 97
    new-instance v0, Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwDatabaseV4;-><init>()V

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

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/keepassdroid/database/load/ImporterV4;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDatabaseV4;

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

    .line 79
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV4;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDatabaseV4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 104
    new-instance v4, Lcom/keepassdroid/UpdateStatus;

    invoke-direct {v4}, Lcom/keepassdroid/UpdateStatus;-><init>()V

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/database/load/ImporterV4;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    const-string p4, "Invalid algorithm."

    .line 111
    invoke-virtual {p0}, Lcom/keepassdroid/database/load/ImporterV4;->createDB()Lcom/keepassdroid/database/PwDatabaseV4;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    .line 113
    new-instance v0, Lcom/keepassdroid/database/PwDbHeaderV4;

    iget-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwDbHeaderV4;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    .line 114
    iget-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v1}, Lcom/keepassdroid/database/BinaryPool;->clear()V

    .line 116
    invoke-virtual {v0, p1}, Lcom/keepassdroid/database/PwDbHeaderV4;->loadFromFile(Ljava/io/InputStream;)Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;

    move-result-object v1

    .line 117
    iget-wide v2, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->version:J

    iput-wide v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->version:J

    .line 118
    iget-object v4, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iput-wide v2, v4, Lcom/keepassdroid/database/PwDatabaseV4;->version:J

    .line 120
    iget-object v2, v1, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;->hash:[B

    iput-object v2, p0, Lcom/keepassdroid/database/load/ImporterV4;->hashOfHeader:[B

    .line 121
    iget-object v1, v1, Lcom/keepassdroid/database/PwDbHeaderV4$HeaderAndHash;->header:[B

    iput-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->pbHeader:[B

    .line 123
    iget-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-virtual {v1, p2, p3}, Lcom/keepassdroid/database/PwDatabaseV4;->setMasterKey(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 124
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->masterSeed:[B

    iget-object v1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    invoke-virtual {p2, p3, v1, p5, p6}, Lcom/keepassdroid/database/PwDatabaseV4;->makeFinalKey([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;J)V

    .line 129
    :try_start_0
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    invoke-static {p2}, Lcom/keepassdroid/crypto/CipherFactory;->getInstance(Ljava/util/UUID;)Lcom/keepassdroid/crypto/engine/CipherEngine;

    move-result-object p2

    .line 130
    iget-object p3, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iput-object p2, p3, Lcom/keepassdroid/database/PwDatabaseV4;->dataEngine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    const/4 p3, 0x2

    .line 131
    iget-object p5, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p5, p5, Lcom/keepassdroid/database/PwDatabaseV4;->finalKey:[B

    iget-object p6, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->encryptionIV:[B

    invoke-virtual {p2, p3, p5, p6}, Lcom/keepassdroid/crypto/engine/CipherEngine;->getCipher(I[B[B)Ljavax/crypto/Cipher;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    iget-wide p3, p0, Lcom/keepassdroid/database/load/ImporterV4;->version:J

    const-wide/32 p5, 0x40000

    const/16 v1, 0x20

    cmp-long v2, p3, p5

    if-gez v2, :cond_2

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/load/ImporterV4;->AttachCipherStream(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Ljava/io/InputStream;

    move-result-object p1

    .line 146
    new-instance p2, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {p2, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    array-length p3, p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p3, v1, :cond_1

    .line 157
    iget-object p3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->streamStartBytes:[B

    invoke-static {p1, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    new-instance p1, Lcom/keepassdroid/stream/HashedBlockInputStream;

    invoke-direct {p1, p2}, Lcom/keepassdroid/stream/HashedBlockInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidPasswordException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidPasswordException;-><init>()V

    throw p1

    .line 151
    :cond_1
    :try_start_2
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidPasswordException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidPasswordException;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidPasswordException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidPasswordException;-><init>()V

    throw p1

    .line 164
    :cond_2
    new-instance p3, Lcom/keepassdroid/stream/LEDataInputStream;

    invoke-direct {p3, p1}, Lcom/keepassdroid/stream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 165
    invoke-virtual {p3, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object p1

    .line 166
    iget-object p4, p0, Lcom/keepassdroid/database/load/ImporterV4;->hashOfHeader:[B

    invoke-static {p1, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 170
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabaseV4;->hmacKey:[B

    .line 171
    iget-object p4, p0, Lcom/keepassdroid/database/load/ImporterV4;->pbHeader:[B

    invoke-static {p4, p1}, Lcom/keepassdroid/database/PwDbHeaderV4;->computeHeaderHmac([B[B)[B

    move-result-object p4

    .line 172
    invoke-virtual {p3, v1}, Lcom/keepassdroid/stream/LEDataInputStream;->readBytes(I)[B

    move-result-object v2

    if-eqz v2, :cond_8

    .line 173
    array-length v3, v2

    if-ne v3, v1, :cond_8

    .line 177
    invoke-static {p4, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 181
    new-instance p4, Lcom/keepassdroid/stream/HmacBlockInputStream;

    const/4 v1, 0x1

    invoke-direct {p4, p3, v1, p1}, Lcom/keepassdroid/stream/HmacBlockInputStream;-><init>(Ljava/io/InputStream;Z[B)V

    .line 183
    invoke-direct {p0, p4, p2}, Lcom/keepassdroid/database/load/ImporterV4;->AttachCipherStream(Ljava/io/InputStream;Ljavax/crypto/Cipher;)Ljava/io/InputStream;

    move-result-object p1

    .line 187
    :goto_0
    iget-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    sget-object p3, Lcom/keepassdroid/database/PwCompressionAlgorithm;->Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    if-ne p2, p3, :cond_3

    .line 188
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    .line 193
    :cond_3
    iget-wide p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->version:J

    cmp-long p4, p2, p5

    if-ltz p4, :cond_4

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/database/load/ImporterV4;->LoadInnerHeader(Ljava/io/InputStream;Lcom/keepassdroid/database/PwDbHeaderV4;)V

    .line 197
    :cond_4
    iget-object p2, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    if-eqz p2, :cond_6

    .line 202
    iget-object p2, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStream:Lcom/keepassdroid/database/CrsAlgorithm;

    iget-object p3, v0, Lcom/keepassdroid/database/PwDbHeaderV4;->innerRandomStreamKey:[B

    invoke-static {p2, p3}, Lcom/keepassdroid/crypto/PwStreamCipherFactory;->getInstance(Lcom/keepassdroid/database/CrsAlgorithm;[B)Lorg/bouncycastle/crypto/StreamCipher;

    move-result-object p2

    iput-object p2, p0, Lcom/keepassdroid/database/load/ImporterV4;->randomStream:Lorg/bouncycastle/crypto/StreamCipher;

    if-eqz p2, :cond_5

    .line 208
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;->ReadXmlStreamed(Ljava/io/InputStream;)V

    .line 210
    iget-object p1, p0, Lcom/keepassdroid/database/load/ImporterV4;->db:Lcom/keepassdroid/database/PwDatabaseV4;

    return-object p1

    .line 205
    :cond_5
    new-instance p1, Lcom/keepassdroid/database/exception/ArcFourException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/ArcFourException;-><init>()V

    throw p1

    .line 199
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid stream key."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    :cond_7
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>()V

    throw p1

    .line 174
    :cond_8
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>()V

    throw p1

    .line 167
    :cond_9
    new-instance p1, Lcom/keepassdroid/database/exception/InvalidDBException;

    invoke-direct {p1}, Lcom/keepassdroid/database/exception/InvalidDBException;-><init>()V

    throw p1

    .line 139
    :catch_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :catch_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :catch_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :catch_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
