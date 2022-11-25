.class public Lcom/keepassdroid/database/PwEntryV4;
.super Lcom/keepassdroid/database/PwEntry;
.source "PwEntryV4.java"

# interfaces
.implements Lcom/keepassdroid/database/ITimeLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/PwEntryV4$AutoType;
    }
.end annotation


# static fields
.field private static final FIXED_LENGTH_SIZE:J = 0x80L

.field public static final STR_NOTES:Ljava/lang/String; = "Notes"

.field public static final STR_PASSWORD:Ljava/lang/String; = "Password"

.field public static final STR_TITLE:Ljava/lang/String; = "Title"

.field public static final STR_URL:Ljava/lang/String; = "URL"

.field public static final STR_USERNAME:Ljava/lang/String; = "UserName"


# instance fields
.field public additional:Ljava/lang/String;

.field public autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

.field public backgroupColor:Ljava/lang/String;

.field public binaries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedBinary;",
            ">;"
        }
    .end annotation
.end field

.field private creation:Ljava/util/Date;

.field public customData:Lcom/keepassdroid/database/PwCustomData;

.field public customIcon:Lcom/keepassdroid/database/PwIconCustom;

.field private expireDate:Ljava/util/Date;

.field private expires:Z

.field public foregroundColor:Ljava/lang/String;

.field public history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/keepassdroid/database/PwEntryV4;",
            ">;"
        }
    .end annotation
.end field

.field private lastAccess:Ljava/util/Date;

.field private lastMod:Ljava/util/Date;

.field public overrideURL:Ljava/lang/String;

.field public parent:Lcom/keepassdroid/database/PwGroupV4;

.field private parentGroupLastMod:Ljava/util/Date;

.field public prevParentGroup:Ljava/util/UUID;

.field public qualityCheck:Z

.field public strings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/keepassdroid/database/security/ProtectedString;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field private usageCount:J

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntry;-><init>()V

    .line 43
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    .line 46
    sget-object v0, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/keepassdroid/database/PwEntryV4$AutoType;

    invoke-direct {v1, p0}, Lcom/keepassdroid/database/PwEntryV4$AutoType;-><init>(Lcom/keepassdroid/database/PwEntryV4;)V

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 53
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    .line 54
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    .line 55
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    .line 56
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    .line 57
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    .line 60
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->url:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->additional:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->tags:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/keepassdroid/database/PwCustomData;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwCustomData;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    .line 64
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->prevParentGroup:Ljava/util/UUID;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwEntryV4;->qualityCheck:Z

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0, v0}, Lcom/keepassdroid/database/PwEntryV4;-><init>(Lcom/keepassdroid/database/PwGroupV4;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/PwGroupV4;ZZ)V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntry;-><init>()V

    .line 43
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    .line 46
    sget-object v0, Lcom/keepassdroid/database/PwIconCustom;->ZERO:Lcom/keepassdroid/database/PwIconCustom;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/keepassdroid/database/PwEntryV4$AutoType;

    invoke-direct {v1, p0}, Lcom/keepassdroid/database/PwEntryV4$AutoType;-><init>(Lcom/keepassdroid/database/PwEntryV4;)V

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 53
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    .line 54
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    .line 55
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    .line 56
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    .line 57
    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->DEFAULT_NOW:Ljava/util/Date;

    iput-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    const/4 v1, 0x0

    .line 58
    iput-boolean v1, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    const-wide/16 v2, 0x0

    .line 59
    iput-wide v2, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    .line 60
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->url:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->additional:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->tags:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/keepassdroid/database/PwCustomData;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwCustomData;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customData:Lcom/keepassdroid/database/PwCustomData;

    .line 64
    sget-object v0, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->prevParentGroup:Ljava/util/UUID;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/keepassdroid/database/PwEntryV4;->qualityCheck:Z

    .line 112
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    if-eqz p2, :cond_0

    .line 115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    :cond_0
    if-eqz p3, :cond_1

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 121
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    .line 122
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    .line 123
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    .line 124
    iput-boolean v1, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    :cond_1
    return-void
.end method

.method public static IsStandardString(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Title"

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UserName"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Password"

    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "URL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Notes"

    .line 378
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private assign(Lcom/keepassdroid/database/PwEntryV4;)V
    .locals 2

    .line 165
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    .line 166
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    .line 167
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    .line 168
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    .line 169
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    .line 170
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->foregroundColor:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->backgroupColor:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    .line 173
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    .line 174
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 175
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    .line 176
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    .line 177
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    .line 178
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    .line 179
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    .line 180
    iget-boolean v0, p1, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    iput-boolean v0, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    .line 181
    iget-wide v0, p1, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    iput-wide v0, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    .line 182
    iget-object v0, p1, Lcom/keepassdroid/database/PwEntryV4;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->url:Ljava/lang/String;

    .line 183
    iget-object p1, p1, Lcom/keepassdroid/database/PwEntryV4;->additional:Ljava/lang/String;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->additional:Ljava/lang/String;

    return-void
.end method

.method private decodeRef(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 206
    :cond_0
    invoke-static {p2}, Lcom/keepassdroid/utils/SprEngine;->getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/utils/SprEngine;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1, p0, p2}, Lcom/keepassdroid/utils/SprEngine;->compile(Ljava/lang/String;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 0

    .line 195
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/PwEntryV4;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/keepassdroid/database/PwEntryV4;->decodeRef(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private maintainBackups(Lcom/keepassdroid/database/PwDatabaseV4;)Z
    .locals 11

    .line 392
    iget v0, p1, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxItems:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 394
    :goto_0
    iget-object v3, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntryV4;->removeOldestBackup()V

    const/4 v2, 0x1

    goto :goto_0

    .line 400
    :cond_0
    iget-wide v3, p1, Lcom/keepassdroid/database/PwDatabaseV4;->historyMaxSize:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    .line 404
    :goto_1
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v7, v5

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    .line 405
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV4;->getSize()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_2

    :cond_1
    cmp-long p1, v7, v3

    if-lez p1, :cond_2

    .line 409
    invoke-direct {p0}, Lcom/keepassdroid/database/PwEntryV4;->removeOldestBackup()V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private removeOldestBackup()V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 424
    :goto_0
    iget-object v4, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keepassdroid/database/PwEntry;

    .line 426
    invoke-virtual {v4}, Lcom/keepassdroid/database/PwEntry;->getLastModificationTime()Ljava/util/Date;

    move-result-object v4

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    move-object v1, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, v0, :cond_3

    .line 434
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public assign(Lcom/keepassdroid/database/PwEntry;)V
    .locals 1

    .line 154
    instance-of v0, p1, Lcom/keepassdroid/database/PwEntryV4;

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0, p1}, Lcom/keepassdroid/database/PwEntry;->assign(Lcom/keepassdroid/database/PwEntry;)V

    .line 160
    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    .line 161
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwEntryV4;->assign(Lcom/keepassdroid/database/PwEntryV4;)V

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "DB version mix."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone(Z)Lcom/keepassdroid/database/PwEntry;
    .locals 1

    .line 131
    invoke-super {p0, p1}, Lcom/keepassdroid/database/PwEntry;->clone(Z)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, v0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    :cond_0
    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 189
    invoke-super {p0}, Lcom/keepassdroid/database/PwEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    return-object v0
.end method

.method public cloneDeep()Lcom/keepassdroid/database/PwEntryV4;
    .locals 2

    const/4 v0, 0x1

    .line 142
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwEntryV4;->clone(Z)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    .line 144
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    .line 145
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 146
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntryV4$AutoType;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwEntryV4$AutoType;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    return-object v0
.end method

.method public createBackup(Lcom/keepassdroid/database/PwDatabaseV4;)V
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntryV4;->cloneDeep()Lcom/keepassdroid/database/PwEntryV4;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 384
    iget-object v1, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 386
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/PwEntryV4;->maintainBackups(Lcom/keepassdroid/database/PwDatabaseV4;)Z

    :cond_0
    return-void
.end method

.method public expires()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    return v0
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getIcon()Lcom/keepassdroid/database/PwIcon;
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/keepassdroid/database/PwIconCustom;->uuid:Ljava/util/UUID;

    sget-object v1, Lcom/keepassdroid/database/PwDatabaseV4;->UUID_ZERO:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->customIcon:Lcom/keepassdroid/database/PwIconCustom;

    return-object v0

    .line 368
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessTime()Ljava/util/Date;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    return-object v0
.end method

.method public getLastModificationTime()Ljava/util/Date;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getLocationChanged()Ljava/util/Date;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    return-object v0
.end method

.method public getNotes(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    const-string v0, "Notes"

    .line 357
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/database/PwEntryV4;->decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParent()Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwEntryV4;->getParent()Lcom/keepassdroid/database/PwGroupV4;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/keepassdroid/database/PwGroupV4;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    return-object v0
.end method

.method public getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    const-string v0, "Password"

    .line 222
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/database/PwEntryV4;->decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSize()J
    .locals 6

    .line 443
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x80

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 445
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-virtual {v3}, Lcom/keepassdroid/database/security/ProtectedString;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->binaries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 449
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 450
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/security/ProtectedBinary;

    invoke-virtual {v3}, Lcom/keepassdroid/database/security/ProtectedBinary;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_1

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV4$AutoType;->defaultSequence:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 454
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->autoType:Lcom/keepassdroid/database/PwEntryV4$AutoType;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntryV4$AutoType;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 455
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 456
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_2

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/database/PwEntryV4;

    .line 460
    invoke-virtual {v3}, Lcom/keepassdroid/database/PwEntryV4;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_3

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->overrideURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 464
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->tags:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/security/ProtectedString;

    if-nez p1, :cond_0

    .line 320
    new-instance p1, Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    const-string v0, "Title"

    .line 217
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/database/PwEntryV4;->decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getUrl(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    const-string v0, "URL"

    .line 362
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/database/PwEntryV4;->decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUsageCount()J
    .locals 2

    .line 335
    iget-wide v0, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    return-wide v0
.end method

.method public getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;
    .locals 1

    const-string v0, "UserName"

    .line 212
    invoke-direct {p0, p1, v0, p2}, Lcom/keepassdroid/database/PwEntryV4;->decodeRefKey(ZLjava/lang/String;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSearchingEnabled()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroupV4;->isSearchEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCreationTime(Ljava/util/Date;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->creation:Ljava/util/Date;

    return-void
.end method

.method public setExpires(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwEntryV4;->expires:Z

    return-void
.end method

.method public setExpiryTime(Ljava/util/Date;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->expireDate:Ljava/util/Date;

    return-void
.end method

.method public setLastAccessTime(Ljava/util/Date;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastAccess:Ljava/util/Date;

    return-void
.end method

.method public setLastModificationTime(Ljava/util/Date;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->lastMod:Ljava/util/Date;

    return-void
.end method

.method public setLocationChanged(Ljava/util/Date;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    return-void
.end method

.method public setNotes(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 1

    .line 279
    check-cast p2, Lcom/keepassdroid/database/PwDatabaseV4;

    .line 280
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    const-string v0, "Notes"

    .line 282
    invoke-virtual {p0, v0, p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setParent(Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 483
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->parent:Lcom/keepassdroid/database/PwGroupV4;

    return-void
.end method

.method public setPassword(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 1

    .line 263
    check-cast p2, Lcom/keepassdroid/database/PwDatabaseV4;

    .line 264
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    const-string v0, "Password"

    .line 266
    invoke-virtual {p0, v0, p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 326
    new-instance v0, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-direct {v0, p3, p2}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V

    .line 327
    iget-object p2, p0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTitle(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 1

    .line 247
    check-cast p2, Lcom/keepassdroid/database/PwDatabaseV4;

    .line 248
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    const-string v0, "Title"

    .line 250
    invoke-virtual {p0, v0, p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setUUID(Ljava/util/UUID;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/keepassdroid/database/PwEntryV4;->uuid:Ljava/util/UUID;

    return-void
.end method

.method public setUrl(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 1

    .line 271
    check-cast p2, Lcom/keepassdroid/database/PwDatabaseV4;

    .line 272
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    const-string v0, "URL"

    .line 274
    invoke-virtual {p0, v0, p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setUsageCount(J)V
    .locals 0

    .line 343
    iput-wide p1, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    return-void
.end method

.method public setUsername(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V
    .locals 1

    .line 255
    check-cast p2, Lcom/keepassdroid/database/PwDatabaseV4;

    .line 256
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabaseV4;->memoryProtection:Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;

    iget-boolean p2, p2, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    const-string v0, "UserName"

    .line 258
    invoke-virtual {p0, v0, p1, p2}, Lcom/keepassdroid/database/PwEntryV4;->setString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public touch(ZZ)V
    .locals 2

    .line 471
    invoke-super {p0, p1, p2}, Lcom/keepassdroid/database/PwEntry;->touch(ZZ)V

    .line 473
    iget-wide p1, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/keepassdroid/database/PwEntryV4;->usageCount:J

    return-void
.end method

.method public touchLocation()V
    .locals 1

    .line 478
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwEntryV4;->parentGroupLastMod:Ljava/util/Date;

    return-void
.end method
