.class public Leu/chainfire/lumen/ui/FilterSelectFragment;
.super Landroid/app/ListFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/lumen/ui/FilterSelectFragment$w;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Landroid/database/MatrixCursor;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Leu/chainfire/lumen/a$d;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:I

.field private t:Leu/chainfire/lumen/drivers/d;

.field private u:Leu/chainfire/lumen/a;

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Leu/chainfire/lumen/ui/FilterSelectFragment$w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "description"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->b:Landroid/database/MatrixCursor;

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->e:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->f:Z

    iput-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->g:Z

    new-instance v2, Leu/chainfire/lumen/a$d;

    invoke-direct {v2}, Leu/chainfire/lumen/a$d;-><init>()V

    iput-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    const/16 v2, 0x19c8

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    const/16 v2, 0xff

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->m:I

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    const/4 v2, -0x3

    iput v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    iput v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    const/4 v1, -0x1

    iput v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->v:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic A(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->W(Landroid/widget/SeekBar;)V

    return-void
.end method

.method static synthetic B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->G()V

    return-void
.end method

.method static synthetic C(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    return-object p0
.end method

.method static synthetic D(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    return p0
.end method

.method static synthetic E(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    return p1
.end method

.method static synthetic F(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    return-void
.end method

.method private G()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->H(Z)V

    return-void
.end method

.method private H(Z)V
    .locals 12

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    invoke-direct {p0, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->L(I)Leu/chainfire/lumen/a$e;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/a$d;

    invoke-direct {v1, v0}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    iput-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    sget-object v1, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    const-wide/16 v2, 0x1f4

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->t()V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1, v2, v3}, Leu/chainfire/lumen/drivers/d;->A(J)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->v()V

    goto :goto_2

    :cond_0
    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v1}, Leu/chainfire/lumen/drivers/d;->s()V

    const-wide/16 v4, 0x0

    sget-object v1, Leu/chainfire/lumen/a$e;->m:Leu/chainfire/lumen/a$e;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->r(I)V

    goto :goto_0

    :cond_1
    sget-object v1, Leu/chainfire/lumen/a$e;->k:Leu/chainfire/lumen/a$e;

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->t(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Leu/chainfire/lumen/a$e;->n:Leu/chainfire/lumen/a$e;

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->s(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->q(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->m(I)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->m:I

    invoke-virtual {p1, v1}, Leu/chainfire/lumen/a$d;->l(I)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    move-wide v9, v2

    goto :goto_1

    :cond_4
    :goto_0
    move-wide v9, v4

    :goto_1
    sget-object p1, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v0, p1, :cond_5

    iget-boolean p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->g:Z

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$d;->n(I)V

    :cond_6
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$d;->o(I)V

    iget-object v6, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    iget-object v7, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    const/4 v8, 0x1

    const-string v11, "applySelection"

    invoke-virtual/range {v6 .. v11}, Leu/chainfire/lumen/drivers/d;->r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z

    :goto_2
    return-void
.end method

.method private J()V
    .locals 10

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->c()Leu/chainfire/lumen/drivers/c;

    move-result-object v0

    invoke-static {}, Leu/chainfire/lumen/a$e;->values()[Leu/chainfire/lumen/a$e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    sget-object v8, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-ne v7, v8, :cond_0

    iget-boolean v8, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->f:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :cond_0
    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v0, v7}, Leu/chainfire/lumen/drivers/c;->n(Leu/chainfire/lumen/a$e;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v8, 0x0

    :cond_1
    if-eqz v8, :cond_2

    iget-object v8, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->v:Ljava/util/ArrayList;

    new-instance v9, Leu/chainfire/lumen/ui/FilterSelectFragment$w;

    invoke-direct {v9, p0, v5, v6, v7}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;IILeu/chainfire/lumen/a$e;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private K(I)I
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/chainfire/lumen/ui/FilterSelectFragment$w;

    invoke-virtual {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->e()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->c()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private L(I)Leu/chainfire/lumen/a$e;
    .locals 1

    invoke-static {}, Leu/chainfire/lumen/a$e;->values()[Leu/chainfire/lumen/a$e;

    move-result-object v0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->K(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private N(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V
    .locals 4

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v0, ""

    const/4 v3, -0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    if-eqz p5, :cond_2

    invoke-virtual {p1, v3}, Leu/chainfire/lumen/drivers/d;->B(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p6}, Leu/chainfire/lumen/drivers/d;->B(I)V

    :goto_1
    const/4 p1, -0x2

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p1, v3}, Leu/chainfire/lumen/drivers/d;->B(I)V

    iput v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    :goto_2
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    invoke-virtual {p1, p2}, Leu/chainfire/lumen/drivers/d;->B(I)V

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    int-to-float p3, p3

    const/high16 p5, 0x437f0000    # 255.0f

    div-float/2addr p3, p5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, p2, v2

    const-string p3, "<u>%.3f</u>"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private O()V
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object/from16 v7, p0

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    const/4 v1, -0x2

    const/4 v2, -0x3

    if-ne v0, v2, :cond_0

    iput v1, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f080008

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f060013

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/CheckBox;

    const v0, 0x7f060012

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/CheckBox;

    const v0, 0x7f06005b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/SeekBar;

    const v0, 0x7f06002b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const v0, 0x7f060066

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/SeekBar;

    const v0, 0x7f060046

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v10, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v12, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    new-instance v5, Leu/chainfire/lumen/ui/FilterSelectFragment$e;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v6, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Leu/chainfire/lumen/ui/FilterSelectFragment$e;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v10, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v6, Leu/chainfire/lumen/ui/FilterSelectFragment$f;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Leu/chainfire/lumen/ui/FilterSelectFragment$f;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/16 v6, 0xff

    invoke-virtual {v12, v6}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->s:I

    :goto_2
    invoke-virtual {v12, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-boolean v5, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->r:Z

    iget v4, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->s:I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move/from16 v16, v4

    move-object v4, v13

    const/16 v8, 0xff

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Leu/chainfire/lumen/ui/FilterSelectFragment;->N(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V

    new-instance v6, Leu/chainfire/lumen/ui/FilterSelectFragment$g;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v10

    move-object v4, v11

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Leu/chainfire/lumen/ui/FilterSelectFragment$g;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Leu/chainfire/lumen/ui/FilterSelectFragment$h;

    move-object v0, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-direct/range {v0 .. v5}, Leu/chainfire/lumen/ui/FilterSelectFragment$h;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    invoke-virtual {v12, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct/range {p0 .. p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->S()Z

    move-result v0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    invoke-direct {v7, v15, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    new-instance v0, Leu/chainfire/lumen/ui/FilterSelectFragment$k;

    invoke-direct {v0, v7, v15, v14}, Leu/chainfire/lumen/ui/FilterSelectFragment$k;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v14, v8}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, v7, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    invoke-direct {v7, v14, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    new-instance v0, Leu/chainfire/lumen/ui/FilterSelectFragment$l;

    invoke-direct {v0, v7, v15}, Leu/chainfire/lumen/ui/FilterSelectFragment$l;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V

    invoke-virtual {v14, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$n;

    invoke-direct {v1, v7}, Leu/chainfire/lumen/ui/FilterSelectFragment$n;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$m;

    invoke-direct {v1, v7}, Leu/chainfire/lumen/ui/FilterSelectFragment$m;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private P()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f06005b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    new-instance v5, Leu/chainfire/lumen/ui/FilterSelectFragment$s;

    invoke-direct {v5, p0, v1, v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$s;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    invoke-direct {p0, v1, v5}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    const/16 v5, 0x1fe

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    iget v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    invoke-direct {p0, v3, v5}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    new-instance v5, Leu/chainfire/lumen/ui/FilterSelectFragment$t;

    invoke-direct {v5, p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$t;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090039

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$v;

    invoke-direct {v1, p0, v4}, Leu/chainfire/lumen/ui/FilterSelectFragment$v;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$u;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/FilterSelectFragment$u;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090098

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private Q()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f06005b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    invoke-direct {p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->V(Landroid/widget/TextView;)V

    new-instance v5, Leu/chainfire/lumen/ui/FilterSelectFragment$j;

    invoke-direct {v5, p0, v1, v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$j;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/16 v5, 0x38

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-direct {p0, v3}, Leu/chainfire/lumen/ui/FilterSelectFragment;->W(Landroid/widget/SeekBar;)V

    new-instance v5, Leu/chainfire/lumen/ui/FilterSelectFragment$p;

    invoke-direct {v5, p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$p;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090038

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$r;

    invoke-direct {v1, p0, v4}, Leu/chainfire/lumen/ui/FilterSelectFragment$r;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$q;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/FilterSelectFragment$q;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090098

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private R()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f08000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    new-array v3, v1, [Landroid/widget/TextView;

    const v4, 0x7f060039

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f060037

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x7f06002d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v1, v1, [Landroid/widget/SeekBar;

    const v4, 0x7f060060

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v1, v5

    const v4, 0x7f06005f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v1, v6

    const v4, 0x7f06005c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    aput-object v4, v1, v7

    iget v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    iget v8, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    iget v9, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    new-instance v10, Leu/chainfire/lumen/ui/FilterSelectFragment$a;

    invoke-direct {v10, p0, v3, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment$a;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;[Landroid/widget/TextView;[Landroid/widget/SeekBar;)V

    aget-object v11, v3, v5

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v11, v3, v6

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v11, v3, v7

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    aget-object v10, v3, v5

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    aget-object v10, v3, v6

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    aget-object v10, v3, v7

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->T(Landroid/widget/TextView;I)V

    aget-object v10, v1, v5

    const/16 v11, 0xff

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v10, v1, v6

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v10, v1, v7

    invoke-virtual {v10, v11}, Landroid/widget/SeekBar;->setMax(I)V

    aget-object v10, v1, v5

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    aget-object v10, v1, v6

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    aget-object v10, v1, v7

    iget v11, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    invoke-direct {p0, v10, v11}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    new-instance v10, Leu/chainfire/lumen/ui/FilterSelectFragment$b;

    invoke-direct {v10, p0, v1, v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$b;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;[Landroid/widget/SeekBar;[Landroid/widget/TextView;)V

    aget-object v3, v1, v5

    invoke-virtual {v3, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v3, v1, v6

    invoke-virtual {v3, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    aget-object v1, v1, v7

    invoke-virtual {v1, v10}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090039

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$d;

    invoke-direct {v1, p0, v4, v8, v9}, Leu/chainfire/lumen/ui/FilterSelectFragment$d;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;III)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/ui/FilterSelectFragment$c;

    invoke-direct {v1, p0}, Leu/chainfire/lumen/ui/FilterSelectFragment$c;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090098

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private S()Z
    .locals 2

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    invoke-direct {p0, v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->L(I)Leu/chainfire/lumen/a$e;

    move-result-object v0

    new-instance v1, Leu/chainfire/lumen/a$d;

    invoke-direct {v1, v0}, Leu/chainfire/lumen/a$d;-><init>(Leu/chainfire/lumen/a$e;)V

    iput-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    invoke-virtual {v0}, Leu/chainfire/lumen/a;->c()Leu/chainfire/lumen/drivers/c;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v1}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/drivers/c;->m(Leu/chainfire/lumen/a$e;)Z

    move-result v0

    return v0
.end method

.method private T(Landroid/widget/TextView;I)V
    .locals 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float p2, p2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "<u>%.3f</u>"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private U(Landroid/widget/SeekBar;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private V(Landroid/widget/TextView;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</u> K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private W(Landroid/widget/SeekBar;)V
    .locals 1

    iget v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, -0xa

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method static synthetic a(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/SeekBar;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leu/chainfire/lumen/ui/FilterSelectFragment;->U(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method static synthetic b(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    return p0
.end method

.method static synthetic c(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    return p1
.end method

.method static synthetic d(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    return p0
.end method

.method static synthetic e(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    return p1
.end method

.method static synthetic f(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    return p0
.end method

.method static synthetic g(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    return p1
.end method

.method static synthetic h(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->r:Z

    return p0
.end method

.method static synthetic i(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->s:I

    return p0
.end method

.method static synthetic j(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Leu/chainfire/lumen/ui/FilterSelectFragment;->N(Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/SeekBar;Landroid/widget/TextView;ZI)V

    return-void
.end method

.method static synthetic k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    return p0
.end method

.method static synthetic l(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    return p1
.end method

.method static synthetic m(Leu/chainfire/lumen/ui/FilterSelectFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->H(Z)V

    return-void
.end method

.method static synthetic n(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    return p0
.end method

.method static synthetic o(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    return p0
.end method

.method static synthetic p(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    return p1
.end method

.method static synthetic q(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    return p1
.end method

.method static synthetic r(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/drivers/d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    return-object p0
.end method

.method static synthetic s(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z
    .locals 0

    iget-boolean p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->e:Z

    return p0
.end method

.method static synthetic t(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/a$d;
    .locals 0

    iget-object p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    return-object p0
.end method

.method static synthetic u(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->Q()V

    return-void
.end method

.method static synthetic v(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->P()V

    return-void
.end method

.method static synthetic w(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->R()V

    return-void
.end method

.method static synthetic x(Leu/chainfire/lumen/ui/FilterSelectFragment;)I
    .locals 0

    iget p0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    return p0
.end method

.method static synthetic y(Leu/chainfire/lumen/ui/FilterSelectFragment;I)I
    .locals 0

    iput p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    return p1
.end method

.method static synthetic z(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->V(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public I()Leu/chainfire/lumen/a$d;
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    return-object v0
.end method

.method public M()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v2}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "eu.chainfire.lumen.EXTRA_FROM_APP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    :cond_0
    iget-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->e:Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/lumen/a;->e(Landroid/content/Context;)Leu/chainfire/lumen/a;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AlwaysShowAction"
        }
    .end annotation

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/lumen/Application;

    invoke-virtual {v0}, Leu/chainfire/lumen/Application;->g()Z

    move-result v0

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    if-ltz v1, :cond_2

    invoke-direct {p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->L(I)Leu/chainfire/lumen/a$e;

    move-result-object v1

    sget-object v2, Leu/chainfire/lumen/a$e;->e:Leu/chainfire/lumen/a$e;

    if-eq v1, v2, :cond_2

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    invoke-direct {p0, v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->L(I)Leu/chainfire/lumen/a$e;

    move-result-object v1

    sget-object v2, Leu/chainfire/lumen/a$e;->d:Leu/chainfire/lumen/a$e;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->g:Z

    if-eqz v1, :cond_2

    :cond_0
    const v1, 0x7f090007

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    if-eqz v0, :cond_1

    const v0, 0x7f050018

    goto :goto_0

    :cond_1
    const v0, 0x7f050019

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/lumen/drivers/d;->x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "eu.chainfire.lumen.EXTRA_PREFERENCE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "eu.chainfire.lumen.EXTRA_PREFERENCE_DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-boolean v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/lumen/receivers/RemoteControlFireReceiver;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    :cond_1
    if-eqz v3, :cond_2

    new-instance v0, Leu/chainfire/lumen/a$d;

    invoke-direct {v0, v3}, Leu/chainfire/lumen/a$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    goto :goto_0

    :cond_2
    new-instance v3, Leu/chainfire/lumen/a$d;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Leu/chainfire/lumen/a$d;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    :goto_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v3, Leu/chainfire/lumen/a$e;->m:Leu/chainfire/lumen/a$e;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->r:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->g()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->i:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v3, Leu/chainfire/lumen/a$e;->k:Leu/chainfire/lumen/a$e;

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->t:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->j()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->n:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v0

    sget-object v3, Leu/chainfire/lumen/a$e;->n:Leu/chainfire/lumen/a$e;

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->i()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->f()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->c()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->u:Leu/chainfire/lumen/a;

    iget-object v0, v0, Leu/chainfire/lumen/a;->s:Leu/chainfire/lumen/a$f;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$f;->c()Leu/chainfire/lumen/a$d;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->i()I

    move-result v3

    iput v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->j:I

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->f()I

    move-result v3

    iput v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->k:I

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->c()I

    move-result v3

    iput v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->l:I

    :goto_3
    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->b()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->m:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->d()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->o:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->y()Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->r:Z

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->w()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->s:I

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$d;->e()I

    move-result v0

    iput v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->p:I

    :cond_6
    iget-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "eu.chainfire.lumen.EXTRA_IS_MASTER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->e:Z

    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->f:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->g:Z

    :cond_9
    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->J()V

    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->a:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->b:Landroid/database/MatrixCursor;

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/chainfire/lumen/ui/FilterSelectFragment$w;

    invoke-static {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->a(Leu/chainfire/lumen/ui/FilterSelectFragment$w;)Leu/chainfire/lumen/a$e;

    move-result-object v5

    iget-object v6, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->h:Leu/chainfire/lumen/a$d;

    invoke-virtual {v6}, Leu/chainfire/lumen/a$d;->h()Leu/chainfire/lumen/a$e;

    move-result-object v6

    if-ne v5, v6, :cond_a

    invoke-static {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->b(Leu/chainfire/lumen/ui/FilterSelectFragment$w;)I

    move-result v5

    iput v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    :cond_a
    iget-object v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->b:Landroid/database/MatrixCursor;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->d()Leu/chainfire/lumen/a$e;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Leu/chainfire/lumen/a$e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3}, Leu/chainfire/lumen/ui/FilterSelectFragment$w;->d()Leu/chainfire/lumen/a$e;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Leu/chainfire/lumen/a$e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Leu/chainfire/lumen/Application;

    invoke-virtual {v0}, Leu/chainfire/lumen/Application;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Leu/chainfire/lumen/ui/FilterSelectFragment$i;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090004

    iget-object v5, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->b:Landroid/database/MatrixCursor;

    const-string v0, "title"

    const-string v1, "description"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [I

    fill-array-data v7, :array_0

    const/4 v10, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v10

    invoke-direct/range {v0 .. v8}, Leu/chainfire/lumen/ui/FilterSelectFragment$i;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v9}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->O()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->G()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->t()V

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    iget v1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->s:I

    :goto_0
    invoke-virtual {v0, v1}, Leu/chainfire/lumen/drivers/d;->B(I)V

    :cond_1
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/drivers/d;->A(J)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->t:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->v()V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    new-instance p2, Leu/chainfire/lumen/ui/FilterSelectFragment$o;

    invoke-direct {p2, p0}, Leu/chainfire/lumen/ui/FilterSelectFragment$o;-><init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment;->q:I

    const/4 p2, -0x1

    if-le p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/ListFragment;->setSelection(I)V

    invoke-direct {p0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->G()V

    :cond_0
    return-void
.end method
