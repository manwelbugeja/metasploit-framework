.class public Lc/a/a/c$h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a/a/c$h;->b:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 4

    const-class v0, Lc/a/a/c$h;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc/a/a/c$h;->a:Ljava/lang/Boolean;

    sget-object v2, Lc/a/a/c$h;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized b()Z
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v1, Lc/a/a/c$h;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/a/a/c$h;->a:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_4

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/fs/selinux/enforce"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/fs/selinux/enforce"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    nop

    :cond_2
    :goto_1
    if-nez v2, :cond_4

    :try_start_4
    const-string v2, "android.os.SELinux"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v5, "isSELinuxEnforced"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catch_1
    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    :try_start_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_5
    sput-object v2, Lc/a/a/c$h;->a:Ljava/lang/Boolean;

    :cond_6
    sget-object v0, Lc/a/a/c$h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v1

    return v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "su"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "su"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lc/a/a/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string v0, "su"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lc/a/a/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static f(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "su"

    if-eqz p1, :cond_0

    invoke-static {}, Lc/a/a/c$h;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Lc/a/a/c$h;->g(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lc/a/a/c$h;->g(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string v6, "SUPERSU"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xbe

    if-lt v4, v5, :cond_0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object p1, v5, v1

    const-string p1, "%s --context %s"

    invoke-static {v4, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-lez p0, :cond_1

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s %d"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public static declared-synchronized g(Z)Ljava/lang/String;
    .locals 7

    const-class v0, Lc/a/a/c$h;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    :try_start_0
    sget-object v3, Lc/a/a/c$h;->b:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    if-eqz p0, :cond_1

    const-string v3, "su -V"

    goto :goto_1

    :cond_1
    const-string v3, "su -v"

    :goto_1
    const-string v4, "exit"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v1}, Lc/a/a/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v4, :cond_2

    :goto_2
    move-object v5, v3

    :cond_4
    :try_start_2
    sget-object p0, Lc/a/a/c$h;->b:[Ljava/lang/String;

    aput-object v5, p0, v2

    :cond_5
    sget-object p0, Lc/a/a/c$h;->b:[Ljava/lang/String;

    aget-object p0, p0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
