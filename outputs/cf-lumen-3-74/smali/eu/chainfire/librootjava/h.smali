.class public Leu/chainfire/librootjava/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, ".app_process32_"

    const-string v1, ".app_process64_"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/librootjava/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Leu/chainfire/librootjava/h$a;

    invoke-direct {v2, p1}, Leu/chainfire/librootjava/h$a;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p2, v0, v1, p3}, Leu/chainfire/librootjava/a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#app_process="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v0}, Leu/chainfire/librootjava/e;->a(Ljava/util/List;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, p1, p2, p4, p5}, Leu/chainfire/librootjava/h;->c(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p3
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Leu/chainfire/librootjava/a;->b()Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Leu/chainfire/librootjava/a;->h(Ljava/lang/String;)Z

    move-result v3

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Leu/chainfire/librootjava/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "ANDROID_ROOT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    const-string v3, "ANDROID_ROOT="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, 0x0

    const/16 v3, 0x2f

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    :cond_1
    invoke-static {p3, v0}, Leu/chainfire/librootjava/c;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "LD_LIBRARY_PATH="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string p3, ""

    if-eqz p5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " --nice-name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    :cond_3
    move-object p5, p3

    :goto_0
    sget-boolean v0, Leu/chainfire/librootjava/b;->a:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -Xcompiler-option --debuggable"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -XjdwpProvider:internal -XjdwpOptions:transport=dt_android_adb,suspend=n,server=y"

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -agentlib:jdwp=transport=dt_android_adb,suspend=n,server=y"

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_5
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p0, v0, v4

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p5, v0, p0

    const/4 p0, 0x5

    aput-object p1, v0, p0

    const-string p0, "NO_ADDR_COMPAT_LAYOUT_FIXUP=1 %sCLASSPATH=%s %s%s /system/bin%s %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p4, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p4

    :goto_2
    if-ge v5, p0, :cond_6

    aget-object p2, p4, v5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7
    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "librootjava: incompatible with extractNativeLibs=\"false\" in your manifest"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v6, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v3, v6, v1

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    return-object v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    instance-of v1, v1, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {p0, p1}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_6
    new-array p0, v5, [Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    const-string v6, "/data/data/%s/lib/lib%s.so"

    invoke-static {v1, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object p1, v3, v2

    const-string p1, "/data/data/%s/lib/%s.so"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    :goto_2
    if-ge v4, v5, :cond_8

    aget-object p1, p0, v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
