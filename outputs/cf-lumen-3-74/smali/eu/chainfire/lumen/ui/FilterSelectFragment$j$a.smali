.class Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment$j;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment$j;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->y(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->x(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->y(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->x(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    const/16 v1, 0x19c8

    if-le v0, v1, :cond_1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->y(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->a:Landroid/widget/TextView;

    invoke-static {v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->z(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v1, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->b:Landroid/widget/SeekBar;

    invoke-static {v1, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->A(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;->b:Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
