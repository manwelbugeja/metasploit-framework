.class final Leu/chainfire/librootjavadaemon/RootDaemon$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/librootjavadaemon/RootDaemon;->d(Ljava/lang/String;IZLeu/chainfire/librootjavadaemon/RootDaemon$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-static {}, Leu/chainfire/librootjavadaemon/RootDaemon;->e()V

    return-void
.end method
