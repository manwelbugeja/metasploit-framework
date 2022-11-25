.class public final Lcom/google/android/gms/common/api/internal/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/api/internal/l0;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f0;->a:Lcom/google/android/gms/common/api/internal/m0;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f0;->a:Lcom/google/android/gms/common/api/internal/m0;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/m0;->j()V

    return-void
.end method

.method public final d(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
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

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f0;->a:Lcom/google/android/gms/common/api/internal/m0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/m0;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f0;->a:Lcom/google/android/gms/common/api/internal/m0;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/m0;->m:Lcom/google/android/gms/common/api/internal/g0;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/g0;->q:Ljava/util/Set;

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
