.class public Lcom/keepassdroid/database/load/ImporterV3Debug;
.super Lcom/keepassdroid/database/load/ImporterV3;
.source "ImporterV3Debug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/keepassdroid/database/load/ImporterV3;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDB()Lcom/keepassdroid/database/PwDatabaseV3;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/keepassdroid/database/load/ImporterV3Debug;->createDB()Lcom/keepassdroid/database/PwDatabaseV3Debug;

    move-result-object v0

    return-object v0
.end method

.method protected createDB()Lcom/keepassdroid/database/PwDatabaseV3Debug;
    .locals 1

    .line 33
    new-instance v0, Lcom/keepassdroid/database/PwDatabaseV3Debug;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwDatabaseV3Debug;-><init>()V

    return-object v0
.end method

.method public bridge synthetic openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 29
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV3Debug;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3Debug;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 29
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV3Debug;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3Debug;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3Debug;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 40
    invoke-super/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV3;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV3;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwDatabaseV3Debug;

    return-object p1
.end method
