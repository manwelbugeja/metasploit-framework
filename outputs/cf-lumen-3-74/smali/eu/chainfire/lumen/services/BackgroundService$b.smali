.class Leu/chainfire/lumen/services/BackgroundService$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/services/BackgroundService;->c0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/services/BackgroundService;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/services/BackgroundService;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/services/BackgroundService$b;->a:Leu/chainfire/lumen/services/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/services/BackgroundService$b;->a:Leu/chainfire/lumen/services/BackgroundService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method
