.class Leu/chainfire/librootjava/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static a(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "LD_LIBRARY_PATH"

    invoke-static {v0}, Leu/chainfire/librootjava/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Leu/chainfire/librootjava/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_2

    const-string p0, "/system/lib64"

    const-string v2, "/data/lib64"

    const-string v3, "/vendor/lib64"

    const-string v4, "/data/vendor/lib64"

    goto :goto_0

    :cond_2
    const-string p0, "/system/lib"

    const-string v2, "/data/lib"

    const-string v3, "/vendor/lib"

    const-string v4, "/data/vendor/lib"

    :goto_0
    filled-new-array {p0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x3a

    if-ge v4, v2, :cond_5

    aget-object v6, p0, v4

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_4

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    array-length p0, p1

    :goto_3
    if-ge v3, p0, :cond_6

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const-string p0, "/librootjava"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-static {}, Leu/chainfire/librootjava/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
