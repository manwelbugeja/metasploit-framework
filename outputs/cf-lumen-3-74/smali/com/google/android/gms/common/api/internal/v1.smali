.class public final Lcom/google/android/gms/common/api/internal/v1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:La/b/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/a<",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final b:La/b/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/a<",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lb/a/a/a/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/c/c<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/common/api/e<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/b/a/b/a;

    invoke-direct {v0}, La/b/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->b:La/b/a/b/a;

    new-instance v0, Lb/a/a/a/c/c;

    invoke-direct {v0}, Lb/a/a/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->c:Lb/a/a/a/c/c;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/v1;->e:Z

    new-instance v0, La/b/a/b/a;

    invoke-direct {v0}, La/b/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->i()Lcom/google/android/gms/common/api/internal/t1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-virtual {p1}, La/b/a/b/a;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/v1;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lb/a/a/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/a/c/b<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->c:Lb/a/a/a/c/c;

    invoke-virtual {v0}, Lb/a/a/a/c/c;->a()Lb/a/a/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-virtual {v0, p1, p2}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->b:La/b/a/b/a;

    invoke-virtual {v0, p1, p3}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/v1;->d:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/common/api/internal/v1;->d:I

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->f()Z

    move-result p1

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/v1;->e:Z

    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/internal/v1;->d:I

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/v1;->e:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/gms/common/api/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/c;-><init>(La/b/a/b/a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/v1;->c:Lb/a/a/a/c/c;

    invoke-virtual {p2, p1}, Lb/a/a/a/c/c;->b(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/v1;->c:Lb/a/a/a/c/c;

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/v1;->b:La/b/a/b/a;

    invoke-virtual {p1, p2}, Lb/a/a/a/c/c;->c(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v1;->a:La/b/a/b/a;

    invoke-virtual {v0}, La/b/a/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
