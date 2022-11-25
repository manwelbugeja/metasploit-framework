.class Leu/chainfire/lumen/ui/FilterSelectFragment$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/SeekBar;

.field final synthetic c:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->a:Landroid/widget/TextView;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->b:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->x(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p2

    iget-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$j;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {p2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x2

    const v3, 0x7f090094

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f090099

    new-instance v8, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;

    invoke-direct {v8, p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$j$a;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment$j;[Ljava/lang/String;)V

    invoke-static/range {v0 .. v8}, Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return p1

    :cond_0
    return p2
.end method
