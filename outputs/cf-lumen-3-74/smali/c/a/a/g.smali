.class public Lc/a/a/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/a/a/g;->a:Ljava/lang/Object;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "toolbox "

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lc/a/a/g;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lc/a/a/g;->b()V

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p0

    :goto_2
    sget-object v2, Lc/a/a/g;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toybox "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0
.end method

.method public static b()V
    .locals 5

    sget-object v0, Lc/a/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const-string v0, ""

    sput-object v0, Lc/a/a/g;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-static {}, Lc/a/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lc/a/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Application attempted to init the Toolbox class from the main thread"

    invoke-static {v0}, Lc/a/a/a;->d(Ljava/lang/String;)V

    new-instance v0, Lc/a/a/e;

    const-string v1, "Application attempted to init the Toolbox class from the main thread"

    invoke-direct {v0, v1}, Lc/a/a/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    sget-object v0, Lc/a/a/g;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    sput-object v1, Lc/a/a/g;->b:Ljava/lang/String;

    const-string v1, "toybox"

    invoke-static {v1}, Lc/a/a/c$g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, " "

    sput-object v2, Lc/a/a/g;->b:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc/a/a/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc/a/a/g;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    monitor-exit v0

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
