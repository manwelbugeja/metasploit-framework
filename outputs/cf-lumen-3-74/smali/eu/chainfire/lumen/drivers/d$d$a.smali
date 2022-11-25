.class Leu/chainfire/lumen/drivers/d$d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/d$d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/d$d;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/d$d;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    iget-object v0, v0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->n(Leu/chainfire/lumen/drivers/d;)Leu/chainfire/lumen/a$d;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    iget-object v0, v0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->k(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    iget-object v0, v0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->p(Leu/chainfire/lumen/drivers/d;)J

    move-result-wide v0

    iget-object v2, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    invoke-static {v2}, Leu/chainfire/lumen/drivers/d$d;->a(Leu/chainfire/lumen/drivers/d$d;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    iget-object v1, v0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d$d;->b(Leu/chainfire/lumen/drivers/d$d;)Leu/chainfire/lumen/a$d;

    move-result-object v0

    invoke-static {v1, v0}, Leu/chainfire/lumen/drivers/d;->o(Leu/chainfire/lumen/drivers/d;Leu/chainfire/lumen/a$d;)Leu/chainfire/lumen/a$d;

    iget-object v0, p0, Leu/chainfire/lumen/drivers/d$d$a;->a:Leu/chainfire/lumen/drivers/d$d;

    iget-object v0, v0, Leu/chainfire/lumen/drivers/d$d;->c:Leu/chainfire/lumen/drivers/d;

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->b(Leu/chainfire/lumen/drivers/d;)V

    :cond_0
    return-void
.end method
