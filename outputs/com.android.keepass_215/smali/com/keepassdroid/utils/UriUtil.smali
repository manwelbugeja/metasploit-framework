.class public Lcom/keepassdroid/utils/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equalsDefaultfile(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 64
    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 168
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "content"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 174
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_display_name"

    .line 175
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 177
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_0

    .line 182
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_0
    throw v1

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 182
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 192
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 p1, 0x2f

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :cond_7
    :goto_2
    return-object v0
.end method

.method public static getUriInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "content"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0

    .line 74
    :cond_3
    :goto_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static hasWritableContentUri(Landroid/net/Uri;)Z
    .locals 3

    .line 151
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "content"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.google.android.apps.docs.storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidFilePath(Ljava/lang/String;)Z
    .locals 2

    .line 139
    invoke-static {p0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static parseDefaultFile(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static translate(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    .line 92
    invoke-static {p0}, Lcom/keepassdroid/compat/StorageAF;->useStorageFramework(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->hasWritableContentUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "content"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "_data"

    const/4 v0, 0x0

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 103
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p0, :cond_2

    .line 106
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 110
    invoke-static {v0}, Lcom/keepassdroid/utils/UriUtil;->isValidFilePath(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move-object v0, v1

    .line 117
    :cond_3
    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/keepassdroid/utils/UriUtil;->isValidFilePath(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_0

    :catch_0
    nop

    .line 130
    :goto_0
    invoke-static {v1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 131
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string p1, "file"

    .line 132
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    :cond_6
    :goto_1
    return-object p1
.end method
