.class Leu/chainfire/lumen/ui/FilterSelectFragment$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Landroid/widget/CheckBox;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->a:Landroid/widget/SeekBar;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->c:Landroid/widget/CheckBox;

    iput-object p5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->d:Landroid/widget/TextView;

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

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, p1, [Ljava/lang/Object;

    iget-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p2

    const-string v3, "%.3f"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p2

    iget-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$g;->e:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {p2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v2, 0x2002

    const v3, 0x7f090094

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f090099

    new-instance v8, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;

    invoke-direct {v8, p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$g$a;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment$g;[Ljava/lang/String;)V

    invoke-static/range {v0 .. v8}, Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return p1

    :cond_0
    return p2
.end method
