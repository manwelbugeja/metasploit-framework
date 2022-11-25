.class Lc/a/a/c$d$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/c$d;->B(Lc/a/a/c$c;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/c$c;

.field final synthetic b:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lc/a/a/c$d;


# direct methods
.method constructor <init>(Lc/a/a/c$d;Lc/a/a/c$c;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d$d;->d:Lc/a/a/c$d;

    iput-object p2, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    iput p3, p0, Lc/a/a/c$d$d;->b:I

    iput-object p4, p0, Lc/a/a/c$d$d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->b(Lc/a/a/c$c;)Lc/a/a/c$f;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v1}, Lc/a/a/c$c;->e(Lc/a/a/c$c;)I

    move-result v1

    iget v2, p0, Lc/a/a/c$d$d;->b:I

    iget-object v3, p0, Lc/a/a/c$d$d;->c:Ljava/util/List;

    invoke-interface {v0, v1, v2, v3}, Lc/a/a/c$f;->a(IILjava/util/List;)V

    :cond_0
    iget-object v0, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->d(Lc/a/a/c$c;)Lc/a/a/c$e;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v0}, Lc/a/a/c$c;->d(Lc/a/a/c$c;)Lc/a/a/c$e;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c$d$d;->a:Lc/a/a/c$c;

    invoke-static {v1}, Lc/a/a/c$c;->e(Lc/a/a/c$c;)I

    move-result v1

    iget v2, p0, Lc/a/a/c$d$d;->b:I

    invoke-interface {v0, v1, v2}, Lc/a/a/c$e;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lc/a/a/c$d$d;->d:Lc/a/a/c$d;

    invoke-static {v0}, Lc/a/a/c$d;->d(Lc/a/a/c$d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc/a/a/c$d$d;->d:Lc/a/a/c$d;

    invoke-static {v1}, Lc/a/a/c$d;->d(Lc/a/a/c$d;)V

    throw v0
.end method
