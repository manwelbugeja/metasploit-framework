.class public abstract Lc/a/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Ljava/lang/Boolean; = null

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/a/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    sget-object v0, Lc/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/a/a/b;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    sget-object v1, Lc/a/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lc/a/a/b;->b:Ljava/lang/Boolean;

    const-string v1, "sh"

    const-string v2, "supolicy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lc/a/a/c;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "supolicy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v1, Lc/a/a/b;->b:Ljava/lang/Boolean;

    :cond_2
    sget-object v1, Lc/a/a/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected b(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lc/a/a/c$h;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lc/a/a/b;->a()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    sget-boolean p1, Lc/a/a/b;->c:Z

    if-eqz p1, :cond_2

    monitor-exit v0

    return-object v2

    :cond_2
    invoke-virtual {p0}, Lc/a/a/b;->c()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v1, p1

    if-lez v1, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    const/16 v7, 0xfe0

    if-ge v6, v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supolicy --live"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, ""

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supolicy --live"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v0

    return-object v1

    :cond_7
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract c()[Ljava/lang/String;
.end method

.method public d(Lc/a/a/c$d;Z)V
    .locals 3

    sget-object v0, Lc/a/a/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p2}, Lc/a/a/b;->b(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Lc/a/a/c$d;->q(Ljava/util/List;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lc/a/a/c$d;->J()Z

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lc/a/a/b;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
