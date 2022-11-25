.class public Leu/chainfire/lumen/receivers/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnsafeProtectedBroadcastReceiver"
        }
    .end annotation

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "RECEIVER"

    const-string v1, "BootCompleteReceiver"

    invoke-static {v0, v1, p2}, Leu/chainfire/librootjava/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leu/chainfire/lumen/services/BackgroundService;->b0(Landroid/content/Context;I)V

    return-void
.end method
