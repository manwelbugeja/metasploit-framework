.class Leu/chainfire/librootjava/RootIPC$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/librootjava/RootIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final b:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method public constructor <init>(Leu/chainfire/librootjava/RootIPC;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leu/chainfire/librootjava/RootIPC$a;->a:Landroid/os/IBinder;

    iput-object p3, p0, Leu/chainfire/librootjava/RootIPC$a;->b:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Leu/chainfire/librootjava/RootIPC$a;->b:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method
