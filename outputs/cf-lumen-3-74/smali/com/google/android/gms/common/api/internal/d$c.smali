.class final Lcom/google/android/gms/common/api/internal/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/i1;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/api/a$f;

.field private final b:Lcom/google/android/gms/common/api/internal/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/common/internal/IAccountAccessor;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field final synthetic f:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/t1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/t1<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->e:Z

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d$c;->a:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/d$c;->b:Lcom/google/android/gms/common/api/internal/t1;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/d$c;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$c;->a:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/d$c;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->e:Z

    return p1
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/d$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$c;->g()V

    return-void
.end method

.method private final g()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/d$c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$c;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$c;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/d$c;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/a$f;->m(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/internal/d$c;)Lcom/google/android/gms/common/api/internal/t1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/d$c;->b:Lcom/google/android/gms/common/api/internal/t1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$c;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->b(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/w0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/w0;-><init>(Lcom/google/android/gms/common/api/internal/d$c;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d$c;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->v(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d$c;->b:Lcom/google/android/gms/common/api/internal/t1;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/d$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/d$a;->I(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d$c;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d$c;->d:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/d$c;->g()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/d$c;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
