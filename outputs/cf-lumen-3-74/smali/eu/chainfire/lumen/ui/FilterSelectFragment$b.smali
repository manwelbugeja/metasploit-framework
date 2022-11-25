.class Leu/chainfire/lumen/ui/FilterSelectFragment$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/widget/SeekBar;

.field final synthetic b:[Landroid/widget/TextView;

.field final synthetic c:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;[Landroid/widget/SeekBar;[Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->a:[Landroid/widget/SeekBar;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->b:[Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_3

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x0

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p3, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->c(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->b:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-static {p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->b(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v1

    invoke-static {p3, v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    :cond_0
    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p3, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->e(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->b:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-static {p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->d(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v1

    invoke-static {p3, v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    :cond_1
    iget-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->a:[Landroid/widget/SeekBar;

    const/4 v0, 0x2

    aget-object p3, p3, v0

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->g(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->b:[Landroid/widget/TextView;

    aget-object p2, p2, v0

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->f(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result p3

    invoke-static {p1, p2, p3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    :cond_2
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$b;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    :cond_3
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
