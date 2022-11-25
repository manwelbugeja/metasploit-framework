.class public final Lcom/google/android/gms/common/api/internal/zace;
.super Lcom/google/android/gms/signin/internal/zac;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field private static zakh:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lb/a/a/a/b/e;",
            "Lb/a/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zaau:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lb/a/a/a/b/e;",
            "Lb/a/a/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private zaes:Lcom/google/android/gms/common/internal/b;

.field private zaga:Lb/a/a/a/b/e;

.field private zaki:Lcom/google/android/gms/common/api/internal/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lb/a/a/a/b/b;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zace;->zakh:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/b;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zace;->zakh:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/zace;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/b;Lcom/google/android/gms/common/api/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/b;",
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lb/a/a/a/b/e;",
            "Lb/a/a/a/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/j;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/b;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/b;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zace;->zaau:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;)Lcom/google/android/gms/common/api/internal/i1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/i1;

    return-object p0
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zace;->zac(Lcom/google/android/gms/signin/internal/zaj;)V

    return-void
.end method

.method private final zac(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zaj;->c()Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/i1;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/i1;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/i1;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/i1;->c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    invoke-interface {p1, p0}, Lb/a/a/a/b/e;->d(Lcom/google/android/gms/signin/internal/zad;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/i1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/i1;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->b()V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/i1;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/b;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/b;->j(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zace;->zaau:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zace;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zace;->zaes:Lcom/google/android/gms/common/internal/b;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/b;->i()Lb/a/a/a/b/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/b;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/e;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaki:Lcom/google/android/gms/common/api/internal/i1;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mScopes:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    invoke-interface {p1}, Lb/a/a/a/b/e;->c()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/g1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/g1;-><init>(Lcom/google/android/gms/common/api/internal/zace;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/h1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/h1;-><init>(Lcom/google/android/gms/common/api/internal/zace;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zabq()Lb/a/a/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    return-object v0
.end method

.method public final zabs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zace;->zaga:Lb/a/a/a/b/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->b()V

    :cond_0
    return-void
.end method
