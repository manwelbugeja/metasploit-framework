.class public Lc/a/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/c$d;,
        Lc/a/a/c$b;,
        Lc/a/a/c$c;,
        Lc/a/a/c$e;,
        Lc/a/a/c$f;,
        Lc/a/a/c$h;,
        Lc/a/a/c$g;
    }
.end annotation


# static fields
.field protected static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "echo -BOC-"

    const-string v1, "id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a/a/c;->a:[Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eqz p1, :cond_2

    const-string p0, "uid=0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    const-string v3, "-BOC-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc/a/a/a;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lc/a/a/a;->h()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Application attempted to run a shell command from the main thread"

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    new-instance v1, Lc/a/a/e;

    invoke-direct {v1, v0}, Lc/a/a/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v7, "[%s%%] START"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/a/a/a;->e(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    array-length v9, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v10, 0x0

    :goto_1
    const-string v11, "="

    if-ge v10, v9, :cond_3

    :try_start_1
    aget-object v12, v2, v10

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {v12, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v9, Lc/a/a/f;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v9, v10, v11, v5}, Lc/a/a/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    new-instance v10, Lc/a/a/f;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    if-eqz p3, :cond_5

    move-object v13, v5

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    :goto_3
    invoke-direct {v10, v11, v12, v13}, Lc/a/a/f;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    array-length v11, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v12, 0x0

    :goto_4
    const-string v13, "UTF-8"

    if-ge v12, v11, :cond_6

    :try_start_3
    aget-object v14, v0, v12

    const-string v15, "[%s+] %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v6

    aput-object v14, v7, v4

    invoke-static {v15, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc/a/a/a;->e(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\n"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const-string v0, "exit\n"

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v7, "EPIPE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Stream closed"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    throw v0

    :cond_8
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_1
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Thread;->join()V

    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    invoke-static/range {p0 .. p0}, Lc/a/a/c$h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v2, 0xff

    if-ne v0, v2, :cond_9

    const/4 v5, 0x0

    :cond_9
    move-object v7, v5

    goto :goto_6

    :catch_2
    const/4 v7, 0x0

    :goto_6
    new-array v0, v4, [Ljava/lang/Object;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const-string v1, "[%s%%] END"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a;->e(Ljava/lang/String;)V

    return-object v7
.end method
