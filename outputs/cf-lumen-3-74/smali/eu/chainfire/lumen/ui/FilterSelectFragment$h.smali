.class Leu/chainfire/lumen/ui/FilterSelectFragment$h;
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
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/SeekBar;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->c:Landroid/widget/SeekBar;

    iput-object p5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->d:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7

    if-eqz p3, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->a:Landroid/widget/CheckBox;

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->b:Landroid/widget/CheckBox;

    iget-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->c:Landroid/widget/SeekBar;

    iget-object v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->d:Landroid/widget/TextView;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->h(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z

    move-result v5

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->i(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Leu/chainfire/lumen/ui/FilterSelectFragment;->j(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$h;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

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
