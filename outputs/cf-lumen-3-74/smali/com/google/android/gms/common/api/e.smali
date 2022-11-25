.class public Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/internal/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/t1<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Looper;

.field private final f:I

.field protected final g:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->b:Lcom/google/android/gms/common/api/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a$d;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->e:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/t1;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/internal/t1;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/internal/t1;

    new-instance p2, Lcom/google/android/gms/common/api/internal/x0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/d;->h(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/d;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->g:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/d;->k()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/e;->f:I

    return-void
.end method

.method private final g(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/google/android/gms/common/api/j;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->q()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->g:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/d;->f(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/b;)V

    return-object p2
.end method


# virtual methods
.method protected a()Lcom/google/android/gms/common/internal/b$a;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/b$a;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/b$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->b()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$a;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/common/api/a$d$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$a;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/b$a;->c(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a$d;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$d$b;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/common/api/a$d$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$d$b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->j()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/b$a;->a(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/b$a;->d(Ljava/lang/String;)Lcom/google/android/gms/common/internal/b$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/b$a;->e(Ljava/lang/String;)Lcom/google/android/gms/common/internal/b$a;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/google/android/gms/common/api/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->g(ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;

    return-object p1
.end method

.method public final c()Lcom/google/android/gms/common/api/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->b:Lcom/google/android/gms/common/api/a;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/e;->f:I

    return v0
.end method

.method public e()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->e:Landroid/os/Looper;

    return-object v0
.end method

.method public f(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/internal/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/b$a;->b()Lcom/google/android/gms/common/internal/b;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->d()Lcom/google/android/gms/common/api/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zace;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/zace;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/internal/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/b$a;->b()Lcom/google/android/gms/common/internal/b;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/b;)V

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/common/api/internal/t1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/internal/t1;

    return-object v0
.end method
