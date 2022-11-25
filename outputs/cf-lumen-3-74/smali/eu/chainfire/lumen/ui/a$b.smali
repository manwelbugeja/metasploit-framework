.class Leu/chainfire/lumen/ui/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/lumen/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/a;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/a$b;->a:Leu/chainfire/lumen/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/a$b;->a:Leu/chainfire/lumen/ui/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/ui/a;->d()V

    return-void
.end method
