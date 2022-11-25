.class Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment$a;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment$a;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->a:[Ljava/lang/String;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    const/16 v0, 0xff

    :cond_1
    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->b:Landroid/view/View;

    iget-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v4, v3, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v4, v4, v1

    if-ne v2, v4, :cond_2

    iget-object v2, v3, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v2, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->c(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v3, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v2, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    invoke-static {v3, v2, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v3, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v2, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->b:[Landroid/widget/SeekBar;

    aget-object v1, v2, v1

    invoke-static {v3, v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V

    :cond_2
    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->b:Landroid/view/View;

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v3, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-ne v1, v3, :cond_3

    iget-object v1, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->e(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v2, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v2, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->b:[Landroid/widget/SeekBar;

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V

    :cond_3
    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->b:Landroid/view/View;

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v3, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-ne v1, v3, :cond_4

    iget-object v1, v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->g(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v2, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v2, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, v1, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->b:[Landroid/widget/SeekBar;

    aget-object v1, v1, v4

    invoke-static {v2, v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V

    :cond_4
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
