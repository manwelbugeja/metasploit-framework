.class Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment$k;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment$k;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->p(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->p(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->p(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->a:Landroid/widget/TextView;

    invoke-static {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v2

    invoke-static {v1, v0, v2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->b:Landroid/widget/SeekBar;

    invoke-static {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v2

    invoke-static {v1, v0, v2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$k$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
