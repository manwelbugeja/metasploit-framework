.class Leu/chainfire/lumen/root/Runner$1;
.super Leu/chainfire/lumen/root/IPC$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/root/Runner;->run([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/lumen/root/Runner;

.field final synthetic val$counter:[J

.field final synthetic val$driverMode:[Leu/chainfire/lumen/drivers/m$g;

.field final synthetic val$setting:[Leu/chainfire/lumen/drivers/ControlSetting;

.field final synthetic val$updateWaiter:Ljava/lang/Object;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/root/Runner;Ljava/lang/Object;[Leu/chainfire/lumen/drivers/m$g;[Leu/chainfire/lumen/drivers/ControlSetting;[J)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/root/Runner$1;->this$0:Leu/chainfire/lumen/root/Runner;

    iput-object p2, p0, Leu/chainfire/lumen/root/Runner$1;->val$updateWaiter:Ljava/lang/Object;

    iput-object p3, p0, Leu/chainfire/lumen/root/Runner$1;->val$driverMode:[Leu/chainfire/lumen/drivers/m$g;

    iput-object p4, p0, Leu/chainfire/lumen/root/Runner$1;->val$setting:[Leu/chainfire/lumen/drivers/ControlSetting;

    iput-object p5, p0, Leu/chainfire/lumen/root/Runner$1;->val$counter:[J

    invoke-direct {p0}, Leu/chainfire/lumen/root/IPC$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public terminate()V
    .locals 0

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->e()V

    return-void
.end method

.method public update(BLeu/chainfire/lumen/drivers/ControlSetting;)V
    .locals 7

    iget-object v0, p0, Leu/chainfire/lumen/root/Runner$1;->val$updateWaiter:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/lumen/root/Runner$1;->val$driverMode:[Leu/chainfire/lumen/drivers/m$g;

    invoke-static {p1}, Leu/chainfire/lumen/drivers/m;->I(B)Leu/chainfire/lumen/drivers/m$g;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Leu/chainfire/lumen/root/Runner$1;->val$setting:[Leu/chainfire/lumen/drivers/ControlSetting;

    aput-object p2, p1, v2

    iget-object p1, p0, Leu/chainfire/lumen/root/Runner$1;->val$counter:[J

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    aput-wide v3, p1, v2

    iget-object p1, p0, Leu/chainfire/lumen/root/Runner$1;->val$updateWaiter:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
