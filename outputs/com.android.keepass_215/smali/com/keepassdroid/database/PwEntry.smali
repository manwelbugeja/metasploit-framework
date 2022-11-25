.class public abstract Lcom/keepassdroid/database/PwEntry;
.super Ljava/lang/Object;
.source "PwEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/PwEntry$EntryNameComparator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final PMS_TAN_ENTRY:Ljava/lang/String; = "<TAN>"


# instance fields
.field public icon:Lcom/keepassdroid/database/PwIconStandard;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/keepassdroid/database/PwIconStandard;->FIRST:Lcom/keepassdroid/database/PwIconStandard;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwGroup;)Lcom/keepassdroid/database/PwEntry;
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-static {p0, v0, v0}, Lcom/keepassdroid/database/PwEntry;->getInstance(Lcom/keepassdroid/database/PwGroup;ZZ)Lcom/keepassdroid/database/PwEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/keepassdroid/database/PwGroup;ZZ)Lcom/keepassdroid/database/PwEntry;
    .locals 0

    .line 52
    instance-of p1, p0, Lcom/keepassdroid/database/PwGroupV3;

    if-eqz p1, :cond_0

    .line 53
    new-instance p1, Lcom/keepassdroid/database/PwEntryV3;

    check-cast p0, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {p1, p0}, Lcom/keepassdroid/database/PwEntryV3;-><init>(Lcom/keepassdroid/database/PwGroupV3;)V

    return-object p1

    .line 55
    :cond_0
    instance-of p1, p0, Lcom/keepassdroid/database/PwGroupV4;

    if-eqz p1, :cond_1

    .line 56
    new-instance p1, Lcom/keepassdroid/database/PwEntryV4;

    check-cast p0, Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {p1, p0}, Lcom/keepassdroid/database/PwEntryV4;-><init>(Lcom/keepassdroid/database/PwGroupV4;)V

    return-object p1

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown PwGroup instance."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public assign(Lcom/keepassdroid/database/PwEntry;)V
    .locals 0

    .line 81
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    return-void
.end method

.method public clone(Z)Lcom/keepassdroid/database/PwEntry;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwEntry;

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 67
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntry;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Clone should be supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract expires()Z
.end method

.method public abstract getCreationTime()Ljava/util/Date;
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 2

    .line 140
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->isTan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<TAN> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getExpiryTime()Ljava/util/Date;
.end method

.method public getIcon()Lcom/keepassdroid/database/PwIcon;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    return-object v0
.end method

.method public abstract getLastAccessTime()Ljava/util/Date;
.end method

.method public abstract getLastModificationTime()Ljava/util/Date;
.end method

.method public getNotes()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwEntry;->getNotes(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getNotes(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
.end method

.method public abstract getParent()Lcom/keepassdroid/database/PwGroup;
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwEntry;->getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwEntry;->getTitle(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTitle(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
.end method

.method public abstract getUUID()Ljava/util/UUID;
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwEntry;->getUrl(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUrl(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/database/PwEntry;->getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
.end method

.method public isMetaStream()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSearchingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTan()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<TAN>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract setCreationTime(Ljava/util/Date;)V
.end method

.method public abstract setExpires(Z)V
.end method

.method public abstract setExpiryTime(Ljava/util/Date;)V
.end method

.method public abstract setLastAccessTime(Ljava/util/Date;)V
.end method

.method public abstract setLastModificationTime(Ljava/util/Date;)V
.end method

.method public abstract setNotes(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
.end method

.method public abstract setParent(Lcom/keepassdroid/database/PwGroup;)V
.end method

.method public abstract setPassword(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
.end method

.method public abstract setTitle(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
.end method

.method public abstract setUUID(Ljava/util/UUID;)V
.end method

.method public abstract setUrl(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
.end method

.method public abstract setUsername(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
.end method

.method public stringIterator()Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;
    .locals 1

    .line 153
    invoke-static {p0}, Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;->getInstance(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;

    move-result-object v0

    return-object v0
.end method

.method public touch(ZZ)V
    .locals 1

    .line 157
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 159
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwEntry;->setLastAccessTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwEntry;->setLastModificationTime(Ljava/util/Date;)V

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 167
    invoke-virtual {v0, p1, p2}, Lcom/keepassdroid/database/PwGroup;->touch(ZZ)V

    :cond_1
    return-void
.end method

.method public touchLocation()V
    .locals 0

    return-void
.end method
