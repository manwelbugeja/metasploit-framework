.class public Lcom/android/datetimepicker/time/a;
.super Landroid/view/View;
.source ""


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/a;->j:Z

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/a;->k:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v2, v0

    sub-float v2, p2, v2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    mul-float v2, v2, p2

    float-to-int p2, v2

    iget v0, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v2, v0

    sub-float v2, p1, v2

    int-to-float v0, v0

    sub-float v0, p1, v0

    mul-float v2, v2, v0

    int-to-float p2, p2

    add-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, p0, Lcom/android/datetimepicker/time/a;->l:I

    if-gt v0, v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget v0, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v2, v0

    sub-float v2, p1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float v2, v2, p1

    add-float/2addr v2, p2

    float-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget p2, p0, Lcom/android/datetimepicker/time/a;->l:I

    if-gt p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public b(Landroid/content/Context;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/a;->j:Z

    if-eqz v0, :cond_0

    const-string p1, "AmPmCirclesView"

    const-string p2, "AmPmCirclesView may only be initialized once."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/datetimepicker/b;->m:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->c:I

    sget v0, Lcom/android/datetimepicker/b;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->e:I

    sget v0, Lcom/android/datetimepicker/b;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->d:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/android/datetimepicker/time/a;->b:I

    sget v0, Lcom/android/datetimepicker/g;->l:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget v0, Lcom/android/datetimepicker/g;->b:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/time/a;->f:F

    sget v0, Lcom/android/datetimepicker/g;->a:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/datetimepicker/time/a;->g:F

    new-instance p1, Ljava/text/DateFormatSymbols;

    invoke-direct {p1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object p1

    aget-object v0, p1, v1

    iput-object v0, p0, Lcom/android/datetimepicker/time/a;->h:Ljava/lang/String;

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/android/datetimepicker/time/a;->i:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/datetimepicker/time/a;->setAmOrPm(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/datetimepicker/time/a;->q:I

    iput-boolean v2, p0, Lcom/android/datetimepicker/time/a;->j:Z

    return-void
.end method

.method c(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/android/datetimepicker/b;->d:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/a;->c:I

    sget p2, Lcom/android/datetimepicker/b;->k:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/a;->e:I

    sget p2, Lcom/android/datetimepicker/b;->m:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/datetimepicker/time/a;->d:I

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/datetimepicker/b;->m:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/a;->c:I

    sget p2, Lcom/android/datetimepicker/b;->b:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/a;->e:I

    sget p2, Lcom/android/datetimepicker/b;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/datetimepicker/time/a;->d:I

    const/16 p1, 0x33

    :goto_0
    iput p1, p0, Lcom/android/datetimepicker/time/a;->b:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/a;->j:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/a;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/datetimepicker/time/a;->f:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    int-to-float v4, v3

    iget v5, p0, Lcom/android/datetimepicker/time/a;->g:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v4, p0, Lcom/android/datetimepicker/time/a;->l:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/datetimepicker/time/a;->o:I

    sub-int v2, v0, v3

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/datetimepicker/time/a;->n:I

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/a;->k:Z

    :cond_1
    iget v0, p0, Lcom/android/datetimepicker/time/a;->c:I

    iget v2, p0, Lcom/android/datetimepicker/time/a;->p:I

    const/16 v3, 0xff

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/datetimepicker/time/a;->e:I

    iget v4, p0, Lcom/android/datetimepicker/time/a;->b:I

    move v3, v4

    const/16 v4, 0xff

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_0

    :cond_2
    if-ne v2, v1, :cond_3

    iget v2, p0, Lcom/android/datetimepicker/time/a;->e:I

    iget v4, p0, Lcom/android/datetimepicker/time/a;->b:I

    goto :goto_0

    :cond_3
    move v2, v0

    const/16 v4, 0xff

    :goto_0
    iget v5, p0, Lcom/android/datetimepicker/time/a;->q:I

    if-nez v5, :cond_4

    iget v0, p0, Lcom/android/datetimepicker/time/a;->e:I

    iget v3, p0, Lcom/android/datetimepicker/time/a;->b:I

    goto :goto_1

    :cond_4
    if-ne v5, v1, :cond_5

    iget v2, p0, Lcom/android/datetimepicker/time/a;->e:I

    iget v4, p0, Lcom/android/datetimepicker/time/a;->b:I

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/datetimepicker/time/a;->l:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/a;->o:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/datetimepicker/time/a;->l:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/datetimepicker/time/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/datetimepicker/time/a;->o:I

    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->h:Ljava/lang/String;

    iget v2, p0, Lcom/android/datetimepicker/time/a;->m:I

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/datetimepicker/time/a;->i:Ljava/lang/String;

    iget v2, p0, Lcom/android/datetimepicker/time/a;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setAmOrPm(I)V
    .locals 0

    iput p1, p0, Lcom/android/datetimepicker/time/a;->p:I

    return-void
.end method

.method public setAmOrPmPressed(I)V
    .locals 0

    iput p1, p0, Lcom/android/datetimepicker/time/a;->q:I

    return-void
.end method
