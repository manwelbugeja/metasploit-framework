.class public final Lcom/google/android/gms/common/api/internal/s1;
.super Lcom/google/android/gms/common/api/internal/q1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/q1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/internal/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/g$a;Lb/a/a/a/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;",
            "Lb/a/a/a/c/c<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/q1;-><init>(ILb/a/a/a/c/c;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/s1;->b:Lcom/google/android/gms/common/api/internal/g$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(Lcom/google/android/gms/common/api/internal/n;Z)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/d$a;)[Lcom/google/android/gms/common/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->v()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s1;->b:Lcom/google/android/gms/common/api/internal/g$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/d1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->b()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/d$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->v()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/s1;->b:Lcom/google/android/gms/common/api/internal/g$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/d1;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->d()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Lcom/google/android/gms/common/api/internal/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->v()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/s1;->b:Lcom/google/android/gms/common/api/internal/g$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/d1;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/d1;->b:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d$a;->m()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/q1;->a:Lb/a/a/a/c/c;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/l;->a(Lcom/google/android/gms/common/api/a$b;Lb/a/a/a/c/c;)V

    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/i;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/q1;->a:Lb/a/a/a/c/c;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lb/a/a/a/c/c;->e(Ljava/lang/Object;)Z

    return-void
.end method
