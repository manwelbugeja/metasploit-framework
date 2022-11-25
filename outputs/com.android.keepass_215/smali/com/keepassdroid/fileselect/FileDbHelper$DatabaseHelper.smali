.class Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FileDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fileselect/FileDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "keepassdroid"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;->mCtx:Landroid/content/Context;

    return-void
.end method

.method private deletePrefs(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 100
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lastFile"

    .line 101
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastKey"

    .line 102
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "create table files ( _id integer primary key autoincrement, fileName text not null, keyFile text, updated integer not null);"

    .line 68
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;->mCtx:Landroid/content/Context;

    const-string v1, "PasswordActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastFile"

    const-string v2, ""

    .line 72
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lastKey"

    .line 73
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 76
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "fileName"

    .line 77
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "updated"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "keyFile"

    .line 81
    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "files"

    .line 84
    invoke-virtual {p1, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87
    invoke-direct {p0, v0}, Lcom/keepassdroid/fileselect/FileDbHelper$DatabaseHelper;->deletePrefs(Landroid/content/SharedPreferences;)V

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
