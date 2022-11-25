.class public Lcom/google/android/gms/common/internal/k;
.super Lcom/google/android/gms/common/internal/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final C:Lcom/google/android/gms/common/api/a$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$h<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method protected L(ILandroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->C:Lcom/google/android/gms/common/api/a$h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/a$h;->w(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->C:Lcom/google/android/gms/common/api/a$h;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$h;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected n(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->C:Lcom/google/android/gms/common/api/a$h;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/a$h;->n(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method public n0()Lcom/google/android/gms/common/api/a$h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/a$h<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->C:Lcom/google/android/gms/common/api/a$h;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/k;->C:Lcom/google/android/gms/common/api/a$h;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$h;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/e;->x()I

    move-result v0

    return v0
.end method
