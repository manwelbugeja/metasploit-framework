.class public Lcom/keepassdroid/fileselect/FileDbHelper;
.super Ljava/lang/Object;
.source "FileDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table files ( _id integer primary key autoincrement, fileName text not null, keyFile text, updated integer not null);"

.field public static final DATABASE_NAME:Ljava/lang/String; = "keepassdroid"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final FILE_TABLE:Ljava/lang/String; = "files"

.field public static final KEY_FILE_FILENAME:Ljava/lang/String; = "fileName"

.field public static final KEY_FILE_ID:Ljava/lang/String; = "_id"

.field public static final KEY_FILE_KEYFILE:Ljava/lang/String; = "keyFile"

.field public static final KEY_FILE_UPDATED:Ljava/lang/String; = "updated"

.field public static final LAST_FILENAME:Ljava/lang/String; = "lastFile"

.field public static final LAST_KEYFILE:Ljava/lang/String; = "lastKey"

.field public static final MAX_FILES:I = 0x5


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private deleteAllBut(I)V
    .locals 9

    .line 177
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "updated"

    aput-object v8, v2, v1

    const-string v1, "files"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 183
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DELETE FROM files WHERE updated<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static deleteDatabase(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "keepassdroid"

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 264
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-journal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v0, v2

    .line 265
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-shm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v0, v2

    .line 266
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v0, v2

    .line 268
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-mj"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 271
    new-instance v3, Lcom/keepassdroid/fileselect/FileDbHelper$1;

    invoke-direct {v3, p0}, Lcom/keepassdroid/fileselect/FileDbHelper$1;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    .line 259
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    const-string v0, "_id"

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "files"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-string v7, "fileName=?"

    new-array v8, v4, [Ljava/lang/String;

    aput-object p1, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "files"

    const-string v5, "updated"

    const-string v6, "keyFile"

    if-lez v2, :cond_0

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 146
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 147
    invoke-virtual {p1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    iget-object p2, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v4, p1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    int-to-long p1, p1

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "fileName"

    .line 155
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v4, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    :goto_0
    const/4 v0, 0x5

    .line 164
    :try_start_1
    invoke-direct {p0, v0}, Lcom/keepassdroid/fileselect/FileDbHelper;->deleteAllBut(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide p1

    :catch_1
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public deleteAllKeys()V
    .locals 4

    .line 191
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "keyFile"

    const-string v2, ""

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "files"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "files"

    const-string v2, "fileName = ?"

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public fetchAllFiles()Landroid/database/Cursor;
    .locals 9

    .line 204
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "fileName"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "keyFile"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "files"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated DESC"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchFile(J)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fileName"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "keyFile"

    aput-object v2, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const-string v2, "files"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object p1
.end method

.method public getFileByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 221
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const-string v2, "keyFile"

    const/4 v10, 0x0

    aput-object v2, v3, v10

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v10

    const-string v2, "files"

    const-string v4, "fileName= ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 230
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public hasRecentFiles()Z
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/FileDbHelper;->fetchAllFiles()Landroid/database/Cursor;

    move-result-object v0

    .line 243
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public isOpen()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public open()Lcom/keepassdroid/fileselect/FileDbHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDbHelper:Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;

    .line 116
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method
