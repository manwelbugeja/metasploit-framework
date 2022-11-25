.class Leu/chainfire/lumen/ui/FilterSelectFragment$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->p(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->a:Landroid/widget/TextView;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result p3

    invoke-static {p1, p2, p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;->b:Leu/chainfire/lumen/ui/FilterSelectFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->m(Leu/chainfire/lumen/ui/FilterSelectFragment;Z)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
