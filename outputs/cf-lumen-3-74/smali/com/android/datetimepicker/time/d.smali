.class public Lcom/android/datetimepicker/time/d;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/d$b;
    }
.end annotation


# instance fields
.field private A:F

.field private B:F

.field C:Landroid/animation/ObjectAnimator;

.field D:Landroid/animation/ObjectAnimator;

.field private E:Lcom/android/datetimepicker/time/d$b;

.field private final a:Landroid/graphics/Paint;

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/Typeface;

.field private e:Landroid/graphics/Typeface;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:I

.field private q:I

.field private r:F

.field private s:Z

.field private t:F

.field private u:F

.field private v:[F

.field private w:[F

.field private x:[F

.field private y:[F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/d;->c:Z

    return-void
.end method

.method private a(FFFF[F[F)V
    .locals 4

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    div-float v2, p1, v1

    iget-object v3, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p4, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->descent()F

    move-result p4

    iget-object v3, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr p4, v3

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    sub-float p4, p3, p1

    const/4 v1, 0x0

    aput p4, p5, v1

    sub-float p4, p2, p1

    aput p4, p6, v1

    sub-float p4, p3, v0

    const/4 v1, 0x1

    aput p4, p5, v1

    sub-float p4, p2, v0

    aput p4, p6, v1

    sub-float p4, p3, v2

    const/4 v1, 0x2

    aput p4, p5, v1

    sub-float p4, p2, v2

    aput p4, p6, v1

    const/4 p4, 0x3

    aput p3, p5, p4

    aput p2, p6, p4

    add-float p4, p3, v2

    const/4 v1, 0x4

    aput p4, p5, v1

    add-float/2addr v2, p2

    aput v2, p6, v1

    add-float p4, p3, v0

    const/4 v1, 0x5

    aput p4, p5, v1

    add-float/2addr v0, p2

    aput v0, p6, v1

    add-float/2addr p3, p1

    const/4 p4, 0x6

    aput p3, p5, p4

    add-float/2addr p2, p1

    aput p2, p6, p4

    return-void
.end method

.method private b(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V
    .locals 9

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p2, 0x0

    aget-object p3, p4, p2

    const/4 v0, 0x3

    aget v1, p5, v0

    aget v2, p6, p2

    iget-object v3, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 p3, 0x1

    aget-object v1, p4, p3

    const/4 v2, 0x4

    aget v3, p5, v2

    aget v4, p6, p3

    iget-object v5, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x2

    aget-object v3, p4, v1

    const/4 v4, 0x5

    aget v5, p5, v4

    aget v6, p6, v1

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    aget-object v3, p4, v0

    const/4 v5, 0x6

    aget v6, p5, v5

    aget v7, p6, v0

    iget-object v8, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    aget-object v3, p4, v2

    aget v6, p5, v4

    aget v7, p6, v2

    iget-object v8, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    aget-object v3, p4, v4

    aget v6, p5, v2

    aget v7, p6, v4

    iget-object v8, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    aget-object v3, p4, v5

    aget v6, p5, v0

    aget v5, p6, v5

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x7

    aget-object v3, p4, v3

    aget v5, p5, v1

    aget v4, p6, v4

    iget-object v6, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v3, 0x8

    aget-object v3, p4, v3

    aget v4, p5, p3

    aget v2, p6, v2

    iget-object v5, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0x9

    aget-object v2, p4, v2

    aget p2, p5, p2

    aget v0, p6, v0

    iget-object v3, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p2, 0xa

    aget-object p2, p4, p2

    aget v0, p5, p3

    aget v2, p6, v1

    iget-object v3, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 p2, 0xb

    aget-object p2, p4, p2

    aget p4, p5, v1

    aget p3, p6, p3

    iget-object p5, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private d()V
    .locals 15

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    iget v3, p0, Lcom/android/datetimepicker/time/d;->A:F

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    iget v5, p0, Lcom/android/datetimepicker/time/d;->B:F

    invoke-static {v1, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Landroid/animation/Keyframe;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v3, 0x2

    aput-object v5, v7, v3

    const-string v5, "animationRadiusMultiplier"

    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    invoke-static {v0, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    new-array v11, v3, [Landroid/animation/Keyframe;

    aput-object v9, v11, v8

    aput-object v10, v11, v2

    const-string v9, "alpha"

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    new-array v11, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v11, v8

    aput-object v10, v11, v2

    invoke-static {p0, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/16 v10, 0x1f4

    int-to-long v11, v10

    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/datetimepicker/time/d;->C:Landroid/animation/ObjectAnimator;

    iget-object v11, p0, Lcom/android/datetimepicker/time/d;->E:Lcom/android/datetimepicker/time/d$b;

    invoke-virtual {v7, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-float v7, v10

    const/high16 v10, 0x3fa00000    # 1.25f

    mul-float v10, v10, v7

    float-to-int v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v7, v7, v11

    int-to-float v11, v10

    div-float/2addr v7, v11

    sub-float v11, v1, v7

    mul-float v11, v11, v4

    sub-float v4, v1, v11

    iget v11, p0, Lcom/android/datetimepicker/time/d;->B:F

    invoke-static {v0, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    iget v12, p0, Lcom/android/datetimepicker/time/d;->B:F

    invoke-static {v7, v12}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    iget v13, p0, Lcom/android/datetimepicker/time/d;->A:F

    invoke-static {v4, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    invoke-static {v1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/animation/Keyframe;

    aput-object v11, v14, v8

    aput-object v12, v14, v2

    aput-object v4, v14, v3

    aput-object v13, v14, v6

    invoke-static {v5, v14}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-static {v7, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    invoke-static {v1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    new-array v6, v6, [Landroid/animation/Keyframe;

    aput-object v5, v6, v8

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v1, v8

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/d;->D:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/time/d;->E:Lcom/android/datetimepicker/time/d$b;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->c:Z

    if-eqz v0, :cond_0

    const-string p1, "RadialTextsView"

    const-string p2, "This RadialTextsView may only be initialized once."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Lcom/android/datetimepicker/b;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v0, Lcom/android/datetimepicker/g;->k:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/d;->d:Landroid/graphics/Typeface;

    sget v0, Lcom/android/datetimepicker/g;->l:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/time/d;->e:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p2, p0, Lcom/android/datetimepicker/time/d;->f:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/datetimepicker/time/d;->g:[Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/datetimepicker/time/d;->h:Z

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/datetimepicker/time/d;->i:Z

    if-eqz p4, :cond_2

    sget p2, Lcom/android/datetimepicker/g;->c:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/d;->j:F

    goto :goto_0

    :cond_2
    sget p2, Lcom/android/datetimepicker/g;->b:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/d;->j:F

    sget p2, Lcom/android/datetimepicker/g;->a:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/d;->k:F

    :goto_0
    const/4 p2, 0x7

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/android/datetimepicker/time/d;->v:[F

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/android/datetimepicker/time/d;->w:[F

    iget-boolean p3, p0, Lcom/android/datetimepicker/time/d;->i:Z

    if-eqz p3, :cond_3

    sget p3, Lcom/android/datetimepicker/g;->j:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/android/datetimepicker/time/d;->l:F

    sget p3, Lcom/android/datetimepicker/g;->r:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/android/datetimepicker/time/d;->n:F

    sget p3, Lcom/android/datetimepicker/g;->h:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    iput p3, p0, Lcom/android/datetimepicker/time/d;->m:F

    sget p3, Lcom/android/datetimepicker/g;->p:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/datetimepicker/time/d;->o:F

    new-array p1, p2, [F

    iput-object p1, p0, Lcom/android/datetimepicker/time/d;->x:[F

    new-array p1, p2, [F

    iput-object p1, p0, Lcom/android/datetimepicker/time/d;->y:[F

    goto :goto_1

    :cond_3
    sget p2, Lcom/android/datetimepicker/g;->i:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    iput p2, p0, Lcom/android/datetimepicker/time/d;->l:F

    sget p2, Lcom/android/datetimepicker/g;->q:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/datetimepicker/time/d;->n:F

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/datetimepicker/time/d;->z:F

    const p2, 0x3d4ccccd    # 0.05f

    const/4 p3, -0x1

    if-eqz p5, :cond_4

    const/4 p4, -0x1

    goto :goto_2

    :cond_4
    const/4 p4, 0x1

    :goto_2
    int-to-float p4, p4

    mul-float p4, p4, p2

    add-float/2addr p4, p1

    iput p4, p0, Lcom/android/datetimepicker/time/d;->A:F

    const p2, 0x3e99999a    # 0.3f

    if-eqz p5, :cond_5

    const/4 p3, 0x1

    :cond_5
    int-to-float p3, p3

    mul-float p3, p3, p2

    add-float/2addr p3, p1

    iput p3, p0, Lcom/android/datetimepicker/time/d;->B:F

    new-instance p1, Lcom/android/datetimepicker/time/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/datetimepicker/time/d$b;-><init>(Lcom/android/datetimepicker/time/d;Lcom/android/datetimepicker/time/d$a;)V

    iput-object p1, p0, Lcom/android/datetimepicker/time/d;->E:Lcom/android/datetimepicker/time/d$b;

    iput-boolean v2, p0, Lcom/android/datetimepicker/time/d;->s:Z

    iput-boolean v2, p0, Lcom/android/datetimepicker/time/d;->c:Z

    return-void
.end method

.method e(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lcom/android/datetimepicker/b;->m:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/datetimepicker/b;->j:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/datetimepicker/time/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getDisappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->C:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReappearAnimator()Landroid/animation/ObjectAnimator;
    .locals 2

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/datetimepicker/time/d;->D:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-string v0, "RadialTextsView"

    const-string v1, "RadialTextView was not ready for animation."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->c:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/d;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/datetimepicker/time/d;->q:I

    iget v1, p0, Lcom/android/datetimepicker/time/d;->p:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/datetimepicker/time/d;->j:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/d;->r:F

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/d;->h:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/datetimepicker/time/d;->k:F

    mul-float v1, v1, v0

    iget v2, p0, Lcom/android/datetimepicker/time/d;->q:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Lcom/android/datetimepicker/time/d;->q:I

    :cond_1
    iget v1, p0, Lcom/android/datetimepicker/time/d;->n:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/android/datetimepicker/time/d;->t:F

    iget-boolean v1, p0, Lcom/android/datetimepicker/time/d;->i:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/datetimepicker/time/d;->o:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/android/datetimepicker/time/d;->u:F

    :cond_2
    invoke-direct {p0}, Lcom/android/datetimepicker/time/d;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/d;->s:Z

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/d;->b:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->s:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/datetimepicker/time/d;->r:F

    iget v1, p0, Lcom/android/datetimepicker/time/d;->l:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/d;->z:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/android/datetimepicker/time/d;->p:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/datetimepicker/time/d;->q:I

    int-to-float v5, v0

    iget v6, p0, Lcom/android/datetimepicker/time/d;->t:F

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->v:[F

    iget-object v8, p0, Lcom/android/datetimepicker/time/d;->w:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/datetimepicker/time/d;->a(FFFF[F[F)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->i:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/datetimepicker/time/d;->r:F

    iget v1, p0, Lcom/android/datetimepicker/time/d;->m:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/android/datetimepicker/time/d;->z:F

    mul-float v3, v0, v1

    iget v0, p0, Lcom/android/datetimepicker/time/d;->p:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/datetimepicker/time/d;->q:I

    int-to-float v5, v0

    iget v6, p0, Lcom/android/datetimepicker/time/d;->u:F

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->x:[F

    iget-object v8, p0, Lcom/android/datetimepicker/time/d;->y:[F

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/datetimepicker/time/d;->a(FFFF[F[F)V

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/datetimepicker/time/d;->s:Z

    :cond_5
    iget v3, p0, Lcom/android/datetimepicker/time/d;->t:F

    iget-object v4, p0, Lcom/android/datetimepicker/time/d;->d:Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/android/datetimepicker/time/d;->f:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/datetimepicker/time/d;->w:[F

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->v:[F

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/datetimepicker/time/d;->b(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    iget-boolean v0, p0, Lcom/android/datetimepicker/time/d;->i:Z

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/android/datetimepicker/time/d;->u:F

    iget-object v4, p0, Lcom/android/datetimepicker/time/d;->e:Landroid/graphics/Typeface;

    iget-object v5, p0, Lcom/android/datetimepicker/time/d;->g:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/datetimepicker/time/d;->y:[F

    iget-object v7, p0, Lcom/android/datetimepicker/time/d;->x:[F

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/datetimepicker/time/d;->b(Landroid/graphics/Canvas;FLandroid/graphics/Typeface;[Ljava/lang/String;[F[F)V

    :cond_6
    :goto_0
    return-void
.end method

.method public setAnimationRadiusMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/android/datetimepicker/time/d;->z:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/datetimepicker/time/d;->s:Z

    return-void
.end method
