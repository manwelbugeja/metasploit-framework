.class public final Lcom/google/android/gms/common/api/internal/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;
.implements Lcom/google/android/gms/common/api/internal/z1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f$b;",
        "Lcom/google/android/gms/common/api/f$c;",
        "Lcom/google/android/gms/common/api/internal/z1;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/i0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/api/a$f;

.field private final c:Lcom/google/android/gms/common/api/a$b;

.field private final d:Lcom/google/android/gms/common/api/internal/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/t1<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/internal/n;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/v1;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/d1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:I

.field private final i:Lcom/google/android/gms/common/api/internal/zace;

.field private j:Z

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/internal/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic m:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/e;->f(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    instance-of v2, v1, Lcom/google/android/gms/common/internal/k;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/k;->n0()Lcom/google/android/gms/common/api/a$h;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->c:Lcom/google/android/gms/common/api/a$b;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->c:Lcom/google/android/gms/common/api/a$b;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->i()Lcom/google/android/gms/common/api/internal/t1;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    new-instance v2, Lcom/google/android/gms/common/api/internal/n;

    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/n;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->e:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/e;->d()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->h:I

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->g(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/e;->h(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zace;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->i:Lcom/google/android/gms/common/api/internal/zace;

    return-void

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->i:Lcom/google/android/gms/common/api/internal/zace;

    return-void
.end method

.method private final D(Lcom/google/android/gms/common/api/internal/i0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->e:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->d()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/i0;->d(Lcom/google/android/gms/common/api/internal/n;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/i0;->c(Lcom/google/android/gms/common/api/internal/d$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->b()V

    return-void
.end method

.method private final E(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->e:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->z()V

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->b()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method static synthetic F(Lcom/google/android/gms/common/api/internal/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->r()V

    return-void
.end method

.method static synthetic G(Lcom/google/android/gms/common/api/internal/d$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->s()V

    return-void
.end method

.method static synthetic H(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method private final J(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->l()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->r(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/p;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->s(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->r(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/p;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->h:I

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/w1;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final K(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/v1;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->i()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-virtual {v1, v3, p1, v2}, Lcom/google/android/gms/common/api/internal/v1;->b(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final g([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->h()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    :cond_1
    new-instance v3, La/b/a/b/a;

    array-length v4, v1

    invoke-direct {v3, v4}, La/b/a/b/a;-><init>(I)V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/common/Feature;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->c()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v4

    :cond_5
    :goto_3
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->i(Lcom/google/android/gms/common/api/internal/d$b;)V

    return-void
.end method

.method private final i(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->a()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->t()V

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/google/android/gms/common/api/internal/d$a;Z)Z
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->E(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->p(Lcom/google/android/gms/common/api/internal/d$b;)V

    return-void
.end method

.method private final p(Lcom/google/android/gms/common/api/internal/d$b;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/internal/d$b;)Lcom/google/android/gms/common/Feature;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/i0;

    instance-of v3, v2, Lcom/google/android/gms/common/api/internal/e1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/common/api/internal/e1;

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/api/internal/e1;->g(Lcom/google/android/gms/common/api/internal/d$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, p1}, Lcom/google/android/gms/common/util/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/i0;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v4, Lcom/google/android/gms/common/api/o;

    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/api/internal/i0;->e(Ljava/lang/RuntimeException;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final q(Lcom/google/android/gms/common/api/internal/i0;)Z
    .locals 5

    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/e1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->D(Lcom/google/android/gms/common/api/internal/i0;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/e1;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e1;->g(Lcom/google/android/gms/common/api/internal/d$a;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/d$a;->g([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->D(Lcom/google/android/gms/common/api/internal/i0;)V

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/e1;->h(Lcom/google/android/gms/common/api/internal/d$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/common/api/internal/d$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/gms/common/api/internal/d$b;-><init>(Lcom/google/android/gms/common/api/internal/t1;Lcom/google/android/gms/common/Feature;Lcom/google/android/gms/common/api/internal/q0;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/d$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/d;->p(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->J(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->h:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/ConnectionResult;I)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/o;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/o;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/i0;->e(Ljava/lang/RuntimeException;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private final r()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->w()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->y()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/d1;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/i;->b()[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/d$a;->g([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-eqz v2, :cond_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/d1;->a:Lcom/google/android/gms/common/api/internal/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->c:Lcom/google/android/gms/common/api/a$b;

    new-instance v3, Lb/a/a/a/c/c;

    invoke-direct {v3}, Lb/a/a/a/c/c;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/i;->c(Lcom/google/android/gms/common/api/a$b;Lb/a/a/a/c/c;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->t()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->z()V

    return-void
.end method

.method private final s()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->w()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->e:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->f()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    const/16 v3, 0x9

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    const/16 v3, 0xb

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/d;->p(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->q(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/h;->a()V

    return-void
.end method

.method private final t()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/i0;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/google/android/gms/common/api/internal/d$a;->q(Lcom/google/android/gms/common/api/internal/i0;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final y()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    :cond_0
    return-void
.end method

.method private final z()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/d;->u(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->E(Z)Z

    move-result v0

    return v0
.end method

.method final B()Lb/a/a/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->i:Lcom/google/android/gms/common/api/internal/zace;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zace;->zabq()Lb/a/a/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/i0;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/i0;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final I(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->q(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/internal/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->g(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/h;->b(Landroid/content/Context;Lcom/google/android/gms/common/api/a$f;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/d$c;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/d$c;-><init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/t1;)V

    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->i:Lcom/google/android/gms/common/api/internal/zace;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zace;->zaa(Lcom/google/android/gms/common/api/internal/i1;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$f;->o(Lcom/google/android/gms/common/internal/BaseGmsClient$c;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->h:I

    return v0
.end method

.method final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->r()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->a()V

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/common/api/internal/t0;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/common/api/internal/t0;-><init>(Lcom/google/android/gms/common/api/internal/d$a;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final j(Lcom/google/android/gms/common/api/internal/i0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->q(Lcom/google/android/gms/common/api/internal/i0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->z()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->a()V

    return-void
.end method

.method public final k(Lcom/google/android/gms/common/api/internal/v1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->y()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->t(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->g(Lcom/google/android/gms/common/api/internal/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->h(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->C(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    :cond_1
    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->r()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/r0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/r0;-><init>(Lcom/google/android/gms/common/api/internal/d$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->i:Lcom/google/android/gms/common/api/internal/zace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zace;->zabs()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d$a;->w()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->q(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/internal/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/h;->a()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->m()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->C(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->J(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->h:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->j:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->n(Lcom/google/android/gms/common/api/internal/d;)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->d:Lcom/google/android/gms/common/api/internal/t1;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/t1;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available on this device."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->C(Lcom/google/android/gms/common/api/Status;)V

    :cond_6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$a;->s()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/s0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/s0;-><init>(Lcom/google/android/gms/common/api/internal/d$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final u()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/d;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->C(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->e:Lcom/google/android/gms/common/api/internal/n;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/n;->e()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/common/api/internal/g$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/g$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lcom/google/android/gms/common/api/internal/s1;

    new-instance v5, Lb/a/a/a/c/c;

    invoke-direct {v5}, Lb/a/a/a/c/c;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/s1;-><init>(Lcom/google/android/gms/common/api/internal/g$a;Lb/a/a/a/c/c;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/d$a;->j(Lcom/google/android/gms/common/api/internal/i0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/d$a;->K(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->b:Lcom/google/android/gms/common/api/a$f;

    new-instance v1, Lcom/google/android/gms/common/api/internal/u0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/u0;-><init>(Lcom/google/android/gms/common/api/internal/d$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->f(Lcom/google/android/gms/common/internal/BaseGmsClient$e;)V

    :cond_1
    return-void
.end method

.method public final v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/g$a<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/d1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final x()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->m:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/j;->d(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$a;->l:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method
