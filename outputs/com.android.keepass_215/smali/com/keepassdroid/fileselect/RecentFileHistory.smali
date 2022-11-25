.class public Lcom/keepassdroid/fileselect/RecentFileHistory;
.super Ljava/lang/Object;
.source "RecentFileHistory.java"


# static fields
.field private static DB_KEY:Ljava/lang/String; = "recent_databases"

.field private static KEYFILE_KEY:Ljava/lang/String; = "recent_keyfiles"


# instance fields
.field private ctx:Landroid/content/Context;

.field private databases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private init:Z

.field private keyfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listner:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->init:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->prefs:Landroid/content/SharedPreferences;

    .line 54
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->enabled:Z

    .line 55
    new-instance p1, Lcom/keepassdroid/fileselect/RecentFileHistory$1;

    invoke-direct {p1, p0}, Lcom/keepassdroid/fileselect/RecentFileHistory$1;-><init>(Lcom/keepassdroid/fileselect/RecentFileHistory;)V

    iput-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->listner:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/fileselect/RecentFileHistory;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keepassdroid/fileselect/RecentFileHistory;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->enabled:Z

    return p1
.end method

.method private declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->init:Z

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->upgradeFromSQL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->loadPrefs()V

    :cond_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->init:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadList(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 186
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_0
    if-ge v1, v2, :cond_0

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPrefs()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    sget-object v1, Lcom/keepassdroid/fileselect/RecentFileHistory;->DB_KEY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->loadList(Ljava/util/List;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    sget-object v1, Lcom/keepassdroid/fileselect/RecentFileHistory;->KEYFILE_KEY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->loadList(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private saveList(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 195
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 196
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private savePrefs()V
    .locals 2

    .line 178
    sget-object v0, Lcom/keepassdroid/fileselect/RecentFileHistory;->DB_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->saveList(Ljava/lang/String;Ljava/util/List;)V

    .line 179
    sget-object v0, Lcom/keepassdroid/fileselect/RecentFileHistory;->KEYFILE_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->saveList(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private sqlDatabaseExists()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    const-string v1, "keepassdroid"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private trimLists()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    :goto_0
    if-ge v1, v0, :cond_2

    .line 292
    iget-object v2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private upgradeFromSQL()Z
    .locals 7

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->sqlDatabaseExists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    new-instance v0, Lcom/keepassdroid/fileselect/FileDbHelper;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/keepassdroid/fileselect/FileDbHelper;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/FileDbHelper;->open()Lcom/keepassdroid/fileselect/FileDbHelper;

    .line 91
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/FileDbHelper;->fetchAllFiles()Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "fileName"

    .line 93
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "keyFile"

    .line 94
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 97
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 101
    iget-object v6, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v4, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->savePrefs()V

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/FileDbHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/keepassdroid/fileselect/FileDbHelper;->deleteDatabase(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public createFile(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->enabled:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->deleteFile(Landroid/net/Uri;Z)V

    .line 137
    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-nez p2, :cond_1

    const-string p1, ""

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :goto_0
    iget-object p2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {p2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 142
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->trimLists()V

    .line 143
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->savePrefs()V

    :cond_2
    :goto_1
    return-void
.end method

.method public deleteAll()V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 270
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 271
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->savePrefs()V

    return-void
.end method

.method public deleteAllKeys()V
    .locals 4

    .line 277
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 279
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->savePrefs()V

    return-void
.end method

.method public deleteFile(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->deleteFile(Landroid/net/Uri;Z)V

    return-void
.end method

.method public deleteFile(Landroid/net/Uri;Z)V
    .locals 5

    .line 209
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 211
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 214
    :goto_0
    iget-object v3, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 215
    iget-object v3, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 218
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 221
    iget-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    iget-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->savePrefs()V

    :cond_5
    return-void
.end method

.method public getDatabaseAt(I)Ljava/lang/String;
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 156
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getDbList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 238
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->ctx:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/keepassdroid/utils/UriUtil;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-static {v3}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFileByName(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    .line 253
    iget-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 257
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 259
    iget-object v3, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/keepassdroid/utils/UriUtil;->equalsDefaultfile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    iget-object p1, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getKeyfileAt(I)Ljava/lang/String;
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 165
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->keyfiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public hasRecentFiles()Z
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->init()V

    .line 151
    iget-object v0, p0, Lcom/keepassdroid/fileselect/RecentFileHistory;->databases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
