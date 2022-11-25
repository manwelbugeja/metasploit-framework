.class final Landroid/support/v4/app/t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La/b/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/b/a/a/b$a<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/s$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field d:La/b/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/t$a;

.field final synthetic o:Landroid/support/v4/app/t;


# virtual methods
.method a(La/b/a/a/b;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/a/b<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iget-object v3, v1, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    const-string v4, "onLoadFinished"

    iput-object v4, v1, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/t;->g:Z

    if-nez v1, :cond_2

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/s$a;->c(La/b/a/a/b;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object p1, p1, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iput-object v3, p1, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/t$a;->f:Z

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, La/b/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object p2, p2, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    if-eqz p2, :cond_3

    iget-object p2, p2, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iput-object v3, p2, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    :cond_3
    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method b()V
    .locals 5

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    const-string v1, "LoaderManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->l:Z

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/t$a;->f:Z

    iget-object v3, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Landroid/support/v4/app/t$a;->e:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Resetting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iget-object v1, v0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    const-string v3, "onLoaderReset"

    iput-object v3, v0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    iget-object v3, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-interface {v0, v3}, Landroid/support/v4/app/s$a;->b(La/b/a/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iput-object v1, v0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/t$a;->o:Landroid/support/v4/app/t;

    iget-object v2, v2, Landroid/support/v4/app/t;->f:Landroid/support/v4/app/l;

    if-eqz v2, :cond_3

    iget-object v2, v2, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iput-object v1, v2, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    :cond_3
    throw v0

    :cond_4
    :goto_1
    iput-object v4, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    iput-object v4, p0, Landroid/support/v4/app/t$a;->g:Ljava/lang/Object;

    iput-boolean v2, p0, Landroid/support/v4/app/t$a;->e:Z

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Landroid/support/v4/app/t$a;->m:Z

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Landroid/support/v4/app/t$a;->m:Z

    invoke-virtual {v0, p0}, La/b/a/a/b;->f(La/b/a/a/b$a;)V

    throw v4

    :cond_5
    invoke-virtual {v0}, La/b/a/a/b;->d()V

    throw v4

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/t$a;->n:Landroid/support/v4/app/t$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/t$a;->b()V

    :cond_7
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/t$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    const-string v1, "  "

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->n:Landroid/support/v4/app/t$a;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->n:Landroid/support/v4/app/t$a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t$a;->n:Landroid/support/v4/app/t$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/t$a;->c(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, La/b/a/a/b;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method d()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Finished Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/t$a;->j:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/t$a;->h()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->e:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    iget-object v1, p0, Landroid/support/v4/app/t$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t$a;->a(La/b/a/a/b;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->k:Z

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    iget-object v1, p0, Landroid/support/v4/app/t$a;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/t$a;->a(La/b/a/a/b;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method f()V
    .locals 2

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Retaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    return-void
.end method

.method g()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->j:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/t$a;->h:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/app/t$a;->h:Z

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/t$a;->c:Landroid/support/v4/app/s$a;

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/v4/app/t$a;->a:I

    iget-object v2, p0, Landroid/support/v4/app/t$a;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/s$a;->a(ILandroid/os/Bundle;)La/b/a/a/b;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/app/t$a;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    iget v2, p0, Landroid/support/v4/app/t$a;->a:I

    invoke-virtual {v0, v2, p0}, La/b/a/a/b;->c(ILa/b/a/a/b$a;)V

    throw v1

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-virtual {v0}, La/b/a/a/b;->e()V

    throw v1

    :cond_7
    return-void
.end method

.method h()V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/t;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/t$a;->i:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/app/t$a;->m:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/app/t$a;->m:Z

    invoke-virtual {v1, p0}, La/b/a/a/b;->f(La/b/a/a/b$a;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/t$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/t$a;->d:La/b/a/a/b;

    invoke-static {v1, v0}, La/b/a/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
