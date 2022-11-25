.class public Lcom/google/android/gms/common/api/internal/k;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/google/android/gms/common/api/Status;Lb/a/a/a/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Lb/a/a/a/c/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/k;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lb/a/a/a/c/c;)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lb/a/a/a/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Status;",
            "TTResult;",
            "Lb/a/a/a/c/c<",
            "TTResult;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lb/a/a/a/c/c;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/b;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, p1}, Lb/a/a/a/c/c;->b(Ljava/lang/Exception;)V

    return-void
.end method
