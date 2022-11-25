.class public La/b/a/b/a;
.super La/b/a/b/h;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "La/b/a/b/h<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field h:La/b/a/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/b/f<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/b/a/b/h;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, La/b/a/b/h;-><init>(I)V

    return-void
.end method

.method private m()La/b/a/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/a/b/f<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, La/b/a/b/a;->h:La/b/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, La/b/a/b/a$a;

    invoke-direct {v0, p0}, La/b/a/b/a$a;-><init>(La/b/a/b/a;)V

    iput-object v0, p0, La/b/a/b/a;->h:La/b/a/b/f;

    :cond_0
    iget-object v0, p0, La/b/a/b/a;->h:La/b/a/b/f;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, La/b/a/b/a;->m()La/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b/f;->l()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-direct {p0}, La/b/a/b/a;->m()La/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b/f;->m()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, La/b/a/b/f;->p(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, La/b/a/b/h;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, La/b/a/b/h;->c(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, La/b/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-direct {p0}, La/b/a/b/a;->m()La/b/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, La/b/a/b/f;->n()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
