.class public Lcom/android/datetimepicker/time/e;
.super Landroid/app/DialogFragment;
.source ""

# interfaces
.implements Lcom/android/datetimepicker/time/RadialPickerLayout$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/e$e;,
        Lcom/android/datetimepicker/time/e$f;,
        Lcom/android/datetimepicker/time/e$g;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private a:Lcom/android/datetimepicker/time/e$g;

.field private b:Lcom/android/datetimepicker/a;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lcom/android/datetimepicker/time/RadialPickerLayout;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:C

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Lcom/android/datetimepicker/time/e$f;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private B(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private C(Z)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result p1

    iget-object v2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v2

    invoke-direct {p0, p1, v1}, Lcom/android/datetimepicker/time/e;->w(IZ)V

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->x(I)V

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v2, :cond_1

    const/16 v2, 0xc

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->B(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result p1

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/android/datetimepicker/time/e;->v(IZZZ)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_2
    const/4 p1, 0x2

    new-array v2, p1, [Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v0

    aput-object v3, v2, v1

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->o([Ljava/lang/Boolean;)[I

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "%02d"

    const-string v6, "%2d"

    if-eqz v4, :cond_3

    move-object v4, v5

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v6

    :goto_2
    aget v2, v3, v0

    const/16 v6, 0x20

    const/4 v7, -0x1

    if-ne v2, v7, :cond_5

    iget-object v2, p0, Lcom/android/datetimepicker/time/e;->u:Ljava/lang/String;

    goto :goto_3

    :cond_5
    new-array v2, v1, [Ljava/lang/Object;

    aget v8, v3, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v0

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-char v4, p0, Lcom/android/datetimepicker/time/e;->t:C

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :goto_3
    aget v4, v3, v1

    if-ne v4, v7, :cond_6

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->u:Ljava/lang/String;

    goto :goto_4

    :cond_6
    new-array v4, v1, [Ljava/lang/Object;

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/android/datetimepicker/time/e;->t:C

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/datetimepicker/time/e;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/datetimepicker/time/e;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v0, :cond_7

    aget p1, v3, p1

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->B(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method static synthetic b(Lcom/android/datetimepicker/time/e;IZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/e;->v(IZZZ)V

    return-void
.end method

.method static synthetic c(Lcom/android/datetimepicker/time/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    return p0
.end method

.method static synthetic d(Lcom/android/datetimepicker/time/e;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/android/datetimepicker/time/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->l(Z)V

    return-void
.end method

.method static synthetic f(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/e$g;
    .locals 0

    iget-object p0, p0, Lcom/android/datetimepicker/time/e;->a:Lcom/android/datetimepicker/time/e$g;

    return-object p0
.end method

.method static synthetic g(Lcom/android/datetimepicker/time/e;)Lcom/android/datetimepicker/time/RadialPickerLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/android/datetimepicker/time/e;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->B(I)V

    return-void
.end method

.method static synthetic i(Lcom/android/datetimepicker/time/e;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->u(I)Z

    move-result p0

    return p0
.end method

.method private j(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->s()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->k()I

    return v1

    :cond_3
    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->p(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_5
    return v2
.end method

.method private k()I
    .locals 3

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return v0
.end method

.method private l(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/e;->o([Ljava/lang/Boolean;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    aget v4, v1, v0

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/datetimepicker/time/RadialPickerLayout;->p(II)V

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-virtual {v3, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->C(Z)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p1, v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->t(Z)Z

    :cond_2
    return-void
.end method

.method private m()V
    .locals 11

    new-instance v0, Lcom/android/datetimepicker/time/e$f;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, p0, v2}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iput-object v0, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/16 v4, 0xa

    const/4 v5, 0x6

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/datetimepicker/time/e$f;

    new-array v7, v5, [I

    fill-array-data v7, :array_0

    invoke-direct {v0, p0, v7}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    new-instance v7, Lcom/android/datetimepicker/time/e$f;

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    invoke-direct {v7, p0, v4}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v0, v7}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v4, Lcom/android/datetimepicker/time/e$f;

    new-array v8, v2, [I

    fill-array-data v8, :array_2

    invoke-direct {v4, p0, v8}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iget-object v8, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    invoke-virtual {v8, v4}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v8, Lcom/android/datetimepicker/time/e$f;

    new-array v5, v5, [I

    fill-array-data v5, :array_3

    invoke-direct {v8, p0, v5}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v4, v8}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v8, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v5, Lcom/android/datetimepicker/time/e$f;

    new-array v9, v3, [I

    fill-array-data v9, :array_4

    invoke-direct {v5, p0, v9}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v8, v5}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v5, Lcom/android/datetimepicker/time/e$f;

    new-array v8, v3, [I

    fill-array-data v8, :array_5

    invoke-direct {v5, p0, v8}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v4, v5}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v5, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v4, Lcom/android/datetimepicker/time/e$f;

    new-array v5, v6, [I

    const/16 v6, 0x9

    aput v6, v5, v1

    invoke-direct {v4, p0, v5}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    invoke-virtual {v1, v4}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-direct {v1, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v4, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    new-array v2, v2, [I

    fill-array-data v2, :array_7

    invoke-direct {v1, p0, v2}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v4, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v1, v7}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_8

    invoke-direct {v1, p0, v2}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iget-object v2, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    goto/16 :goto_0

    :cond_0
    new-instance v0, Lcom/android/datetimepicker/time/e$f;

    new-array v2, v2, [I

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v7

    aput v7, v2, v1

    invoke-direct {p0, v6}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v7

    aput v7, v2, v6

    invoke-direct {v0, p0, v2}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    new-instance v2, Lcom/android/datetimepicker/time/e$f;

    new-array v6, v6, [I

    const/16 v7, 0x8

    aput v7, v6, v1

    invoke-direct {v2, p0, v6}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    const/4 v6, 0x3

    new-array v8, v6, [I

    fill-array-data v8, :array_9

    invoke-direct {v1, p0, v8}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v8, Lcom/android/datetimepicker/time/e$f;

    new-array v9, v5, [I

    fill-array-data v9, :array_a

    invoke-direct {v8, p0, v9}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v1, v8}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v8, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v9, Lcom/android/datetimepicker/time/e$f;

    new-array v10, v4, [I

    fill-array-data v10, :array_b

    invoke-direct {v9, p0, v10}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v8, v9}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v9, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v8, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-direct {v8, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v1, v8}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v8, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v6, [I

    fill-array-data v3, :array_d

    invoke-direct {v1, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v2, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    invoke-direct {v2, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v2, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    new-array v2, v7, [I

    fill-array-data v2, :array_f

    invoke-direct {v1, p0, v2}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    iget-object v2, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v2, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    invoke-direct {v2, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    invoke-virtual {v1, v2}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    new-instance v1, Lcom/android/datetimepicker/time/e$f;

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    invoke-direct {v1, p0, v3}, Lcom/android/datetimepicker/time/e$f;-><init>(Lcom/android/datetimepicker/time/e;[I)V

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/e$f;->a(Lcom/android/datetimepicker/time/e$f;)V

    return-void

    :array_0
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_4
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_8
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_9
    .array-data 4
        0x7
        0x8
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_b
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_c
    .array-data 4
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data

    :array_e
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_f
    .array-data 4
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_10
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method private n(I)I
    .locals 8

    iget v0, p0, Lcom/android/datetimepicker/time/e;->z:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/e;->A:I

    if-ne v0, v2, :cond_3

    :cond_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iget-object v6, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    const/4 v4, 0x2

    new-array v7, v4, [C

    aput-char v5, v7, v3

    aput-char v6, v7, v1

    invoke-virtual {v0, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    iput v3, p0, Lcom/android/datetimepicker/time/e;->z:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/e;->A:I

    goto :goto_1

    :cond_1
    const-string v0, "TimePickerDialog"

    const-string v3, "Unable to find keycodes for AM and PM."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/datetimepicker/time/e;->z:I

    return p1

    :cond_4
    if-ne p1, v1, :cond_5

    iget p1, p0, Lcom/android/datetimepicker/time/e;->A:I

    return p1

    :cond_5
    return v2
.end method

.method private o([Ljava/lang/Boolean;)[I
    .locals 11

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v4}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v6

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v6

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    const/4 v6, 0x1

    :goto_1
    move v8, v6

    const/4 v7, -0x1

    :goto_2
    iget-object v9, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v8, v9, :cond_7

    iget-object v9, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/datetimepicker/time/e;->p(I)I

    move-result v9

    if-ne v8, v6, :cond_3

    move v7, v9

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v6, 0x1

    if-ne v8, v10, :cond_4

    mul-int/lit8 v10, v9, 0xa

    add-int/2addr v7, v10

    if-eqz p1, :cond_6

    if-nez v9, :cond_6

    aput-object v0, p1, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v6, 0x2

    if-ne v8, v10, :cond_5

    move v3, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v6, 0x3

    if-ne v8, v10, :cond_6

    mul-int/lit8 v10, v9, 0xa

    add-int/2addr v3, v10

    if-eqz p1, :cond_6

    if-nez v9, :cond_6

    aput-object v0, p1, v4

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x3

    new-array p1, p1, [I

    aput v3, p1, v4

    aput v7, p1, v5

    aput v1, p1, v2

    return-object p1
.end method

.method private static p(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x5

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private r()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->o([Ljava/lang/Boolean;)[I

    move-result-object v0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v0, v0, v2

    const/16 v3, 0x3c

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private s()Z
    .locals 3

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->y:Lcom/android/datetimepicker/time/e$f;

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/datetimepicker/time/e$f;->b(I)Lcom/android/datetimepicker/time/e$f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static t(Lcom/android/datetimepicker/time/e$g;IIZ)Lcom/android/datetimepicker/time/e;
    .locals 1

    new-instance v0, Lcom/android/datetimepicker/time/e;

    invoke-direct {v0}, Lcom/android/datetimepicker/time/e;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/datetimepicker/time/e;->q(Lcom/android/datetimepicker/time/e$g;IIZ)V

    return-object v0
.end method

.method private u(I)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v1, 0x3d

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->l(Z)V

    :cond_1
    return v0

    :cond_2
    const/16 v1, 0x42

    if-ne p1, v1, :cond_6

    iget-boolean p1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->l(Z)V

    :cond_4
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->a:Lcom/android/datetimepicker/time/e$g;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/datetimepicker/time/e$g;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    :cond_5
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return v0

    :cond_6
    const/16 v1, 0x43

    if-ne p1, v1, :cond_9

    iget-boolean p1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->k()I

    move-result p1

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v1

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    goto :goto_0

    :cond_7
    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v1

    if-ne p1, v1, :cond_8

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    goto :goto_0

    :cond_8
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/datetimepicker/time/e;->p(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->v:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->C(Z)V

    goto :goto_1

    :cond_9
    const/4 v1, 0x7

    if-eq p1, v1, :cond_b

    const/16 v1, 0x8

    if-eq p1, v1, :cond_b

    const/16 v1, 0x9

    if-eq p1, v1, :cond_b

    const/16 v1, 0xa

    if-eq p1, v1, :cond_b

    const/16 v1, 0xb

    if-eq p1, v1, :cond_b

    const/16 v1, 0xc

    if-eq p1, v1, :cond_b

    const/16 v1, 0xd

    if-eq p1, v1, :cond_b

    const/16 v1, 0xe

    if-eq p1, v1, :cond_b

    const/16 v1, 0xf

    if-eq p1, v1, :cond_b

    const/16 v1, 0x10

    if-eq p1, v1, :cond_b

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v1, :cond_a

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v1

    if-eq p1, v1, :cond_b

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/time/e;->n(I)I

    move-result v1

    if-ne p1, v1, :cond_a

    goto :goto_2

    :cond_a
    :goto_1
    return v2

    :cond_b
    :goto_2
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-nez v1, :cond_c

    const-string p1, "TimePickerDialog"

    const-string v1, "Unable to initiate keyboard mode, TimePicker was null."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_c
    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->z(I)V

    return v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->j(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, v2}, Lcom/android/datetimepicker/time/e;->C(Z)V

    :cond_e
    return v0

    :cond_f
    :goto_3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return v0
.end method

.method private v(IZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->m(IZ)V

    const-string p2, ": "

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-nez v1, :cond_0

    rem-int/lit8 v0, v0, 0xc

    :cond_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->B:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object p4, p0, Lcom/android/datetimepicker/time/e;->C:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_3

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-object p4, p0, Lcom/android/datetimepicker/time/e;->E:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    :goto_0
    if-nez p1, :cond_4

    iget p4, p0, Lcom/android/datetimepicker/time/e;->k:I

    goto :goto_1

    :cond_4
    iget p4, p0, Lcom/android/datetimepicker/time/e;->l:I

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/android/datetimepicker/time/e;->k:I

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/android/datetimepicker/time/e;->l:I

    :goto_2
    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p4, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x3f59999a    # 0.85f

    const p4, 0x3f8ccccd    # 1.1f

    invoke-static {p2, p1, p4}, Lcom/android/datetimepicker/h;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p3, :cond_6

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private w(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const-string v1, "%d"

    if-eqz v0, :cond_0

    const-string v1, "%02d"

    goto :goto_0

    :cond_0
    rem-int/lit8 p1, p1, 0xc

    if-nez p1, :cond_1

    const/16 p1, 0xc

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {p2, p1}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private x(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "%02d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0, p1}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private z(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->t(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/e;->j(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/e;->C(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->g()V

    return-void
.end method

.method public a(IIZ)V
    .locals 4

    const-string v0, ": "

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/datetimepicker/time/e;->w(IZ)V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/datetimepicker/time/e;->o:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-direct {p0, v1, v1, v1, p1}, Lcom/android/datetimepicker/time/e;->v(IZZZ)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->E:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->B:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {p1, v2}, Lcom/android/datetimepicker/h;->c(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/e;->x(I)V

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/datetimepicker/time/e;->D:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/e;->B(I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->r()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/time/e;->l(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "hour_of_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "minute"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "is_24_hour_view"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/e;->p:I

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/e;->q:I

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const-string v0, "in_kb_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    const-string v0, "dark_theme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/e;->s:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/Window;->requestFeature(I)Z

    sget p2, Lcom/android/datetimepicker/f;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/datetimepicker/time/e$e;

    invoke-direct {p2, p0, v1}, Lcom/android/datetimepicker/time/e$e;-><init>(Lcom/android/datetimepicker/time/e;Lcom/android/datetimepicker/time/e$a;)V

    sget v1, Lcom/android/datetimepicker/e;->m:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/datetimepicker/g;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->B:Ljava/lang/String;

    sget v2, Lcom/android/datetimepicker/g;->m:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->C:Ljava/lang/String;

    sget v2, Lcom/android/datetimepicker/g;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->D:Ljava/lang/String;

    sget v2, Lcom/android/datetimepicker/g;->n:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->E:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/android/datetimepicker/b;->k:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/datetimepicker/b;->b:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/datetimepicker/time/e;->k:I

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/android/datetimepicker/b;->m:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/datetimepicker/b;->j:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/datetimepicker/time/e;->l:I

    sget v2, Lcom/android/datetimepicker/e;->e:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v2, Lcom/android/datetimepicker/e;->d:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->e:Landroid/widget/TextView;

    sget v2, Lcom/android/datetimepicker/e;->h:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->g:Landroid/widget/TextView;

    sget v2, Lcom/android/datetimepicker/e;->g:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v2, Lcom/android/datetimepicker/e;->b:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    iput-object v5, p0, Lcom/android/datetimepicker/time/e;->m:Ljava/lang/String;

    aget-object v3, v3, v0

    iput-object v3, p0, Lcom/android/datetimepicker/time/e;->n:Ljava/lang/String;

    new-instance v3, Lcom/android/datetimepicker/a;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/datetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/datetimepicker/time/e;->b:Lcom/android/datetimepicker/a;

    sget v3, Lcom/android/datetimepicker/e;->l:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/datetimepicker/time/RadialPickerLayout;

    iput-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3, p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setOnValueSelectedListener(Lcom/android/datetimepicker/time/RadialPickerLayout$c;)V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3, p2}, Landroid/widget/FrameLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/datetimepicker/time/e;->b:Lcom/android/datetimepicker/a;

    iget v8, p0, Lcom/android/datetimepicker/time/e;->p:I

    iget v9, p0, Lcom/android/datetimepicker/time/e;->q:I

    iget-boolean v10, p0, Lcom/android/datetimepicker/time/e;->r:Z

    invoke-virtual/range {v5 .. v10}, Lcom/android/datetimepicker/time/RadialPickerLayout;->i(Landroid/content/Context;Lcom/android/datetimepicker/a;IIZ)V

    if-eqz p3, :cond_2

    const-string v3, "current_item_showing"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v3, v4, v0, v0}, Lcom/android/datetimepicker/time/e;->v(IZZZ)V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    new-instance v5, Lcom/android/datetimepicker/time/e$a;

    invoke-direct {v5, p0}, Lcom/android/datetimepicker/time/e$a;-><init>(Lcom/android/datetimepicker/time/e;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->f:Landroid/widget/TextView;

    new-instance v5, Lcom/android/datetimepicker/time/e$b;

    invoke-direct {v5, p0}, Lcom/android/datetimepicker/time/e$b;-><init>(Lcom/android/datetimepicker/time/e;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v3, Lcom/android/datetimepicker/e;->c:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    new-instance v5, Lcom/android/datetimepicker/time/e$c;

    invoke-direct {v5, p0}, Lcom/android/datetimepicker/time/e$c;-><init>(Lcom/android/datetimepicker/time/e;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget p2, Lcom/android/datetimepicker/e;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/datetimepicker/time/e;->i:Landroid/view/View;

    iget-boolean p2, p0, Lcom/android/datetimepicker/time/e;->r:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v3, Lcom/android/datetimepicker/e;->i:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_3
    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget p2, p0, Lcom/android/datetimepicker/time/e;->p:I

    const/16 v3, 0xc

    if-ge p2, v3, :cond_4

    const/4 p2, 0x0

    goto :goto_3

    :cond_4
    const/4 p2, 0x1

    :goto_3
    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/e;->B(I)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->i:Landroid/view/View;

    new-instance v3, Lcom/android/datetimepicker/time/e$d;

    invoke-direct {v3, p0}, Lcom/android/datetimepicker/time/e$d;-><init>(Lcom/android/datetimepicker/time/e;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    iput-boolean v0, p0, Lcom/android/datetimepicker/time/e;->o:Z

    iget p2, p0, Lcom/android/datetimepicker/time/e;->p:I

    invoke-direct {p0, p2, v0}, Lcom/android/datetimepicker/time/e;->w(IZ)V

    iget p2, p0, Lcom/android/datetimepicker/time/e;->q:I

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/e;->x(I)V

    sget p2, Lcom/android/datetimepicker/g;->s:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/datetimepicker/time/e;->u:Ljava/lang/String;

    sget p2, Lcom/android/datetimepicker/g;->d:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/datetimepicker/time/e;->v:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->u:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    iput-char p2, p0, Lcom/android/datetimepicker/time/e;->t:C

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/datetimepicker/time/e;->A:I

    iput p2, p0, Lcom/android/datetimepicker/time/e;->z:I

    invoke-direct {p0}, Lcom/android/datetimepicker/time/e;->m()V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-eqz v0, :cond_5

    const-string v0, "typed_times"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    iput-object p3, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/e;->z(I)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->invalidate()V

    goto :goto_5

    :cond_5
    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    if-nez p2, :cond_6

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->s:Z

    invoke-virtual {p2, p3, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->o(Landroid/content/Context;Z)V

    sget p2, Lcom/android/datetimepicker/b;->m:I

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    sget p3, Lcom/android/datetimepicker/b;->c:I

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    sget v0, Lcom/android/datetimepicker/b;->h:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget v3, Lcom/android/datetimepicker/b;->j:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sget v4, Lcom/android/datetimepicker/b;->e:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sget v5, Lcom/android/datetimepicker/d;->a:I

    sget v6, Lcom/android/datetimepicker/b;->d:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget v7, Lcom/android/datetimepicker/b;->g:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    sget v8, Lcom/android/datetimepicker/b;->i:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    sget v9, Lcom/android/datetimepicker/b;->f:I

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v9, Lcom/android/datetimepicker/d;->b:I

    sget v10, Lcom/android/datetimepicker/e;->k:I

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v11, :cond_7

    move v11, v6

    goto :goto_6

    :cond_7
    move v11, p2

    :goto_6
    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    sget v10, Lcom/android/datetimepicker/e;->j:I

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    move v6, p2

    :goto_7
    invoke-virtual {v10, v6}, Landroid/view/View;->setBackgroundColor(I)V

    sget v6, Lcom/android/datetimepicker/e;->i:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v10, :cond_9

    move v10, p2

    goto :goto_8

    :cond_9
    move v10, v3

    :goto_8
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    move p2, v3

    :goto_9
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget p2, Lcom/android/datetimepicker/e;->f:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v2, :cond_b

    move v0, v8

    :cond_b
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v0, :cond_c

    move-object v4, v1

    :cond_c
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz v0, :cond_d

    move p3, v7

    :cond_d
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/e;->c:Landroid/widget/TextView;

    iget-boolean p3, p0, Lcom/android/datetimepicker/time/e;->s:Z

    if-eqz p3, :cond_e

    move v5, v9

    :cond_e
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->f()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->b:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->e()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v0

    const-string v1, "hour_of_day"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v0

    const-string v1, "minute"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const-string v1, "is_24_hour_view"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->j:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    const-string v1, "current_item_showing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    const-string v1, "in_kb_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/datetimepicker/time/e;->x:Ljava/util/ArrayList;

    const-string v1, "typed_times"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/e;->s:Z

    const-string v1, "dark_theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public q(Lcom/android/datetimepicker/time/e$g;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/e;->a:Lcom/android/datetimepicker/time/e$g;

    iput p2, p0, Lcom/android/datetimepicker/time/e;->p:I

    iput p3, p0, Lcom/android/datetimepicker/time/e;->q:I

    iput-boolean p4, p0, Lcom/android/datetimepicker/time/e;->r:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/e;->w:Z

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/e;->s:Z

    return-void
.end method

.method public y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/e;->s:Z

    return-void
.end method
