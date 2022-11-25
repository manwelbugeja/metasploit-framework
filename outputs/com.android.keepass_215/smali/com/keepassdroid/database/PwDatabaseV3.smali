.class public Lcom/keepassdroid/database/PwDatabaseV3;
.super Lcom/keepassdroid/database/PwDatabase;
.source "PwDatabaseV3.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final DEFAULT_ENCRYPTION_ROUNDS:I

.field public algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field public groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field public metaInfo:Lcom/keepassdroid/database/PwEntry;

.field public numKeyEncRounds:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/keepassdroid/database/PwDatabase;-><init>()V

    const/16 v0, 0x12c

    .line 67
    iput v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->DEFAULT_ENCRYPTION_ROUNDS:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    return-void
.end method

.method private initAndAddGroup(Ljava/lang/String;ILcom/keepassdroid/database/PwGroup;)V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV3;->createGroup()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV3;->newGroupId()Lcom/keepassdroid/database/PwGroupIdV3;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/database/PwGroup;->initNewGroup(Ljava/lang/String;Lcom/keepassdroid/database/PwGroupId;)V

    .line 344
    iget-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV3;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object p1

    iput-object p1, v0, Lcom/keepassdroid/database/PwGroup;->icon:Lcom/keepassdroid/database/PwIconStandard;

    .line 345
    invoke-virtual {p0, v0, p3}, Lcom/keepassdroid/database/PwDatabaseV3;->addGroupTo(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method


# virtual methods
.method public addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 272
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->addEntryTo(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 275
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGroupTo(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 281
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->addGroupTo(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V

    .line 284
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appSettingsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clearCache()V
    .locals 0

    return-void
.end method

.method public constructTree(Lcom/keepassdroid/database/PwGroupV3;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 162
    new-instance p1, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p1}, Lcom/keepassdroid/database/PwGroupV3;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV3;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    .line 165
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV3;->getGrpRoots()Ljava/util/List;

    move-result-object v1

    .line 166
    invoke-virtual {p1, v1}, Lcom/keepassdroid/database/PwGroupV3;->setGroups(Ljava/util/List;)V

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/keepassdroid/database/PwGroupV3;->childEntries:Ljava/util/List;

    const/4 v2, -0x1

    .line 168
    iput v2, p1, Lcom/keepassdroid/database/PwGroupV3;->level:I

    .line 169
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwGroupV3;

    .line 171
    iput-object p1, v2, Lcom/keepassdroid/database/PwGroupV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    .line 172
    invoke-virtual {p0, v2}, Lcom/keepassdroid/database/PwDatabaseV3;->constructTree(Lcom/keepassdroid/database/PwGroupV3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->getGrpChildren(Lcom/keepassdroid/database/PwGroupV3;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keepassdroid/database/PwGroupV3;->setGroups(Ljava/util/List;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->getEntries(Lcom/keepassdroid/database/PwGroupV3;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childEntries:Ljava/util/List;

    const/4 v1, 0x0

    .line 183
    :goto_1
    iget-object v2, p1, Lcom/keepassdroid/database/PwGroupV3;->childEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 184
    iget-object v2, p1, Lcom/keepassdroid/database/PwGroupV3;->childEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwEntryV3;

    .line 185
    iput-object p1, v2, Lcom/keepassdroid/database/PwEntryV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_2
    :goto_2
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 189
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV3;

    .line 190
    iput-object p1, v1, Lcom/keepassdroid/database/PwGroupV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    .line 191
    iget-object v1, p1, Lcom/keepassdroid/database/PwGroupV3;->childGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV3;

    invoke-virtual {p0, v1}, Lcom/keepassdroid/database/PwDatabaseV3;->constructTree(Lcom/keepassdroid/database/PwGroupV3;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public copyEncrypted([BII)V
    .locals 0

    return-void
.end method

.method public copyHeader(Lcom/keepassdroid/database/PwDbHeaderV3;)V
    .locals 0

    return-void
.end method

.method public createGroup()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 306
    new-instance v0, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwGroupV3;-><init>()V

    return-object v0
.end method

.method public getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getEntries(Lcom/keepassdroid/database/PwGroupV3;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/PwGroupV3;",
            ")",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 147
    :goto_0
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwEntryV3;

    .line 149
    iget v3, v2, Lcom/keepassdroid/database/PwEntryV3;->groupId:I

    iget v4, p1, Lcom/keepassdroid/database/PwGroupV3;->groupId:I

    if-ne v3, v4, :cond_0

    .line 150
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getGrpChildren(Lcom/keepassdroid/database/PwGroupV3;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/PwGroupV3;",
            ")",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 128
    iget p1, p1, Lcom/keepassdroid/database/PwGroupV3;->level:I

    add-int/lit8 p1, p1, 0x1

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwGroupV3;

    .line 132
    iget v3, v2, Lcom/keepassdroid/database/PwGroupV3;->level:I

    if-ge v3, p1, :cond_1

    goto :goto_1

    .line 134
    :cond_1
    iget v3, v2, Lcom/keepassdroid/database/PwGroupV3;->level:I

    if-ne v3, p1, :cond_0

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getGrpRoots()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 107
    :goto_0
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwGroupV3;

    .line 109
    iget v3, v2, Lcom/keepassdroid/database/PwGroupV3;->level:I

    if-nez v3, :cond_0

    .line 110
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabaseV3;->getCompositeKey(Ljava/lang/String;Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    .line 229
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->getPasswordKey(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 232
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/PwDatabaseV3;->getFileKey(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    .line 234
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumKeyEncRecords()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    return v0
.end method

.method public getNumRounds()J
    .locals 2

    .line 253
    iget v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getPasswordEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getRootGroupId()I
    .locals 3

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV3;

    .line 118
    iget v2, v1, Lcom/keepassdroid/database/PwGroupV3;->level:I

    if-nez v2, :cond_0

    .line 119
    iget v0, v1, Lcom/keepassdroid/database/PwGroupV3;->groupId:I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public initNew(Ljava/lang/String;)V
    .locals 2

    .line 350
    sget-object v0, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    iput-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->algorithm:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    const/16 v0, 0x12c

    .line 351
    iput v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    .line 353
    invoke-static {p1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 357
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->constructTree(Lcom/keepassdroid/database/PwGroupV3;)V

    const/4 p1, 0x1

    .line 360
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    const-string v1, "Internet"

    invoke-direct {p0, v1, p1, v0}, Lcom/keepassdroid/database/PwDatabaseV3;->initAndAddGroup(Ljava/lang/String;ILcom/keepassdroid/database/PwGroup;)V

    const/16 p1, 0x13

    .line 361
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    const-string v1, "eMail"

    invoke-direct {p0, v1, p1, v0}, Lcom/keepassdroid/database/PwDatabaseV3;->initAndAddGroup(Ljava/lang/String;ILcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public isBackup(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 2

    .line 320
    check-cast p1, Lcom/keepassdroid/database/PwGroupV3;

    :goto_0
    if-eqz p1, :cond_1

    .line 322
    iget v0, p1, Lcom/keepassdroid/database/PwGroupV3;->level:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/keepassdroid/database/PwGroupV3;->name:Ljava/lang/String;

    const-string v1, "Backup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 326
    :cond_0
    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV3;->parent:Lcom/keepassdroid/database/PwGroupV3;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z
    .locals 2

    .line 334
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 338
    invoke-virtual {p0, p1}, Lcom/keepassdroid/database/PwDatabaseV3;->isBackup(Lcom/keepassdroid/database/PwGroup;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected loadXmlKeyFile(Ljava/io/InputStream;)[B
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newGroupId()Lcom/keepassdroid/database/PwGroupId;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwDatabaseV3;->newGroupId()Lcom/keepassdroid/database/PwGroupIdV3;

    move-result-object v0

    return-object v0
.end method

.method public newGroupId()Lcom/keepassdroid/database/PwGroupIdV3;
    .locals 3

    .line 210
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwGroupIdV3;-><init>(I)V

    .line 212
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 215
    :cond_0
    new-instance v1, Lcom/keepassdroid/database/PwGroupIdV3;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/keepassdroid/database/PwGroupIdV3;-><init>(I)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/keepassdroid/database/PwDatabaseV3;->isGroupIdUsed(Lcom/keepassdroid/database/PwGroupId;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method

.method public removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 293
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->entries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeGroupFrom(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 298
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwDatabase;->removeGroupFrom(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V

    .line 301
    iget-object p2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV3;->groups:Ljava/util/List;

    return-void
.end method

.method public setNumRounds(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    long-to-int p2, p1

    .line 262
    iput p2, p0, Lcom/keepassdroid/database/PwDatabaseV3;->numKeyEncRounds:I

    return-void

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1}, Ljava/lang/NumberFormatException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/keepassdroid/database/PwDatabaseV3;->name:Ljava/lang/String;

    return-object v0
.end method
