.class Leu/chainfire/lumen/drivers/l$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/drivers/l$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/drivers/l$a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/drivers/l$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/drivers/l$a$a;->b:Leu/chainfire/lumen/drivers/l$a;

    iput-object p2, p0, Leu/chainfire/lumen/drivers/l$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/drivers/l$a$a;->b:Leu/chainfire/lumen/drivers/l$a;

    iget-object v0, v0, Leu/chainfire/lumen/drivers/l$a;->a:Leu/chainfire/lumen/drivers/l;

    iget-object v1, p0, Leu/chainfire/lumen/drivers/l$a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/drivers/l;->p(Ljava/lang/String;)V

    return-void
.end method
