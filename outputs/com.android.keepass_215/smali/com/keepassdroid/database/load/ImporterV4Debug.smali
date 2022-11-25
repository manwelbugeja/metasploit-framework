.class public Lcom/keepassdroid/database/load/ImporterV4Debug;
.super Lcom/keepassdroid/database/load/ImporterV4;
.source "ImporterV4Debug.java"


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDB()Lcom/keepassdroid/database/PwDatabaseV4;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/keepassdroid/database/load/ImporterV4Debug;->createDB()Lcom/keepassdroid/database/PwDatabaseV4Debug;

    move-result-object v0

    return-object v0
.end method

.method protected createDB()Lcom/keepassdroid/database/PwDatabaseV4Debug;
    .locals 1

    .line 38
    new-instance v0, Lcom/keepassdroid/database/PwDatabaseV4Debug;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwDatabaseV4Debug;-><init>()V

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

    .line 30
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV4Debug;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4Debug;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 30
    invoke-virtual/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV4Debug;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4Debug;

    move-result-object p1

    return-object p1
.end method

.method public openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4Debug;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/keepassdroid/database/exception/InvalidDBException;
        }
    .end annotation

    .line 45
    invoke-super/range {p0 .. p6}, Lcom/keepassdroid/database/load/ImporterV4;->openDatabase(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/InputStream;Lcom/keepassdroid/UpdateStatus;J)Lcom/keepassdroid/database/PwDatabaseV4;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwDatabaseV4Debug;

    return-object p1
.end method
