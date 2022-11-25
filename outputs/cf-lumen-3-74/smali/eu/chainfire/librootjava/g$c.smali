.class Leu/chainfire/librootjava/g$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/librootjava/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/librootjava/g;


# direct methods
.method constructor <init>(Leu/chainfire/librootjava/g;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/g$c;->a:Leu/chainfire/librootjava/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/librootjava/g$c;->a:Leu/chainfire/librootjava/g;

    invoke-static {v0}, Leu/chainfire/librootjava/g;->a(Leu/chainfire/librootjava/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/librootjava/g$c;->a:Leu/chainfire/librootjava/g;

    invoke-static {v1}, Leu/chainfire/librootjava/g;->d(Leu/chainfire/librootjava/g;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
