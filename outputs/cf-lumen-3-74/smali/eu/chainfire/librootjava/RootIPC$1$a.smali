.class Leu/chainfire/librootjava/RootIPC$1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/librootjava/RootIPC$1;->hello(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/librootjava/RootIPC$1;


# direct methods
.method constructor <init>(Leu/chainfire/librootjava/RootIPC$1;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/librootjava/RootIPC$1$a;->a:Leu/chainfire/librootjava/RootIPC$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$1$a;->a:Leu/chainfire/librootjava/RootIPC$1;

    iget-object v0, v0, Leu/chainfire/librootjava/RootIPC$1;->this$0:Leu/chainfire/librootjava/RootIPC;

    invoke-static {v0, p0}, Leu/chainfire/librootjava/RootIPC;->a(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder$DeathRecipient;)Leu/chainfire/librootjava/RootIPC$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Leu/chainfire/librootjava/RootIPC$1$a;->a:Leu/chainfire/librootjava/RootIPC$1;

    invoke-virtual {v0}, Leu/chainfire/librootjava/RootIPC$a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Leu/chainfire/librootjava/RootIPC$1;->bye(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method
