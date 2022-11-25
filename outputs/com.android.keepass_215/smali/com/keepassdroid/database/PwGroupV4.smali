.class public Lcom/keepassdroid/database/PwGroupV4;
.super Lcom/keepassdroid/database/PwGroup;
.source "PwGroupV4.java"

# interfaces
.implements Lcom/keepassdroid/database/ITimeLogger;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_SEARCHING_ENABLED:Z = true


# instance fields
.field private creation:Ljava/util/Date;

.field public customData:Lcom/keepassdroid/database/PwCustomData;

.field public customIcon:Lcom/keepassdroid/database/PwIconCustom;

.field public defaultAutoTypeSequence:Ljava/lang/String;

.field public enableAutoType:Ljava/lang/Boolean;

.field public enableSearching:Ljava/lang/Boolean;

.field private expireDate:Ljava/util/Date;

.field private expires:Z

.field public isExpanded:Z

.field private lastAccess:Ljava/util/Date;

.field private lastMod:Ljava/util/Date;

.field public lastTopVisibleEntry:Ljava/util/UUID;

.field public notes:Ljava/lang/String;

.field public parent:Lcom/keepassdroid/database/PwGroupV4;

.field private parentGroupLastMod:Ljava/util/Date;

.field public prevParentGroup:Ljava/util/UUID;

.field public tags:Ljava/lang/String;

.field private usageCount:J

.field public uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Lcom/keepassdroid/database/PwGroup;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    .line 34
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->notes:Ljava/lang/String;

    .line 36
    sget-object v2, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    iput-object v2, p0, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/keepassdroid/database/PwGroupV4;->isExpanded:Z

    .line 38
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->defaultAutoTypeSequence:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->enableAutoType:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    .line 41
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastTopVisibleEntry:Ljava/util/UUID;

    .line 42
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    .line 43
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    .line 44
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    .line 46
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expireDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expires:Z

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/keepassdroid/database/PwGroupV4;->usageCount:J

    .line 50
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->prevParentGroup:Ljava/util/UUID;

    .line 51
    new-instance v0, Lcom/keepassdroid/database/PwCustomData;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwCustomData;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    .line 52
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Lcom/keepassdroid/database/PwIconStandard;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Lcom/keepassdroid/database/PwGroup;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    .line 34
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    const-string v1, ""

    .line 35
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->notes:Ljava/lang/String;

    .line 36
    sget-object v2, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    iput-object v2, p0, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    const/4 v2, 0x1

    .line 37
    iput-boolean v2, p0, Lcom/keepassdroid/database/PwGroupV4;->isExpanded:Z

    .line 38
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->defaultAutoTypeSequence:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->enableAutoType:Ljava/lang/Boolean;

    .line 40
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    .line 41
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastTopVisibleEntry:Ljava/util/UUID;

    .line 42
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    .line 43
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    .line 44
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    .line 45
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    .line 46
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expireDate:Ljava/util/Date;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expires:Z

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/keepassdroid/database/PwGroupV4;->usageCount:J

    .line 50
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->prevParentGroup:Ljava/util/UUID;

    .line 51
    new-instance v0, Lcom/keepassdroid/database/PwCustomData;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwCustomData;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    .line 52
    iput-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->tags:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 60
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    :cond_0
    if-eqz p2, :cond_1

    .line 64
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    .line 67
    :cond_1
    iput-object p3, p0, Lcom/keepassdroid/database/PwGroupV4;->name:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/keepassdroid/database/PwGroupV4;->icon:Lcom/keepassdroid/database/PwIconStandard;

    return-void
.end method


# virtual methods
.method public AddEntry(Lcom/keepassdroid/database/PwEntryV4;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/keepassdroid/database/PwGroupV4;->AddEntry(Lcom/keepassdroid/database/PwEntryV4;ZZ)V

    return-void
.end method

.method public AddEntry(Lcom/keepassdroid/database/PwEntryV4;ZZ)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->childEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 95
    iput-object p0, p1, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    :cond_0
    if-eqz p3, :cond_1

    .line 97
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setLocationChanged(Ljava/util/Date;)V

    :cond_1
    return-void
.end method

.method public AddGroup(Lcom/keepassdroid/database/PwGroupV4;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, v0}, Lcom/keepassdroid/database/PwGroupV4;->AddGroup(Lcom/keepassdroid/database/PwGroupV4;ZZ)V

    return-void
.end method

.method public AddGroup(Lcom/keepassdroid/database/PwGroupV4;ZZ)V
    .locals 2

    if-eqz p1, :cond_2

    .line 78
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->childGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 80
    iput-object p0, p1, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    :cond_0
    if-eqz p3, :cond_1

    .line 82
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p1, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    :cond_1
    return-void

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "subGroup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildChildEntriesRecursive(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/keepassdroid/database/PwGroupV4;->childEntries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/keepassdroid/database/PwGroupV4;->childEntries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwEntry;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->childGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->childGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV4;

    .line 122
    invoke-virtual {v1, p1}, Lcom/keepassdroid/database/PwGroupV4;->buildChildEntriesRecursive(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public buildChildGroupsRecursive(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->childGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->childGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroupV4;

    .line 110
    invoke-virtual {v1, p1}, Lcom/keepassdroid/database/PwGroupV4;->buildChildGroupsRecursive(Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expires()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expires:Z

    return v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Lcom/keepassdroid/database/PwIcon;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    return-object v0

    .line 216
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/PwGroup;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/keepassdroid/database/PwGroupId;
    .locals 2

    .line 129
    new-instance v0, Lcom/keepassdroid/database/PwGroupIdV4;

    iget-object v1, p0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getLastMod()Ljava/util/Date;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getLastModificationTime()Ljava/util/Date;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getLocationChanged()Ljava/util/Date;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    return-object v0
.end method

.method public getUsageCount()J
    .locals 2

    .line 169
    iget-wide v0, p0, Lcom/keepassdroid/database/PwGroupV4;->usageCount:J

    return-wide v0
.end method

.method public initNewGroup(Ljava/lang/String;Lcom/keepassdroid/database/PwGroupId;)V
    .locals 0

    .line 224
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwGroup;->initNewGroup(Ljava/lang/String;Lcom/keepassdroid/database/PwGroupId;)V

    .line 226
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    return-void
.end method

.method public isSearchEnabled()Z
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, v0, Lcom/keepassdroid/database/PwGroupV4;->enableSearching:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 234
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 237
    :cond_0
    iget-object v0, v0, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->creation:Ljava/util/Date;

    return-void
.end method

.method public setExpires(Z)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwGroupV4;->expires:Z

    return-void
.end method

.method public setExpiryTime(Ljava/util/Date;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->expireDate:Ljava/util/Date;

    return-void
.end method

.method public setId(Lcom/keepassdroid/database/PwGroupId;)V
    .locals 0

    .line 134
    check-cast p1, Lcom/keepassdroid/database/PwGroupIdV4;

    .line 135
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwGroupIdV4;->getId()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    return-void
.end method

.method public setLastAccessTime(Ljava/util/Date;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setLastModificationTime(Ljava/util/Date;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public setLocationChanged(Ljava/util/Date;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->parentGroupLastMod:Ljava/util/Date;

    return-void
.end method

.method public setParent(Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 209
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    iput-object p1, p0, Lcom/keepassdroid/database/PwGroupV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    return-void
.end method

.method public setUsageCount(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Lcom/keepassdroid/database/PwGroupV4;->usageCount:J

    return-void
.end method
