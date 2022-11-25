.class Leu/chainfire/librootjava/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/librootjava/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Integer;

.field private static d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu/chainfire/librootjava/f;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a()Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Leu/chainfire/librootjava/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/librootjava/f;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "android.app.ActivityManagerNative"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getDefault"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Leu/chainfire/librootjava/f;->b:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :catch_0
    :try_start_3
    const-string v3, "android.app.ActivityManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Leu/chainfire/librootjava/f;->b:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_1
    move-exception v1

    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "librootjava: unable to retrieve ActivityManager"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private static b(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    sget-object v0, Leu/chainfire/librootjava/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/librootjava/f;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcastIntent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    sput-object v3, Leu/chainfire/librootjava/f;->d:Ljava/lang/reflect/Method;

    monitor-exit v0

    return-object v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "broadcastIntent"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2

    sput-object v3, Leu/chainfire/librootjava/f;->d:Ljava/lang/reflect/Method;

    monitor-exit v0

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "librootjava: unable to retrieve broadcastIntent method"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static c()I
    .locals 3

    sget-object v0, Leu/chainfire/librootjava/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Leu/chainfire/librootjava/f;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_0
    :try_start_1
    const-class v1, Landroid/content/Intent;

    const-string v2, "FLAG_RECEIVER_FROM_SHELL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Leu/chainfire/librootjava/f;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    :catch_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Leu/chainfire/librootjava/f;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static d(Landroid/content/Intent;)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    invoke-static {}, Leu/chainfire/librootjava/f;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Leu/chainfire/librootjava/f;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/librootjava/f;->b(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    const/16 v7, 0x9

    const/4 v8, -0x1

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-ne v4, v5, :cond_0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v18, v4, v17

    aput-object v0, v4, v16

    aput-object v18, v4, v15

    aput-object v18, v4, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v13

    aput-object v18, v4, v12

    aput-object v18, v4, v11

    aput-object v18, v4, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object v18, v4, v7

    const/16 v0, 0xa

    aput-object v1, v4, v0

    const/16 v0, 0xb

    aput-object v1, v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v6, :cond_1

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v18, v4, v17

    aput-object v0, v4, v16

    aput-object v18, v4, v15

    aput-object v18, v4, v14

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v13

    aput-object v18, v4, v12

    aput-object v18, v4, v11

    aput-object v18, v4, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object v1, v4, v7

    const/16 v0, 0xa

    aput-object v1, v4, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    aput-object v0, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "librootjava: unable to send broadcast"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Leu/chainfire/librootjava/d;->c(Ljava/lang/Exception;)V

    return-void
.end method
