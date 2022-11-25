.class Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment$s;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment$s;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/16 v0, 0x1fe

    if-le v1, v0, :cond_1

    const/16 v1, 0x1fe

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->E(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    iget-object v2, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->a:Landroid/widget/TextView;

    invoke-static {v2, v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    iget-object v2, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->b:Landroid/widget/SeekBar;

    invoke-static {v2, v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$s$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$s;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
