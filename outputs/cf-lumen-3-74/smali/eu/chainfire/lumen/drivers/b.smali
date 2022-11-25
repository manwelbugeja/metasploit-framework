.class public Leu/chainfire/lumen/drivers/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leu/chainfire/lumen/drivers/b;->b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    move-object v1, p1

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Leu/chainfire/lumen/drivers/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0x1000

    :try_start_1
    new-array v1, p2, [B

    :goto_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
