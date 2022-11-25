.class Leu/chainfire/lumen/ui/FilterSelectFragment$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/widget/TextView;

.field final synthetic b:[Landroid/widget/SeekBar;

.field final synthetic c:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    iput-object p2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    iput-object p3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->b:[Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    const/4 v2, 0x0

    iget-object v4, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v4, v4, v3

    const/high16 v5, 0x437f0000    # 255.0f

    const-string v6, "%.3f"

    const/4 v7, 0x1

    if-ne v1, v4, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v8}, Leu/chainfire/lumen/ui/FilterSelectFragment;->b(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    aget-object v4, v4, v7

    if-ne v1, v4, :cond_1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v8}, Leu/chainfire/lumen/ui/FilterSelectFragment;->d(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v4, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->a:[Landroid/widget/TextView;

    const/4 v8, 0x2

    aget-object v4, v4, v8

    if-ne v1, v4, :cond_2

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v8, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v8}, Leu/chainfire/lumen/ui/FilterSelectFragment;->f(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    return v3

    :cond_3
    new-array v9, v7, [Ljava/lang/String;

    aput-object v2, v9, v3

    iget-object v2, v0, Leu/chainfire/lumen/ui/FilterSelectFragment$a;->c:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {v2}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/16 v10, 0x2002

    const v11, 0x7f090094

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x7f090099

    new-instance v2, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;

    invoke-direct {v2, v0, v9, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$a$a;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment$a;[Ljava/lang/String;Landroid/view/View;)V

    move-object/from16 v16, v2

    invoke-static/range {v8 .. v16}, Leu/chainfire/lumen/ui/a;->f(Landroid/content/Context;[Ljava/lang/String;IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return v7

    :cond_4
    return v3
.end method
