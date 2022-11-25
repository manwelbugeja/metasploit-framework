.class public Leu/chainfire/lumen/drivers/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static f:Leu/chainfire/lumen/drivers/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lc/a/a/c$d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/drivers/g;->e:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {}, Leu/chainfire/lumen/drivers/m;->G()Z

    move-result p1

    iput-boolean p1, p0, Leu/chainfire/lumen/drivers/g;->e:Z

    sput-object p0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/drivers/g;->c(ZLc/a/a/c$d;)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/drivers/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Leu/chainfire/lumen/drivers/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    return-object p1
.end method

.method private c(ZLc/a/a/c$d;)V
    .locals 6

    sget-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/lumen/drivers/g;->e:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :try_start_1
    new-instance p1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v4}, Leu/chainfire/lumen/drivers/m;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000

    invoke-direct {p1, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-array v3, v4, [B

    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v3, v2, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v3, 0x10

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    iput-object v3, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2

    :catch_0
    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object p1, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UNEXPECTED FATAL: Could not determine latestVersion"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "UNEXPECTED FATAL: Could not read libcflumen.so"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    iget-object p1, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " | grep surfaceflinger"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Leu/chainfire/lumen/drivers/g$a;

    invoke-direct {v3, p0}, Leu/chainfire/lumen/drivers/g$a;-><init>(Leu/chainfire/lumen/drivers/g;)V

    invoke-virtual {p2, p1, v2, v3}, Lc/a/a/c$d;->p(Ljava/lang/String;ILc/a/a/c$f;)V

    invoke-virtual {p2}, Lc/a/a/c$d;->J()Z

    :cond_6
    iget-object p1, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    if-nez p1, :cond_7

    iget-object p1, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    if-eqz p1, :cond_7

    const-string p1, ""

    iput-object p1, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat /proc/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/maps | grep lumen"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Leu/chainfire/lumen/drivers/g$b;

    invoke-direct {v3, p0}, Leu/chainfire/lumen/drivers/g$b;-><init>(Leu/chainfire/lumen/drivers/g;)V

    invoke-virtual {p2, p1, v2, v3}, Lc/a/a/c$d;->p(Ljava/lang/String;ILc/a/a/c$f;)V

    invoke-virtual {p2}, Lc/a/a/c$d;->J()Z

    :cond_7
    const-string p1, "latest[%s] injected[%s] pid[%s]"

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;

    if-nez v3, :cond_8

    const-string v3, "(null)"

    :cond_8
    aput-object v3, p2, v2

    iget-object v2, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, "(null)"

    :cond_9
    aput-object v2, p2, v1

    const/4 v1, 0x2

    iget-object v2, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, "(null)"

    :cond_a
    aput-object v2, p2, v1

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/drivers/g;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public static d(Landroid/content/Context;Lc/a/a/c$d;)Leu/chainfire/lumen/drivers/g;
    .locals 1

    sget-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    if-nez v0, :cond_0

    new-instance v0, Leu/chainfire/lumen/drivers/g;

    invoke-direct {v0, p0, p1}, Leu/chainfire/lumen/drivers/g;-><init>(Landroid/content/Context;Lc/a/a/c$d;)V

    sput-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    :cond_0
    sget-object p0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "libcflumen_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs h(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "INSTV4"

    invoke-static {v0, p1, p2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public f(Lc/a/a/c$d;)Z
    .locals 13

    sget-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, p1}, Leu/chainfire/lumen/drivers/g;->c(ZLc/a/a/c$d;)V

    iget-object v2, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    monitor-exit v0

    return v3

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    if-eqz v2, :cond_3

    const-string v2, "cp %s %s"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v7}, Leu/chainfire/lumen/drivers/m;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v2, "chmod 0777 %s"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v2, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v2, v6, :cond_4

    const-string v7, "chcon u:object_r:app_data_file:s0 %s"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v7, "chmod 0777 %s"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v9}, Leu/chainfire/lumen/drivers/m;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%s %s %s"

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v11, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v11}, Leu/chainfire/lumen/drivers/m;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v1

    iget-object v11, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lc/a/a/c$d;->q(Ljava/util/List;)V

    invoke-virtual {p1}, Lc/a/a/c$d;->J()Z

    invoke-direct {p0, v3, p1}, Leu/chainfire/lumen/drivers/g;->c(ZLc/a/a/c$d;)V

    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result v8

    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/dev/."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/io/File;

    invoke-direct {p0}, Leu/chainfire/lumen/drivers/g;->e()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const-string v10, "cp %s %s"

    new-array v11, v5, [Ljava/lang/Object;

    iget-object v12, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v12}, Leu/chainfire/lumen/drivers/m;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1

    aput-object v8, v11, v3

    invoke-static {v10, v11}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v2, v6, :cond_5

    const-string v2, "chcon u:object_r:system_file:s0 %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v8, v6, v1

    invoke-static {v2, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, "chmod 0777 %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v8, v6, v1

    invoke-static {v2, v6}, Lc/a/a/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "%s %s %s"

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v9, p0, Leu/chainfire/lumen/drivers/g;->a:Landroid/content/Context;

    invoke-static {v9}, Leu/chainfire/lumen/drivers/m;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    iget-object v1, p0, Leu/chainfire/lumen/drivers/g;->b:Ljava/lang/String;

    aput-object v1, v6, v3

    aput-object v8, v6, v5

    invoke-static {v7, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v4}, Lc/a/a/c$d;->q(Ljava/util/List;)V

    invoke-virtual {p1}, Lc/a/a/c$d;->J()Z

    invoke-direct {p0, v3, p1}, Leu/chainfire/lumen/drivers/g;->c(ZLc/a/a/c$d;)V

    :cond_6
    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g()Z
    .locals 3

    sget-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()Z
    .locals 3

    sget-object v0, Leu/chainfire/lumen/drivers/g;->f:Leu/chainfire/lumen/drivers/g;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/lumen/drivers/g;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leu/chainfire/lumen/drivers/g;->d:Ljava/lang/String;

    iget-object v2, p0, Leu/chainfire/lumen/drivers/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
