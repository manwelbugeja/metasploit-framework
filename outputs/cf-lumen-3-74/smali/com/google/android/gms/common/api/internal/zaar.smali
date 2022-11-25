.class final Lcom/google/android/gms/common/api/internal/zaar;
.super Lcom/google/android/gms/signin/internal/zac;
.source ""


# instance fields
.field private final zagj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/v;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zagj:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zagj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/v;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/v;->x(Lcom/google/android/gms/common/api/internal/v;)Lcom/google/android/gms/common/api/internal/m0;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/c0;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/c0;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/l0;Lcom/google/android/gms/common/api/internal/v;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/m0;->i(Lcom/google/android/gms/common/api/internal/n0;)V

    return-void
.end method
