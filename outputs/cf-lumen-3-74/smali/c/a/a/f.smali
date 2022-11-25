.class public Lc/a/a/f;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lc/a/a/f$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Lc/a/a/f$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    iput-object v0, p0, Lc/a/a/f;->c:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/f;->d:Lc/a/a/f$a;

    iput-object p1, p0, Lc/a/a/f;->a:Ljava/lang/String;

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    iput-object p3, p0, Lc/a/a/f;->d:Lc/a/a/f$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    iput-object v0, p0, Lc/a/a/f;->c:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/f;->d:Lc/a/a/f$a;

    iput-object p1, p0, Lc/a/a/f;->a:Ljava/lang/String;

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p1, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    iput-object p3, p0, Lc/a/a/f;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc/a/a/f;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/a;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lc/a/a/f;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lc/a/a/f;->d:Lc/a/a/f$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lc/a/a/f$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    :try_start_1
    iget-object v0, p0, Lc/a/a/f;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
