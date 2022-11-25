.class public abstract Landroid/support/v4/app/l;
.super Landroid/support/v4/app/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/j;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field final d:Landroid/support/v4/app/n;

.field private e:La/b/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/s;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/support/v4/app/t;

.field private h:Z

.field private i:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    new-instance p4, Landroid/support/v4/app/n;

    invoke-direct {p4}, Landroid/support/v4/app/n;-><init>()V

    iput-object p4, p0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/app/Activity;

    iput-object p2, p0, Landroid/support/v4/app/l;->b:Landroid/content/Context;

    iput-object p3, p0, Landroid/support/v4/app/l;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/i;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/l;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()V

    return-void
.end method

.method e()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    iget-object v1, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/app/t;->e()V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/app/l;->h:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "(root)"

    invoke-virtual {p0, v2, v0, v1}, Landroid/support/v4/app/l;->l(Ljava/lang/String;ZZ)Landroid/support/v4/app/t;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Landroid/support/v4/app/t;->d:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/l;->h:Z

    return-void
.end method

.method f(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/support/v4/app/l;->f:Z

    iget-object v0, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/l;->i:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/l;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/t;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/t;->f()V

    :goto_0
    return-void
.end method

.method g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/l;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/l;->g:Landroid/support/v4/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/t;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method h()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/app/Activity;

    return-object v0
.end method

.method i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method j()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    return-object v0
.end method

.method k()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->c:Landroid/os/Handler;

    return-object v0
.end method

.method l(Ljava/lang/String;ZZ)Landroid/support/v4/app/t;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    if-nez v0, :cond_0

    new-instance v0, La/b/a/b/h;

    invoke-direct {v0}, La/b/a/b/h;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    invoke-virtual {v0, p1}, La/b/a/b/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/t;-><init>(Ljava/lang/String;Landroid/support/v4/app/l;Z)V

    iget-object p2, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    invoke-virtual {p2, p1, v0}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean p1, v0, Landroid/support/v4/app/t;->d:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/t;->e()V

    :cond_2
    :goto_0
    return-object v0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/l;->f:Z

    return v0
.end method

.method n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, La/b/a/b/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/t;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/t;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/t;->a()V

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    invoke-virtual {v0, p1}, La/b/a/b/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method abstract o(Landroid/support/v4/app/h;)V
.end method

.method public abstract p(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract q()Landroid/view/LayoutInflater;
.end method

.method public abstract r()I
.end method

.method public abstract s()Z
.end method

.method public abstract t(Landroid/support/v4/app/h;)Z
.end method

.method public abstract u(Landroid/support/v4/app/h;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract v()V
.end method

.method w()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La/b/a/b/h;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/app/t;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    invoke-virtual {v3, v2}, La/b/a/b/h;->l(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/t;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/support/v4/app/t;->h()V

    invoke-virtual {v3}, Landroid/support/v4/app/t;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method x(La/b/a/b/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, La/b/a/b/h;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, La/b/a/b/h;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/t;

    invoke-virtual {v2, p0}, Landroid/support/v4/app/t;->j(Landroid/support/v4/app/l;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    return-void
.end method

.method y()La/b/a/b/h;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/b/h<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/s;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, La/b/a/b/h;->size()I

    move-result v0

    new-array v2, v0, [Landroid/support/v4/app/t;

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    invoke-virtual {v4, v3}, La/b/a/b/h;->l(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/t;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/l;->m()Z

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v5, v2, v1

    iget-boolean v6, v5, Landroid/support/v4/app/t;->e:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    iget-boolean v6, v5, Landroid/support/v4/app/t;->d:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v4/app/t;->e()V

    :cond_1
    invoke-virtual {v5}, Landroid/support/v4/app/t;->d()V

    :cond_2
    iget-boolean v6, v5, Landroid/support/v4/app/t;->e:Z

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/support/v4/app/t;->a()V

    iget-object v6, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    iget-object v5, v5, Landroid/support/v4/app/t;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, La/b/a/b/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/app/l;->e:La/b/a/b/h;

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method
