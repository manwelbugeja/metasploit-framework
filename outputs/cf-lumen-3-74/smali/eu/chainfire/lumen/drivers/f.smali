.class Leu/chainfire/lumen/drivers/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/drivers/f$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/f;->c:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    check-cast p1, Ldalvik/system/BaseDexClassLoader;

    const-string v0, "cflumen"

    invoke-virtual {p1, v0}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "/data/data/eu.chainfire.lumen/lib/libcflumen.so"

    :cond_1
    iput-object v0, p0, Leu/chainfire/lumen/drivers/f;->a:Ljava/lang/String;

    const-string p1, "64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "/system/lib64/libcflumen.so"

    goto :goto_1

    :cond_2
    const-string p1, "/system/lib/libcflumen.so"

    :goto_1
    iput-object p1, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length v1, p2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget-object v4, p2, v3

    aput-object v4, v2, v3

    :goto_1
    aget-object v4, v2, v3

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    aget-object v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_4

    aget-object v4, p1, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FOUND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    return v0
.end method

.method private b()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ls -l /system/bin/surfaceflinger_cflumen"

    invoke-static {v2, v1}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c$h;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "/system/bin/surfaceflinger_cflumen"

    :goto_0
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_2
    return v0
.end method

.method private f()Z
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/surfaceflinger"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/f;->b()Z

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "isSurfaceFlingerRouted: mainLength[%d] routedExists[%d]"

    invoke-static {v4, v3}, Leu/chainfire/librootjava/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x3e8

    cmp-long v7, v0, v3

    if-gez v7, :cond_0

    if-eqz v2, :cond_0

    const/4 v5, 0x1

    :cond_0
    return v5
.end method

.method private g()Z
    .locals 10

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_7

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-lez v7, :cond_7

    cmp-long v0, v2, v5

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/f;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v0, v5

    new-array v3, v0, [B

    new-array v5, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_4

    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-eq v6, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_3

    aget-byte v7, v3, v6

    aget-byte v8, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v7, v8, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    return v4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    :catch_6
    nop

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :catch_7
    :cond_6
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return v4
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Leu/chainfire/lumen/drivers/f;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/high16 p2, 0x10000

    new-array p2, p2, [B

    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_6

    :catchall_0
    move-exception p2

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :catch_1
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object p1, v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    nop

    :cond_2
    :goto_3
    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_3
    throw p2

    :catch_4
    move-object p1, v0

    :goto_4
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    nop

    :cond_4
    :goto_5
    if-eqz p1, :cond_5

    :try_start_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_5
    :goto_6
    return-void
.end method

.method private i()V
    .locals 1

    const-string v0, "cflumen.zip"

    invoke-direct {p0, v0, v0}, Leu/chainfire/lumen/drivers/f;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "99-cflumen.sh"

    invoke-direct {p0, v0, v0}, Leu/chainfire/lumen/drivers/f;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    const-string v0, "/system/addon.d/99-cflumen.sh"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/addon.d"

    invoke-direct {p0, v1, v0}, Leu/chainfire/lumen/drivers/f;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/bin/surfaceflinger_cflumen"

    const-string v1, "/system/bin/surfaceflinger_shell"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/bin"

    invoke-direct {p0, v1, v0}, Leu/chainfire/lumen/drivers/f;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib64/libcflumen.so"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/lib64"

    invoke-direct {p0, v1, v0}, Leu/chainfire/lumen/drivers/f;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/lib/libcflumen.so"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/lib"

    invoke-direct {p0, v1, v0}, Leu/chainfire/lumen/drivers/f;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

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

.method public d(Z)Z
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/drivers/f;->i()V

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/drivers/f;->f()Z

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "chcon u:object_r:system_file:s0 %s"

    const-string v4, "chown root.root %s"

    const-string v5, "/data/data/eu.chainfire.lumen/files/99-cflumen.sh"

    const-string v6, "/cache/recovery/cflumen.zip"

    const-string v7, "chmod 0755 %s"

    const-string v8, "cp %s %s"

    const-string v9, "cat %s > %s"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_0

    const-string v13, "mount -o rw,remount /system"

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "mount -o rw,remount /system /system"

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v5, v13, v12

    const-string v5, "/system/addon.d/99-cflumen.sh"

    aput-object v5, v13, v11

    invoke-static {v8, v13}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v5, v13, v12

    invoke-static {v7, v13}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v5, v13, v12

    invoke-static {v4, v13}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v5, v13, v12

    invoke-static {v3, v13}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v14, v10, [Ljava/lang/Object;

    const-string v15, "/data/data/eu.chainfire.lumen/files/cflumen.zip"

    aput-object v15, v14, v12

    aput-object v6, v14, v11

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v5, v14, v12

    const-string v5, "/cache/recovery/99-cflumen.sh"

    aput-object v5, v14, v11

    invoke-static {v13, v9, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "/system/bin/surfaceflinger"

    const-string v13, "/system/bin/surfaceflinger_cflumen"

    if-eqz p1, :cond_2

    const-string v14, "/cache/recovery/surfaceflinger_cflumen"

    if-nez v1, :cond_1

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v16, v6

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v12

    aput-object v14, v6, v11

    invoke-static {v15, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object/from16 v16, v6

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v13, v15, v12

    aput-object v14, v15, v11

    invoke-static {v6, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v16, v6

    if-nez v1, :cond_3

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/drivers/f;->b()Z

    move-result v6

    if-nez v6, :cond_3

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v5, v6, v12

    aput-object v13, v6, v11

    const-string v14, "mv %s %s"

    invoke-static {v14, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    const-string v5, "/cache/recovery/surfaceflinger"

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    const-string v1, "chown root.shell %s"

    const-string v14, "/system/bin/surfaceflinger_shell"

    if-eqz v5, :cond_6

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v14, v6, v12

    aput-object v5, v6, v11

    const-string v11, "echo \'#!%s\' > %s"

    invoke-static {v15, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v11, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v11, v6, v12

    const/4 v11, 0x1

    aput-object v5, v6, v11

    const-string v11, "echo \'export LD_PRELOAD=%s\' >> %s"

    invoke-static {v15, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v13, v6, v12

    const/4 v11, 0x1

    aput-object v5, v6, v11

    const-string v10, "echo \'%s \"$@\"\' >> %s"

    invoke-static {v15, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v5, v6, v12

    const-string v12, "echo \'unset LD_PRELOAD\' >> %s"

    invoke-static {v15, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v6, v12

    const-string v11, "echo \'echo 1 > /dev/.cflumen_fail\' >> %s"

    invoke-static {v15, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x2

    new-array v11, v6, [Ljava/lang/Object;

    aput-object v13, v11, v12

    const/4 v6, 0x1

    aput-object v5, v11, v6

    invoke-static {v15, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v12

    invoke-static {v7, v10}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v12

    invoke-static {v1, v10}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v12

    const-string v11, "restorecon  %s"

    invoke-static {v11, v10}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v12

    invoke-static {v3, v10}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v3, "/system/bin/sh"

    if-eqz p1, :cond_7

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Leu/chainfire/lumen/drivers/f;->a:Ljava/lang/String;

    aput-object v6, v5, v12

    const-string v6, "/cache/recovery/libcflumen.so"

    const/4 v10, 0x1

    aput-object v6, v5, v10

    invoke-static {v1, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v12

    const-string v3, "/cache/recovery/surfaceflinger_shell"

    aput-object v3, v5, v10

    invoke-static {v1, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_7
    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/drivers/f;->g()Z

    move-result v5

    if-nez v5, :cond_8

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v6, v5, v12

    const-string v6, "rm %s_removed"

    invoke-static {v6, v5}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    iget-object v5, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v5, v9, v12

    aput-object v5, v9, v10

    const-string v5, "mv %s %s_removed"

    invoke-static {v5, v9}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v9, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v9, v5, v12

    invoke-static {v6, v5}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v5, v0, Leu/chainfire/lumen/drivers/f;->a:Ljava/lang/String;

    aput-object v5, v6, v12

    iget-object v5, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v5, v6, v10

    invoke-static {v8, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v6, v5, v12

    const-string v6, "chmod 0644 %s"

    invoke-static {v6, v5}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v6, v5, v12

    invoke-static {v4, v5}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, v0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v5, v4, v12

    const-string v5, "restorecon %s"

    invoke-static {v5, v4}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v3, v6, v12

    aput-object v14, v6, v10

    invoke-static {v8, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v14, v3, v12

    invoke-static {v7, v3}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v14, v3, v12

    invoke-static {v1, v3}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v14, v1, v12

    invoke-static {v5, v1}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_8
    :goto_5
    if-eqz p1, :cond_9

    const-string v1, "sync /cache"

    goto :goto_6

    :cond_9
    const-string v1, "sync /system"

    :goto_6
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "sync"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_a

    const-string v1, "mount -o ro,remount /system /system"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o ro,remount /system"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const-string v5, "/cache/recovery/command"

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const-string v5, "echo --update_package=%s > %s"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    if-nez p1, :cond_b

    const-string v1, "u:r:recovery:s0"

    invoke-static {v4, v1}, Lc/a/a/c$h;->f(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const-string v1, "su"

    :goto_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lc/a/a/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    if-nez p1, :cond_d

    invoke-virtual/range {p0 .. p0}, Leu/chainfire/lumen/drivers/f;->e()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v11, 0x1

    :goto_a
    return v11
.end method

.method public e()Z
    .locals 1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/f;->g()Z

    move-result v0

    if-nez v0, :cond_0

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

.method public j(Z)Z
    .locals 10

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/f;->i()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/cache/recovery/cflumen.zip"

    const-string v2, "rm %s"

    const-string v3, "cat %s > %s"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    const-string v7, "mount -o rw,remount /system"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "mount -o rw,remount /system /system"

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, "/system/addon.d/99-cflumen.sh"

    aput-object v8, v7, v6

    invoke-static {v2, v7}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v4, [Ljava/lang/Object;

    const-string v9, "/data/data/eu.chainfire.lumen/files/cflumen.zip"

    aput-object v9, v8, v6

    aput-object v1, v8, v5

    invoke-static {v7, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/f;->b()Z

    move-result v7

    const-string v8, "/cache/recovery/surfaceflinger"

    const-string v9, "/system/bin/surfaceflinger"

    if-eqz v7, :cond_2

    const-string v7, "/system/bin/surfaceflinger_cflumen"

    if-nez p1, :cond_1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v9, v3, v6

    invoke-static {v2, v3}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v7, v3, v6

    aput-object v9, v3, v5

    const-string v7, "mv %s %s"

    invoke-static {v7, v3}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v5, [Ljava/lang/Object;

    const-string v7, "/system/bin/surfaceflinger_shell"

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v6

    aput-object v8, v9, v5

    invoke-static {v2, v3, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v9, v7, v6

    aput-object v8, v7, v5

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez p1, :cond_4

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "rm %s_removed"

    invoke-static {v3, v2}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v7, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v7, v2, v6

    aput-object v7, v2, v5

    const-string v7, "mv %s %s_removed"

    invoke-static {v7, v2}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v7, p0, Leu/chainfire/lumen/drivers/f;->b:Ljava/lang/String;

    aput-object v7, v2, v6

    invoke-static {v3, v2}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "sync /cache"

    goto :goto_2

    :cond_5
    const-string v2, "sync /system"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "sync"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_6

    const-string v1, "mount -o ro,remount /system /system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o ro,remount /system"

    goto :goto_3

    :cond_6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v6

    const-string v1, "/cache/recovery/command"

    aput-object v1, v3, v5

    const-string v1, "echo --update_package=%s > %s"

    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lc/a/a/c$h;->e(Ljava/util/List;)Ljava/util/List;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/f;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :cond_8
    :goto_4
    return v5
.end method

.method public k(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Leu/chainfire/lumen/drivers/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Leu/chainfire/lumen/drivers/f$a;-><init>(Leu/chainfire/lumen/drivers/f;Landroid/content/Context;ZZ)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
