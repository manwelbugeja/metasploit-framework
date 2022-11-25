.class public Lb/a/a/a/c/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/c/h<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/c/h;

    invoke-direct {v0}, Lb/a/a/a/c/h;-><init>()V

    iput-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/a/c/b<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    return-object v0
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    invoke-virtual {v0, p1}, Lb/a/a/a/c/h;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    invoke-virtual {v0, p1}, Lb/a/a/a/c/h;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/Exception;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    invoke-virtual {v0, p1}, Lb/a/a/a/c/h;->f(Ljava/lang/Exception;)Z

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/c/c;->a:Lb/a/a/a/c/h;

    invoke-virtual {v0, p1}, Lb/a/a/a/c/h;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
