.class Leu/chainfire/lumen/drivers/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/d;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/d$d;

.field final synthetic b:Leu/chainfire/lumen/drivers/d;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/drivers/d$d;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d$b;->b:Leu/chainfire/lumen/drivers/d;

    iput-object p2, p0, Leu/chainfire/lumen/drivers/d$b;->a:Leu/chainfire/lumen/drivers/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$b;->a:Leu/chainfire/lumen/drivers/d$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d$d;->c()V

    return-void
.end method
