.class public abstract Lcom/google/android/gms/common/internal/e;
.super Lcom/google/android/gms/common/internal/BaseGmsClient;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/a$f;
.implements Lcom/google/android/gms/common/internal/f$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/BaseGmsClient<",
        "TT;>;",
        "Lcom/google/android/gms/common/api/a$f;",
        "Lcom/google/android/gms/common/internal/f$a;"
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final B:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/b;->q()Lcom/google/android/gms/common/b;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/f$b;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/j;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, p6

    check-cast v8, Lcom/google/android/gms/common/api/f$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)V
    .locals 10

    move-object v9, p0

    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/e;->k0(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/internal/BaseGmsClient$a;

    move-result-object v6

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/e;->l0(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/internal/BaseGmsClient$b;

    move-result-object v7

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/b;->f()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/g;Lcom/google/android/gms/common/c;ILcom/google/android/gms/common/internal/BaseGmsClient$a;Lcom/google/android/gms/common/internal/BaseGmsClient$b;Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/b;->a()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/common/internal/e;->B:Landroid/accounts/Account;

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/common/internal/b;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/e;->m0(Ljava/util/Set;)Ljava/util/Set;

    iput-object v0, v9, Lcom/google/android/gms/common/internal/e;->A:Ljava/util/Set;

    return-void
.end method

.method private static k0(Lcom/google/android/gms/common/api/f$b;)Lcom/google/android/gms/common/internal/BaseGmsClient$a;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/n;-><init>(Lcom/google/android/gms/common/api/f$b;)V

    return-object v0
.end method

.method private static l0(Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/internal/BaseGmsClient$b;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/o;-><init>(Lcom/google/android/gms/common/api/f$c;)V

    return-object v0
.end method

.method private final m0(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/e;->j0(Ljava/util/Set;)Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected final E()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->A:Ljava/util/Set;

    return-object v0
.end method

.method protected j0(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public x()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->x()I

    move-result v0

    return v0
.end method

.method public final z()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/e;->B:Landroid/accounts/Account;

    return-object v0
.end method
