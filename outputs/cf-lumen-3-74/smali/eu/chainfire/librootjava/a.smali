.class public Leu/chainfire/librootjava/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const-string v0, "toolbox"

    goto :goto_0

    :cond_0
    const-string v0, "toybox"

    :goto_0
    sput-object v0, Leu/chainfire/librootjava/a;->a:Ljava/lang/String;

    invoke-static {}, Leu/chainfire/librootjava/a;->g()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/librootjava/a;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x4

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/io/FileInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :try_start_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :catch_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Leu/chainfire/librootjava/a;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Leu/chainfire/librootjava/a;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Leu/chainfire/librootjava/a;->c(Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static c(Z)Ljava/lang/String;
    .locals 4

    const-string v0, "/system/bin/app_process32_original"

    const-string v1, "/system/bin/app_process32_init"

    const-string v2, "/system/bin/app_process32"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-static {}, Leu/chainfire/librootjava/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 4

    const-string v0, "/system/bin/app_process64_original"

    const-string v1, "/system/bin/app_process64_init"

    const-string v2, "/system/bin/app_process64"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    const-string v0, "/system/bin/app_process_original"

    const-string v1, "/system/bin/app_process_init"

    const-string v2, "/system/bin/app_process"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Leu/chainfire/librootjava/a;->b()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p4, :cond_3

    invoke-static {}, Leu/chainfire/librootjava/a;->k()Z

    move-result p4

    if-nez p4, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x40000

    and-int/2addr p4, v0

    if-nez p4, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_2
    const-string p4, "/dev"

    :cond_3
    :goto_1
    const-string p0, "/data/"

    invoke-virtual {p4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p1}, Leu/chainfire/librootjava/a;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/.app_process64_"

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/.app_process32_"

    :goto_2
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Leu/chainfire/librootjava/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Leu/chainfire/librootjava/a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object p1, v2, v5

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string v6, "%s cp %s %s >/dev/null 2>/dev/null"

    invoke-static {v0, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    if-eqz p0, :cond_5

    const-string v2, "0766"

    goto :goto_3

    :cond_5
    const-string v2, "0700"

    :goto_3
    aput-object v2, v1, v5

    aput-object p4, v1, p1

    const-string v2, "%s chmod %s %s >/dev/null 2>/dev/null"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_6

    new-array p0, v5, [Ljava/lang/Object;

    aput-object p4, p0, v4

    const-string v1, "restorecon %s >/dev/null 2>/dev/null"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-array p0, p1, [Ljava/lang/Object;

    aput-object v3, p0, v4

    aput-object p4, p0, v5

    const-string p1, "%s rm %s >/dev/null 2>/dev/null"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p4
.end method

.method private static g()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Leu/chainfire/librootjava/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    const-string v3, "32"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    const-string v4, "64"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    return v2

    :catch_0
    move-exception v0

    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_5
    invoke-static {p0}, Leu/chainfire/librootjava/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    invoke-static {}, Leu/chainfire/librootjava/a;->j()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method private static i()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static j()Z
    .locals 3

    invoke-static {}, Leu/chainfire/librootjava/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/proc/self/exe"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_1
    return v1
.end method

.method public static k()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
