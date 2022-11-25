.class public Lcom/keepassdroid/database/PwDatabaseV4;
.super Lcom/keepassdroid/database/PwDatabase;
.source "PwDatabaseV4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;,
        Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;,
        Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEFAULT_HISTORY_MAX_ITEMS:I = 0xa

.field private static final DEFAULT_HISTORY_MAX_SIZE:J = 0x600000L

.field public static final DEFAULT_NOW:Ljava/util/Date;

.field public static final DEFAULT_ROUNDS:I = 0x1770

.field private static final KeyDataElementName:Ljava/lang/String; = "Data"

.field private static final KeyElementName:Ljava/lang/String; = "Key"

.field private static final MetaElementName:Ljava/lang/String; = "Meta"

.field private static final RECYCLEBIN_NAME:Ljava/lang/String; = "RecycleBin"

.field private static final RootElementName:Ljava/lang/String; = "KeyFile"

.field public static final UUID_ZERO:Ljava/util/UUID;

.field private static final VersionElementName:Ljava/lang/String; = "Version"


# instance fields
.field public binPool:Lcom/keepassdroid/database/BinaryPool;

.field public color:Ljava/lang/String;

.field public compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

.field public customData:Lcom/keepassdroid/database/PwCustomData;

.field public customIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwIconCustom;",
            ">;"
        }
    .end annotation
.end field

.field public dataCipher:Ljava/util/UUID;

.field public dataEngine:Lcom/keepassdroid/crypto/engine/CipherEngine;

.field public defaultUserName:Ljava/lang/String;

.field public defaultUserNameChanged:Ljava/util/Date;

.field public deletedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwDeletedObject;",
            ">;"
        }
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public descriptionChanged:Ljava/util/Date;

.field public entryTemplatesGroup:Ljava/util/UUID;

.field public entryTemplatesGroupChanged:Ljava/util/Date;

.field public historyMaxItems:I

.field public historyMaxSize:J

.field public hmacKey:[B

.field public kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

.field public keyChangeForceDays:J

.field public keyChangeForceOnce:Z

.field public keyChangeRecDays:J

.field public keyLastChanged:Ljava/util/Date;

.field public lastSelectedGroup:Ljava/util/UUID;

.field public lastTopVisibleGroup:Ljava/util/UUID;

.field public localizedAppName:Ljava/lang/String;

.field public maintenanceHistoryDays:J

.field public memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

.field public nameChanged:Ljava/util/Date;

.field public numKeyEncRounds:J

.field public publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

.field public recycleBinChanged:Ljava/util/Date;

.field public recycleBinEnabled:Z

.field public recycleBinUUID:Ljava/util/UUID;

.field public settingsChanged:Ljava/util/Date;

.field public version:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    .line 61
    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabase;-><init>()V

    .line 68
    sget-object v0, Lcom/keepassdroid/crypto/engine/AesEngine;->CIPHER_UUID:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    .line 69
    new-instance v0, Lcom/keepassdroid/crypto/engine/AesEngine;

    invoke-direct {v0}, Lcom/keepassdroid/crypto/engine/AesEngine;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->dataEngine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    .line 70
    sget-object v0, Lcom/keepassdroid/database/PwCompressionAlgorithm;->Gzip:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->compressionAlgorithm:Lcom/keepassdroid/database/PwCompressionAlgorithm;

    const-wide/16 v0, 0x1770

    .line 72
    iput-wide v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    .line 73
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->nameChanged:Ljava/util/Date;

    .line 74
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->settingsChanged:Ljava/util/Date;

    const-string v1, ""

    .line 75
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->description:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->descriptionChanged:Ljava/util/Date;

    .line 77
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->defaultUserNameChanged:Ljava/util/Date;

    .line 80
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->keyLastChanged:Ljava/util/Date;

    const-wide/16 v2, -0x1

    .line 81
    iput-wide v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeRecDays:J

    const-wide/16 v2, 0x1

    .line 82
    iput-wide v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeForceDays:J

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->keyChangeForceOnce:Z

    const-wide/16 v2, 0x16d

    .line 85
    iput-wide v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->maintenanceHistoryDays:J

    .line 86
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->color:Ljava/lang/String;

    const/4 v1, 0x1

    .line 87
    iput-boolean v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    .line 88
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    .line 89
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinChanged:Ljava/util/Date;

    .line 90
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroup:Ljava/util/UUID;

    .line 91
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->entryTemplatesGroupChanged:Ljava/util/Date;

    const/16 v0, 0xa

    .line 92
    iput v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxItems:I

    const-wide/32 v2, 0x600000

    .line 93
    iput-wide v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxSize:J

    .line 94
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->lastSelectedGroup:Ljava/util/UUID;

    .line 95
    iput-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->lastTopVisibleGroup:Ljava/util/UUID;

    .line 96
    new-instance v0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    invoke-direct {v0, p0}, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->deletedObjects:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->customIcons:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/keepassdroid/database/PwCustomData;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwCustomData;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    .line 100
    invoke-static {}, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->getDefaultParameters()Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    .line 101
    new-instance v0, Lcom/keepassdroid/collections/VariantDictionary;

    invoke-direct {v0}, Lcom/keepassdroid/collections/VariantDictionary;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

    .line 102
    new-instance v0, Lcom/keepassdroid/database/BinaryPool;

    invoke-direct {v0}, Lcom/keepassdroid/database/BinaryPool;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    const-wide/32 v0, 0x40001

    .line 103
    iput-wide v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->version:J

    const-string v0, "KeePassDroid"

    .line 105
    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->localizedAppName:Ljava/lang/String;

    return-void
.end method

.method private dbNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 550
    invoke-static {p1, v0, v0}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-static {p1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "KeePass Database"

    return-object p1

    :cond_0
    const-string v0, "."

    .line 555
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 560
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decodeKey(Ljava/lang/String;J)[B
    .locals 3

    const-wide/high16 v0, 0x1000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    const/4 p2, 0x2

    .line 275
    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x2000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    const-string p2, "\\s"

    const-string p3, ""

    .line 278
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4;->decodeKeyV2(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private decodeKeyV2(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    return-object v0

    .line 296
    :cond_1
    div-int/lit8 v0, v1, 0x2

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 299
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 301
    invoke-direct {p0, v3}, Lcom/keepassdroid/database/PwDatabaseV4;->hexToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    add-int/lit8 v4, v2, 0x1

    .line 305
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 306
    invoke-direct {p0, v4}, Lcom/keepassdroid/database/PwDatabaseV4;->hexToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    shr-int/lit8 v4, v2, 0x1

    .line 310
    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private ensureRecycleBin()V
    .locals 4

    .line 445
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/keepassdroid/database/PwGroupV4;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "RecycleBin"

    invoke-direct {v0, v2, v2, v3, v1}, Lcom/keepassdroid/database/PwGroupV4;-><init>(ZZLjava/lang/String;Lcom/keepassdroid/database/PwIconStandard;)V

    const/4 v1, 0x0

    .line 449
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/PwGroupV4;->enableAutoType:Ljava/lang/Boolean;

    .line 450
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    .line 451
    iput-boolean v1, v0, Lcom/keepassdroid/database/PwGroupV4;->isExpanded:Z

    .line 452
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwDatabaseV4;->addGroupTo(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V

    .line 454
    iget-object v0, v0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    :cond_0
    return-void
.end method

.method private getVersion(Lorg/w3c/dom/NodeList;)J
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 335
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 336
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 338
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Meta"

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    .line 341
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 342
    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 343
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x0

    .line 346
    :goto_2
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 347
    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 348
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 349
    check-cast v6, Lorg/w3c/dom/Text;

    .line 350
    invoke-interface {v6}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    .line 351
    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->parseVersion(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private hexToByte(C)B
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    :goto_0
    int-to-byte p1, p1

    goto :goto_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v1, 0x66

    if-gt p1, v1, :cond_1

    :goto_1
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v1, 0x46

    if-gt p1, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method


# virtual methods
.method public appSettingsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canRecycle(Lcom/keepassdroid/database/PwEntry;)Z
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4;->canRecycle(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public canRecycle(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 2

    .line 460
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 464
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 466
    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwGroup;->isContainedIn(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public clearCache()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->binPool:Lcom/keepassdroid/database/BinaryPool;

    invoke-virtual {v0}, Lcom/keepassdroid/database/BinaryPool;->clear()V

    return-void
.end method

.method public createGroup()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 421
    new-instance v0, Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwGroupV4;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Lcom/keepassdroid/database/PwEntry;)V
    .locals 2

    .line 505
    invoke-super {p0, p1}, Lcom/keepassdroid/database/PwDatabase;->deleteEntry(Lcom/keepassdroid/database/PwEntry;)V

    .line 507
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->deletedObjects:Ljava/util/List;

    new-instance v1, Lcom/keepassdroid/database/PwDeletedObject;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/keepassdroid/database/PwDeletedObject;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;
    .locals 1

    .line 403
    sget-object v0, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    check-cast v1, Lcom/keepassdroid/database/PwGroupV4;

    .line 380
    invoke-virtual {v1, v0}, Lcom/keepassdroid/database/PwGroupV4;->buildChildEntriesRecursive(Ljava/util/List;)V

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    check-cast v1, Lcom/keepassdroid/database/PwGroupV4;

    .line 366
    invoke-virtual {v1, v0}, Lcom/keepassdroid/database/PwGroupV4;->buildChildGroupsRecursive(Ljava/util/List;)V

    return-object v0
.end method

.method public getGrpRoots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v0, v0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    return-object v0
.end method

.method public getMasterKey(Ljava/lang/String;Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidKeyFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabaseV4;->getCompositeKey(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4;->getPasswordKey(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 139
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/PwDatabaseV4;->getFileKey(Ljava/io/InputStream;)[B

    move-result-object p1

    :goto_0
    :try_start_0
    const-string p2, "SHA-256"

    .line 146
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1

    .line 148
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No SHA-256 implementation"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMinKdbxVersion()J
    .locals 7

    .line 607
    iget-wide v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->version:J

    .line 609
    new-instance v2, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDatabaseV4$1;)V

    .line 610
    new-instance v4, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;

    invoke-direct {v4, p0, v3}, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;-><init>(Lcom/keepassdroid/database/PwDatabaseV4;Lcom/keepassdroid/database/PwDatabaseV4$1;)V

    .line 612
    iget-object v3, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    const-wide/32 v5, 0x40001

    if-eqz v3, :cond_0

    .line 613
    iget-object v3, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v3, v4, v2}, Lcom/keepassdroid/database/PwGroup;->preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z

    .line 614
    iget v3, v4, Lcom/keepassdroid/database/PwDatabaseV4$GroupGetMinVer;->minVer:I

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 615
    iget v2, v2, Lcom/keepassdroid/database/PwDatabaseV4$EntryGetMinVer;->minVer:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-ltz v2, :cond_0

    return-wide v0

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->customIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwIconCustom;

    .line 623
    iget-object v4, v3, Lcom/keepassdroid/database/PwIconCustom;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/keepassdroid/database/PwIconCustom;->lastMod:Ljava/util/Date;

    if-eqz v3, :cond_1

    :cond_2
    return-wide v5

    .line 628
    :cond_3
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    invoke-virtual {v2}, Lcom/keepassdroid/database/PwCustomData;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 629
    iget-object v4, p0, Lcom/keepassdroid/database/PwDatabaseV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    invoke-virtual {v4, v3}, Lcom/keepassdroid/database/PwCustomData;->getLastMod(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    return-wide v5

    :cond_5
    const-wide/32 v2, 0x40000

    cmp-long v4, v0, v2

    if-ltz v4, :cond_6

    return-wide v0

    .line 638
    :cond_6
    sget-object v0, Lcom/keepassdroid/crypto/engine/ChaCha20Engine;->CIPHER_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->dataCipher:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-wide v2

    .line 642
    :cond_7
    sget-object v0, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->CIPHER_UUID:Ljava/util/UUID;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->kdfParameters:Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;

    iget-object v1, v1, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    return-wide v2

    .line 646
    :cond_8
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->publicCustomData:Lcom/keepassdroid/collections/VariantDictionary;

    invoke-virtual {v0}, Lcom/keepassdroid/collections/VariantDictionary;->size()I

    move-result v0

    if-lez v0, :cond_9

    return-wide v2

    :cond_9
    const-wide/32 v0, 0x30001

    return-wide v0
.end method

.method public getNumRounds()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    return-wide v0
.end method

.method protected getPasswordEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public bridge synthetic getRecycleBin()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    return-object v0
.end method

.method public getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV4;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinUUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    .line 524
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwGroupV4;

    return-object v0
.end method

.method public initNew(Ljava/lang/String;)V
    .locals 3

    .line 545
    new-instance v0, Lcom/keepassdroid/database/PwGroupV4;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, p1, v1}, Lcom/keepassdroid/database/PwGroupV4;-><init>(ZZLjava/lang/String;Lcom/keepassdroid/database/PwIconStandard;)V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    .line 546
    iget-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->groups:Ljava/util/Map;

    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isBackup(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 1

    .line 426
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->recycleBinEnabled:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwGroup;->isContainedIn(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    return p1
.end method

.method public isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z
    .locals 0

    .line 529
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 533
    :cond_0
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    .line 535
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroupV4;->isSearchEnabled()Z

    move-result p1

    return p1
.end method

.method protected loadXmlKeyFile(Ljava/io/InputStream;)[B
    .locals 12

    const/4 v0, 0x0

    .line 230
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 235
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 239
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 240
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    return-object v0

    .line 244
    :cond_1
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV4;->getVersion(Lorg/w3c/dom/NodeList;)J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 246
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 247
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 249
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 250
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    .line 251
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 252
    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 253
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Data"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    const/4 v8, 0x0

    .line 255
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 256
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 257
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 258
    check-cast v9, Lorg/w3c/dom/Text;

    .line 259
    invoke-interface {v9}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1, v2}, Lcom/keepassdroid/database/PwDatabaseV4;->decodeKey(Ljava/lang/String;J)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    :goto_3
    return-object v0
.end method

.method public makeFinalKey([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 177
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/keepassdroid/database/PwDatabaseV4;->makeFinalKey([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;J)V

    return-void
.end method

.method public makeFinalKey([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p2, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    invoke-static {v0}, Lcom/keepassdroid/crypto/keyDerivation/KdfFactory;->get(Ljava/util/UUID;)Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    .line 189
    iget-object v1, p2, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->kdfUUID:Ljava/util/UUID;

    sget-object v2, Lcom/keepassdroid/crypto/keyDerivation/AesKdf;->CIPHER_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "R"

    .line 190
    invoke-virtual {p2, v1, p3, p4}, Lcom/keepassdroid/crypto/keyDerivation/KdfParameters;->setUInt32(Ljava/lang/String;J)V

    .line 191
    iput-wide p3, p0, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    .line 194
    :cond_0
    iget-object p3, p0, Lcom/keepassdroid/database/PwDatabaseV4;->masterKey:[B

    invoke-virtual {v0, p3, p2}, Lcom/keepassdroid/crypto/keyDerivation/KdfEngine;->transform([BLcom/keepassdroid/crypto/keyDerivation/KdfParameters;)[B

    move-result-object p2

    .line 195
    array-length p3, p2

    const/16 p4, 0x20

    if-eq p3, p4, :cond_1

    .line 196
    invoke-static {p2}, Lcom/keepassdroid/crypto/CryptoUtil;->hashSha256([B)[B

    move-result-object p2

    :cond_1
    const/16 p3, 0x41

    new-array p3, p3, [B

    const/4 v0, 0x0

    .line 200
    invoke-static {p1, v0, p3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    invoke-static {p2, v0, p3, p4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->dataEngine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    invoke-virtual {p1}, Lcom/keepassdroid/crypto/engine/CipherEngine;->keyLength()I

    move-result p1

    const/16 p2, 0x40

    invoke-static {p3, v0, p2, p1}, Lcom/keepassdroid/crypto/CryptoUtil;->resizeKey([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->finalKey:[B

    :try_start_0
    const-string p1, "SHA-512"

    .line 206
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/4 p4, 0x1

    aput-byte p4, p3, p2

    .line 208
    invoke-virtual {p1, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->hmacKey:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 210
    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No SHA-512 implementation"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_0
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 213
    throw p1

    .line 185
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unknown key derivation function"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public makeFinalKey([B[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->masterKey:[B

    invoke-static {p2, v0, p3}, Lcom/keepassdroid/database/PwDatabaseV4;->transformMasterKey([B[BI)[B

    move-result-object p2

    const/16 p3, 0x41

    new-array p3, p3, [B

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 161
    invoke-static {p1, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    invoke-static {p2, v0, p3, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    iget-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->dataEngine:Lcom/keepassdroid/crypto/engine/CipherEngine;

    invoke-virtual {p1}, Lcom/keepassdroid/crypto/engine/CipherEngine;->keyLength()I

    move-result p1

    const/16 p2, 0x40

    invoke-static {p3, v0, p2, p1}, Lcom/keepassdroid/crypto/CryptoUtil;->resizeKey([BIII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->finalKey:[B

    :try_start_0
    const-string p1, "SHA-512"

    .line 167
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    const/4 v1, 0x1

    aput-byte v1, p3, p2

    .line 169
    invoke-virtual {p1, p3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->hmacKey:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 171
    :catch_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No SHA-512 implementation"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_0
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 174
    throw p1
.end method

.method public bridge synthetic newGroupId()Lcom/keepassdroid/database/PwGroupId;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->newGroupId()Lcom/keepassdroid/database/PwGroupIdV4;

    move-result-object v0

    return-object v0
.end method

.method public newGroupId()Lcom/keepassdroid/database/PwGroupIdV4;
    .locals 2

    .line 408
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV4;

    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    .line 411
    :cond_0
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV4;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    .line 413
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwDatabaseV4;->isGroupIdUsed(Lcom/keepassdroid/database/PwGroupId;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public populateGlobals(Lcom/keepassdroid/database/PwGroup;)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV4;->groups:Ljava/util/Map;

    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-super {p0, p1}, Lcom/keepassdroid/database/PwDatabase;->populateGlobals(Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public recycle(Lcom/keepassdroid/database/PwEntry;)V
    .locals 3

    .line 481
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->ensureRecycleBin()V

    .line 483
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    .line 484
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/PwDatabaseV4;->removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 485
    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwGroup;->touch(ZZ)V

    .line 487
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/PwDatabaseV4;->addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 490
    invoke-virtual {p1, v1, v2}, Lcom/keepassdroid/database/PwEntry;->touch(ZZ)V

    .line 491
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->touchLocation()V

    return-void
.end method

.method public setNumRounds(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 392
    iput-wide p1, p0, Lcom/keepassdroid/database/PwDatabaseV4;->numKeyEncRounds:J

    return-void
.end method

.method public undoDeleteEntry(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 1

    .line 512
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->undoDeleteEntry(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 514
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabaseV4;->deletedObjects:Ljava/util/List;

    new-instance v0, Lcom/keepassdroid/database/PwDeletedObject;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keepassdroid/database/PwDeletedObject;-><init>(Ljava/util/UUID;)V

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public undoRecycle(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV4;->getRecycleBin()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/PwDatabaseV4;->removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabaseV4;->addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public validatePasswordEncoding(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
