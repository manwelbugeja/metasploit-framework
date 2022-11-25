.class final Lcom/google/android/gms/common/api/internal/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/j;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/j1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Lcom/google/android/gms/common/api/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->p:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/j1;->f(Lcom/google/android/gms/common/api/internal/j1;)Lcom/google/android/gms/common/api/m;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/m;->b(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/common/api/g;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/j1;->g(Lcom/google/android/gms/common/api/internal/j1;)Lcom/google/android/gms/common/api/internal/l1;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/j1;->g(Lcom/google/android/gms/common/api/internal/j1;)Lcom/google/android/gms/common/api/internal/l1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Lcom/google/android/gms/common/api/j;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/j1;->b(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/j;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j1;->i(Lcom/google/android/gms/common/api/internal/j1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->k(Lcom/google/android/gms/common/api/internal/j1;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/j1;->g(Lcom/google/android/gms/common/api/internal/j1;)Lcom/google/android/gms/common/api/internal/l1;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/j1;->g(Lcom/google/android/gms/common/api/internal/j1;)Lcom/google/android/gms/common/api/internal/l1;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Lcom/google/android/gms/common/api/j;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/j1;->b(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/j;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j1;->i(Lcom/google/android/gms/common/api/internal/j1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/f;->k(Lcom/google/android/gms/common/api/internal/j1;)V

    :cond_1
    return-void

    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/k1;->a:Lcom/google/android/gms/common/api/j;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/j1;->b(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/j;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/j1;->i(Lcom/google/android/gms/common/api/internal/j1;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/f;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/k1;->b:Lcom/google/android/gms/common/api/internal/j1;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/f;->k(Lcom/google/android/gms/common/api/internal/j1;)V

    :cond_2
    throw v1
.end method
