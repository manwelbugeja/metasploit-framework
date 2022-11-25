.class public Lcom/keepassdroid/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.keepassdroid.Database"


# instance fields
.field public dirty:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field public drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

.field private loaded:Z

.field public mUri:Landroid/net/Uri;

.field public passwordEncodingError:Z

.field public pm:Lcom/keepassdroid/database/PwDatabase;

.field public readOnly:Z

.field public searchHelper:Lcom/keepassdroid/search/SearchDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/keepassdroid/Database;->readOnly:Z

    .line 69
    iput-boolean v0, p0, Lcom/keepassdroid/Database;->passwordEncodingError:Z

    .line 71
    new-instance v1, Lcom/keepassdroid/icons/DrawableFactory;

    invoke-direct {v1}, Lcom/keepassdroid/icons/DrawableFactory;-><init>()V

    iput-object v1, p0, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    .line 73
    iput-boolean v0, p0, Lcom/keepassdroid/Database;->loaded:Z

    return-void
.end method

.method private getFixRounds(Landroid/content/Context;)J
    .locals 4

    .line 117
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f100142

    .line 118
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0a0035

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private passUrisAsInputStreams(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;ZJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    const-string v1, "Database::LoadData"

    const-string v2, "KPD"

    .line 125
    :try_start_0
    invoke-static {p1, p2}, Lcom/keepassdroid/utils/UriUtil;->getUriInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, p1

    move-object/from16 v3, p4

    .line 132
    :try_start_1
    invoke-static {p1, v3}, Lcom/keepassdroid/utils/UriUtil;->getUriInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    .line 137
    invoke-virtual/range {v3 .. v11}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;ZJ)V

    return-void

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 134
    invoke-static {v2, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    invoke-static/range {p4 .. p4}, Lcom/keepassdroid/database/exception/ContentFileNotFoundException;->getInstance(Landroid/net/Uri;)Ljava/io/FileNotFoundException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 127
    invoke-static {v2, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    invoke-static {p2}, Lcom/keepassdroid/database/exception/ContentFileNotFoundException;->getInstance(Landroid/net/Uri;)Ljava/io/FileNotFoundException;

    move-result-object v0

    throw v0
.end method

.method private saveFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 233
    iget-object p1, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-static {p1, v0}, Lcom/keepassdroid/database/save/PwDbOutput;->getInstance(Lcom/keepassdroid/database/PwDatabase;Ljava/io/OutputStream;)Lcom/keepassdroid/database/save/PwDbOutput;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Lcom/keepassdroid/database/save/PwDbOutput;->output()V

    .line 235
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 239
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 88
    new-instance v5, Lcom/keepassdroid/UpdateStatus;

    invoke-direct {v5}, Lcom/keepassdroid/UpdateStatus;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;Z)V

    return-void
.end method

.method public LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;Z)V

    return-void
.end method

.method public LoadData(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    move-object v10, p0

    move-object v11, p2

    .line 96
    iput-object v11, v10, Lcom/keepassdroid/Database;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, v10, Lcom/keepassdroid/Database;->readOnly:Z

    .line 98
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v10, Lcom/keepassdroid/Database;->readOnly:Z

    :cond_0
    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    .line 104
    :try_start_0
    invoke-direct/range {v1 .. v9}, Lcom/keepassdroid/Database;->passUrisAsInputStreams(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;ZJ)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/InvalidPasswordException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 108
    :try_start_1
    invoke-direct {p0, p1}, Lcom/keepassdroid/Database;->getFixRounds(Landroid/content/Context;)J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/keepassdroid/Database;->passUrisAsInputStreams(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/UpdateStatus;ZJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    .line 111
    :catch_1
    throw v12
.end method

.method public LoadData(Landroid/content/Context;Lcom/keepassdroid/database/PwDatabase;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;)V
    .locals 0

    const/4 p4, 0x1

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2, p3}, Lcom/keepassdroid/database/PwDatabase;->validatePasswordEncoding(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, p4

    iput-boolean p2, p0, Lcom/keepassdroid/Database;->passwordEncodingError:Z

    .line 175
    :cond_0
    new-instance p2, Lcom/keepassdroid/search/SearchDbHelper;

    invoke-direct {p2, p1}, Lcom/keepassdroid/search/SearchDbHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/keepassdroid/Database;->searchHelper:Lcom/keepassdroid/search/SearchDbHelper;

    .line 176
    iput-boolean p4, p0, Lcom/keepassdroid/Database;->loaded:Z

    return-void
.end method

.method public LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 84
    new-instance v5, Lcom/keepassdroid/UpdateStatus;

    invoke-direct {v5}, Lcom/keepassdroid/UpdateStatus;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;Z)V

    return-void
.end method

.method public LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 145
    invoke-virtual/range {v0 .. v8}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;ZJ)V

    return-void
.end method

.method public LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;ZJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 149
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->markSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    .line 156
    invoke-virtual {v1, p2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-static {v1, p2, p6}, Lcom/keepassdroid/database/load/ImporterFactory;->createImporter(Ljava/io/InputStream;Ljava/io/File;Z)Lcom/keepassdroid/database/load/Importer;

    move-result-object v0

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-wide v5, p7

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/database/load/Importer;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabase;

    move-result-object p2

    iput-object p2, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    if-eqz p2, :cond_0

    .line 164
    iget-object p2, p2, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    .line 165
    iget-object p6, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p6, p2}, Lcom/keepassdroid/database/PwDatabase;->populateGlobals(Lcom/keepassdroid/database/PwGroup;)V

    .line 166
    iget-object v2, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Lcom/keepassdroid/database/PwDatabase;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;)V

    :cond_0
    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lcom/keepassdroid/Database;->loaded:Z

    return-void

    .line 152
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input stream does not support mark."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 141
    new-instance v5, Lcom/keepassdroid/UpdateStatus;

    invoke-direct {v5}, Lcom/keepassdroid/UpdateStatus;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/keepassdroid/Database;->LoadData(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;Z)V

    return-void
.end method

.method public Loaded()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/keepassdroid/Database;->loaded:Z

    return v0
.end method

.method public SaveData(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/FileUriException;,
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/keepassdroid/Database;->mUri:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/Database;->SaveData(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public SaveData(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/FileUriException;,
            Lcom/keepassdroid/database/exception/PwDbOutputException;
        }
    .end annotation

    .line 189
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Failed to store database."

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    :try_start_0
    invoke-direct {p0, v0}, Lcom/keepassdroid/Database;->saveFile(Ljava/io/File;)V

    .line 196
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :catch_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v0}, Lcom/keepassdroid/Database;->saveFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 207
    new-instance p2, Lcom/keepassdroid/database/exception/FileUriException;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/exception/FileUriException;-><init>(Ljava/lang/Exception;)V

    throw p2

    .line 214
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rwt"

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_2

    .line 223
    iget-object v0, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-static {v0, p1}, Lcom/keepassdroid/database/save/PwDbOutput;->getInstance(Lcom/keepassdroid/database/PwDatabase;Ljava/io/OutputStream;)Lcom/keepassdroid/database/save/PwDbOutput;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/keepassdroid/database/save/PwDbOutput;->output()V

    .line 225
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 227
    :goto_0
    iput-object p2, p0, Lcom/keepassdroid/Database;->mUri:Landroid/net/Uri;

    return-void

    .line 220
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :catch_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public Search(Ljava/lang/String;)Lcom/keepassdroid/database/PwGroup;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/keepassdroid/Database;->searchHelper:Lcom/keepassdroid/search/SearchDbHelper;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/keepassdroid/search/SearchDbHelper;->search(Lcom/keepassdroid/Database;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroup;

    move-result-object p1

    return-object p1
.end method

.method public clear(Landroid/content/Context;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 247
    iget-object v0, p0, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {v0}, Lcom/keepassdroid/icons/DrawableFactory;->clear()V

    .line 249
    iget-object v0, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDatabase;->clearCache()V

    .line 253
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    sget-object v0, Lcom/keepassdroid/Database;->TAG:Ljava/lang/String;

    const-string v1, "Unable to clear the directory cache."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 259
    iput-object p1, p0, Lcom/keepassdroid/Database;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 260
    iput-boolean p1, p0, Lcom/keepassdroid/Database;->loaded:Z

    .line 261
    iput-boolean p1, p0, Lcom/keepassdroid/Database;->passwordEncodingError:Z

    return-void
.end method

.method public markAllGroupsAsDirty()V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDatabase;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroup;

    .line 266
    iget-object v2, p0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    instance-of v1, v0, Lcom/keepassdroid/database/PwDatabaseV3;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/keepassdroid/Database;->loaded:Z

    return-void
.end method
