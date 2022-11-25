.class public Leu/chainfire/librootjavadaemon/RootDaemon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/librootjavadaemon/RootDaemon$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "daemon"

.field public static final b:[Ljava/lang/String;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/librootjava/RootIPC;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Leu/chainfire/librootjavadaemon/RootDaemon$b;

.field private static final e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".daemonize_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->d:Leu/chainfire/librootjavadaemon/RootDaemon$b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->c:Ljava/util/List;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    sget-object v0, Leu/chainfire/librootjava/h;->a:[Ljava/lang/String;

    array-length v1, v0

    sget-object v2, Leu/chainfire/librootjavadaemon/RootDaemon;->b:[Ljava/lang/String;

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, v1}, Leu/chainfire/librootjava/h;->a(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;IZLeu/chainfire/librootjavadaemon/RootDaemon$b;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_daemonize"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string v1, "CLASSPATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const-string p1, "%s:%d:%d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v4

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v6, "addService"

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v4

    const-class v0, Landroid/os/IBinder;

    aput-object v0, v7, v5

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_1

    invoke-static {v1}, Leu/chainfire/librootjavadaemon/IRootDaemonIPC$Stub;->asInterface(Landroid/os/IBinder;)Leu/chainfire/librootjavadaemon/IRootDaemonIPC;

    move-result-object v1

    invoke-interface {v1}, Leu/chainfire/librootjavadaemon/IRootDaemonIPC;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Leu/chainfire/librootjavadaemon/RootDaemon;->a:Ljava/lang/String;

    const-string v8, "Terminating outdated daemon"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-interface {v1}, Leu/chainfire/librootjavadaemon/IRootDaemonIPC;->terminate()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :cond_0
    :try_start_2
    sget-object v7, Leu/chainfire/librootjavadaemon/RootDaemon;->a:Ljava/lang/String;

    const-string v8, "Service already running, requesting re-broadcast and aborting"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1}, Leu/chainfire/librootjavadaemon/IRootDaemonIPC;->broadcast()V

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->e()V

    :catch_0
    :cond_1
    :goto_0
    sget-object v1, Leu/chainfire/librootjavadaemon/RootDaemon;->a:Ljava/lang/String;

    const-string v7, "Installing service"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sput-object p3, Leu/chainfire/librootjavadaemon/RootDaemon;->d:Leu/chainfire/librootjavadaemon/RootDaemon$b;

    if-nez p2, :cond_2

    new-array p2, v5, [Ljava/lang/Object;

    const-string p3, "activity"

    aput-object p3, p2, v4

    invoke-virtual {v2, v6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p2, :cond_2

    :try_start_3
    new-instance p3, Leu/chainfire/librootjavadaemon/RootDaemon$a;

    invoke-direct {p3}, Leu/chainfire/librootjavadaemon/RootDaemon$a;-><init>()V

    invoke-interface {p2, p3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    :try_start_4
    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->e()V

    :cond_2
    :goto_1
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p0, p2, v4

    new-instance p0, Leu/chainfire/librootjavadaemon/RootDaemon$2;

    invoke-direct {p0, p1}, Leu/chainfire/librootjavadaemon/RootDaemon$2;-><init>(Ljava/lang/String;)V

    aput-object p0, p2, v5

    invoke-virtual {v0, v6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception p0

    invoke-static {p0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "librootjavadaemon: could not get/add service"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e()V
    .locals 5

    const-string v0, ".daemonize_"

    sget-object v1, Leu/chainfire/librootjavadaemon/RootDaemon;->a:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Exiting"

    invoke-static {v1, v4, v3}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    sget-object v1, Leu/chainfire/librootjavadaemon/RootDaemon;->d:Leu/chainfire/librootjavadaemon/RootDaemon$b;

    if-eqz v1, :cond_0

    sget-object v1, Leu/chainfire/librootjavadaemon/RootDaemon;->d:Leu/chainfire/librootjavadaemon/RootDaemon$b;

    invoke-interface {v1}, Leu/chainfire/librootjavadaemon/RootDaemon$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/self/exe"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/system/bin/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".app_process32_"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ".app_process64_"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    invoke-static/range {p0 .. p5}, Leu/chainfire/librootjava/h;->b(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Leu/chainfire/librootjavadaemon/RootDaemon;->g(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "#app_process="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "CLASSPATH="

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "daemonize"

    invoke-static {p0, v5}, Leu/chainfire/librootjava/h;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "/system/bin"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/.daemonize_"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Leu/chainfire/librootjava/a;->b:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "/data/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    sget-object v11, Leu/chainfire/librootjava/a;->a:Ljava/lang/String;

    aput-object v11, v10, v1

    aput-object v5, v10, v6

    const/4 v5, 0x2

    aput-object v3, v10, v5

    const-string v12, "%s cp %s %s >/dev/null 2>/dev/null"

    invoke-static {v8, v12, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v11, v9, v1

    if-eqz v7, :cond_2

    const-string v10, "0766"

    goto :goto_1

    :cond_2
    const-string v10, "0700"

    :goto_1
    aput-object v10, v9, v6

    aput-object v3, v9, v5

    const-string v5, "%s chmod %s %s >/dev/null 2>/dev/null"

    invoke-static {v8, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v3, v5, v1

    const-string v7, "restorecon %s >/dev/null 2>/dev/null"

    invoke-static {v8, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v5, v3

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v3, :cond_5

    const-string v5, "box rm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public static h(Ljava/lang/String;Landroid/os/IBinder;I)Leu/chainfire/librootjava/RootIPC;
    .locals 8

    sget-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v7, Leu/chainfire/librootjava/RootIPC;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Leu/chainfire/librootjava/RootIPC;-><init>(Ljava/lang/String;Landroid/os/IBinder;IIZ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Leu/chainfire/librootjava/RootIPC$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v7

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static i()V
    .locals 2

    sget-object v0, Leu/chainfire/librootjavadaemon/RootDaemon;->e:Ljava/lang/Object;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    sget-object v1, Leu/chainfire/librootjavadaemon/RootDaemon;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
