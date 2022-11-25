.class final Lb/a/a/a/c/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lb/a/a/a/c/b;

.field private final synthetic b:Lb/a/a/a/c/d;


# direct methods
.method constructor <init>(Lb/a/a/a/c/d;Lb/a/a/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/c/e;->b:Lb/a/a/a/c/d;

    iput-object p2, p0, Lb/a/a/a/c/e;->a:Lb/a/a/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/c/e;->b:Lb/a/a/a/c/d;

    invoke-static {v0}, Lb/a/a/a/c/d;->b(Lb/a/a/a/c/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/c/e;->b:Lb/a/a/a/c/d;

    invoke-static {v1}, Lb/a/a/a/c/d;->c(Lb/a/a/a/c/d;)Lb/a/a/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/c/e;->b:Lb/a/a/a/c/d;

    invoke-static {v1}, Lb/a/a/a/c/d;->c(Lb/a/a/a/c/d;)Lb/a/a/a/c/a;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/c/e;->a:Lb/a/a/a/c/b;

    invoke-interface {v1, v2}, Lb/a/a/a/c/a;->a(Lb/a/a/a/c/b;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
