.class Leu/chainfire/lumen/ui/FilterSelectFragment$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$n;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$n;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->r(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$n;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->h(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$n;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->i(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/d;->B(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$n;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
