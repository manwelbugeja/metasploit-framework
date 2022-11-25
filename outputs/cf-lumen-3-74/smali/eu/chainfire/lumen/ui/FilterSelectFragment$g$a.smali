.class Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment$g;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment$g;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->l(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->l(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->l(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->a:Landroid/widget/SeekBar;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v2, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->b:Landroid/widget/CheckBox;

    iget-object v3, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->c:Landroid/widget/CheckBox;

    iget-object v4, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->a:Landroid/widget/SeekBar;

    iget-object v5, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->d:Landroid/widget/TextView;

    invoke-static {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->h(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z

    move-result v6

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->i(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v7

    invoke-static/range {v1 .. v7}, Leu/chainfire/lumen/ui/FilterSelectFragment;->j(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->m(Leu/chainfire/lumen/ui/FilterSelectFragment;Z)V

    return-void
.end method
