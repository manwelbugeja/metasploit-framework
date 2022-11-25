.class Lc/a/a/c$d$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/c$d;->A()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/a/a/c$d;


# direct methods
.method constructor <init>(Lc/a/a/c$d;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {v1}, Lc/a/a/c$d;->e(Lc/a/a/c$d;)Lc/a/a/c$c;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {v1}, Lc/a/a/c$d;->e(Lc/a/a/c$d;)Lc/a/a/c$c;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    iget-object v2, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {v2}, Lc/a/a/c$d;->l(Lc/a/a/c$d;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {v2, p1}, Lc/a/a/c$d;->f(Lc/a/a/c$d;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {v2}, Lc/a/a/c$d;->m(Lc/a/a/c$d;)Lc/a/a/f$a;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lc/a/a/c$d;->h(Lc/a/a/c$d;Ljava/lang/String;Lc/a/a/f$a;)V

    :cond_4
    if-ltz v1, :cond_5

    iget-object p1, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {p1}, Lc/a/a/c$d;->e(Lc/a/a/c$d;)Lc/a/a/c$c;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/c$c;->c(Lc/a/a/c$c;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lc/a/a/c$d;->n(Lc/a/a/c$d;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lc/a/a/c$d$f;->a:Lc/a/a/c$d;

    invoke-static {p1}, Lc/a/a/c$d;->k(Lc/a/a/c$d;)V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
