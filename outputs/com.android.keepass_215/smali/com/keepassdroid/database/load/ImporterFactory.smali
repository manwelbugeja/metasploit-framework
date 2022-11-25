.class public Lcom/keepassdroid/database/load/ImporterFactory;
.super Ljava/lang/Object;
.source "ImporterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createImporter(Ljava/io/InputStream;Ljava/io/File;)Lcom/keepassdroid/database/load/Importer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidDBSignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, p1, v0}, Lcom/keepassdroid/database/load/ImporterFactory;->createImporter(Ljava/io/InputStream;Ljava/io/File;Z)Lcom/keepassdroid/database/load/Importer;

    move-result-object p0

    return-object p0
.end method

.method public static createImporter(Ljava/io/InputStream;Ljava/io/File;Z)Lcom/keepassdroid/database/load/Importer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/InvalidDBSignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt(Ljava/io/InputStream;)I

    move-result v0

    .line 40
    invoke-static {p0}, Lcom/keepassdroid/stream/LEDataInputStream;->readInt(Ljava/io/InputStream;)I

    move-result p0

    .line 42
    invoke-static {v0, p0}, Lcom/keepassdroid/database/PwDbHeaderV3;->matchesHeader(II)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 44
    new-instance p0, Lcom/keepassdroid/database/load/ImporterV3Debug;

    invoke-direct {p0}, Lcom/keepassdroid/database/load/ImporterV3Debug;-><init>()V

    return-object p0

    .line 47
    :cond_0
    new-instance p0, Lcom/keepassdroid/database/load/ImporterV3;

    invoke-direct {p0}, Lcom/keepassdroid/database/load/ImporterV3;-><init>()V

    return-object p0

    .line 48
    :cond_1
    invoke-static {v0, p0}, Lcom/keepassdroid/database/PwDbHeaderV4;->matchesHeader(II)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 49
    new-instance p0, Lcom/keepassdroid/database/load/ImporterV4;

    invoke-direct {p0, p1}, Lcom/keepassdroid/database/load/ImporterV4;-><init>(Ljava/io/File;)V

    return-object p0

    .line 52
    :cond_2
    new-instance p0, Lcom/keepassdroid/database/exception/InvalidDBSignatureException;

    invoke-direct {p0}, Lcom/keepassdroid/database/exception/InvalidDBSignatureException;-><init>()V

    throw p0
.end method
