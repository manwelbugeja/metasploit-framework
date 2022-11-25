.class public Lcom/keepassdroid/search/SearchDbHelper;
.super Ljava/lang/Object;
.source "SearchDbHelper.java"


# instance fields
.field private final mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/keepassdroid/search/SearchDbHelper;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private omitBackup()Z
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/keepassdroid/search/SearchDbHelper;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/keepassdroid/search/SearchDbHelper;->mCtx:Landroid/content/Context;

    const v2, 0x7f100125

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/search/SearchDbHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public processEntries(Lcom/keepassdroid/database/PwEntry;Ljava/util/List;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/PwEntry;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->stringIterator()Lcom/keepassdroid/database/iterator/EntrySearchStringIterator;

    move-result-object v0

    .line 104
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-virtual {v1, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public search(Lcom/keepassdroid/Database;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroup;
    .locals 8

    .line 58
    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 61
    instance-of v0, p1, Lcom/keepassdroid/database/PwDatabaseV3;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/keepassdroid/database/PwGroupV3;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwGroupV3;-><init>()V

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/keepassdroid/database/PwDatabaseV4;

    if-eqz v0, :cond_5

    .line 64
    new-instance v0, Lcom/keepassdroid/database/PwGroupV4;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwGroupV4;-><init>()V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/search/SearchDbHelper;->mCtx:Landroid/content/Context;

    const v2, 0x7f10014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/keepassdroid/database/PwGroup;->name:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 74
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-direct {p0}, Lcom/keepassdroid/search/SearchDbHelper;->omitBackup()Z

    move-result v2

    .line 77
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 78
    iget-object v4, p1, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    if-eqz v4, :cond_1

    .line 79
    iget-object v4, p1, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keepassdroid/database/PwGroup;

    .line 85
    invoke-virtual {p1, v4, v2}, Lcom/keepassdroid/database/PwDatabase;->isGroupSearchable(Lcom/keepassdroid/database/PwGroup;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    iget-object v5, v4, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keepassdroid/database/PwEntry;

    .line 87
    iget-object v7, v0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-virtual {p0, v6, v7, p2, v1}, Lcom/keepassdroid/search/SearchDbHelper;->processEntries(Lcom/keepassdroid/database/PwEntry;Ljava/util/List;Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_1

    .line 90
    :cond_2
    iget-object v4, v4, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keepassdroid/database/PwGroup;

    if-eqz v5, :cond_3

    .line 92
    invoke-interface {v3, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0

    :cond_5
    const-string p1, "SearchDbHelper"

    const-string p2, "Tried to search with unknown db"

    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method
