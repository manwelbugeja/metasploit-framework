.class final Landroid/support/v4/app/n;
.super Landroid/support/v4/app/m;
.source ""

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/n$h;,
        Landroid/support/v4/app/n$e;,
        Landroid/support/v4/app/n$f;,
        Landroid/support/v4/app/n$g;,
        Landroid/support/v4/app/n$l;,
        Landroid/support/v4/app/n$k;,
        Landroid/support/v4/app/n$j;,
        Landroid/support/v4/app/n$i;
    }
.end annotation


# static fields
.field static D:Z = false

.field static E:Ljava/lang/reflect/Field;

.field static final F:Landroid/view/animation/Interpolator;

.field static final G:Landroid/view/animation/Interpolator;


# instance fields
.field A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/n$l;",
            ">;"
        }
    .end annotation
.end field

.field B:Landroid/support/v4/app/o;

.field C:Ljava/lang/Runnable;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/n$j;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:I

.field final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "La/b/a/b/g<",
            "Landroid/support/v4/app/m$a;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field l:I

.field m:Landroid/support/v4/app/l;

.field n:Landroid/support/v4/app/j;

.field o:Landroid/support/v4/app/h;

.field p:Landroid/support/v4/app/h;

.field q:Z

.field r:Z

.field s:Z

.field t:Ljava/lang/String;

.field u:Z

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation
.end field

.field y:Landroid/os/Bundle;

.field z:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->F:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/n;->G:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/n;->c:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroid/support/v4/app/n;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    new-instance v0, Landroid/support/v4/app/n$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/n$a;-><init>(Landroid/support/v4/app/n;)V

    iput-object v0, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    return-void
.end method

.method static A0(Landroid/content/Context;FF)Landroid/support/v4/app/n$g;
    .locals 0

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p1, Landroid/support/v4/app/n;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance p1, Landroid/support/v4/app/n$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/n$g;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/n$a;)V

    return-object p1
.end method

.method static C0(Landroid/content/Context;FFFF)Landroid/support/v4/app/n$g;
    .locals 10

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object p1, Landroid/support/v4/app/n;->F:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object p3, Landroid/support/v4/app/n;->G:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p1, Landroid/support/v4/app/n$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/support/v4/app/n$g;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/n$a;)V

    return-object p1
.end method

.method private D0(La/b/a/b/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/b/b<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, La/b/a/b/b;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, La/b/a/b/b;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    iget-boolean v3, v2, Landroid/support/v4/app/h;->j:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/h;->J()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroid/support/v4/app/h;->Q:F

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static E0(Landroid/animation/Animator;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "alpha"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_4

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/n;->E0(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method static F0(Landroid/support/v4/app/n$g;)Z
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    instance-of v1, v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Landroid/view/animation/AnimationSet;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/animation/AlphaAnimation;

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    iget-object p0, p0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    invoke-static {p0}, Landroid/support/v4/app/n;->E0(Landroid/animation/Animator;)Z

    move-result p0

    return p0
.end method

.method private M0(Ljava/lang/String;II)Z
    .locals 8

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h0()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->f0(Z)V

    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/h;->G0()Landroid/support/v4/app/m;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/m;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/n;->N0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/n;->R0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/support/v4/app/n;->r()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroid/support/v4/app/n;->r()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/n;->c0()V

    invoke-direct {p0}, Landroid/support/v4/app/n;->p()V

    return p1
.end method

.method private O0(Ljava/util/ArrayList;Ljava/util/ArrayList;IILa/b/a/b/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "La/b/a/b/b<",
            "Landroid/support/v4/app/h;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/c;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/app/c;->s()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, p1, v4, p4}, Landroid/support/v4/app/c;->q(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    :cond_1
    new-instance v4, Landroid/support/v4/app/n$l;

    invoke-direct {v4, v2, v3}, Landroid/support/v4/app/n$l;-><init>(Landroid/support/v4/app/c;Z)V

    iget-object v6, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v4}, Landroid/support/v4/app/c;->u(Landroid/support/v4/app/h$e;)V

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/c;->l()V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Landroid/support/v4/app/c;->m(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p5}, Landroid/support/v4/app/n;->i(La/b/a/b/b;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private R0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/n;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->s:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v4/app/n;->j0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->s:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/n;->j0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/n;->j0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method public static V0(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    :cond_2
    :goto_0
    return v0
.end method

.method private a0(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/n;->H0(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroid/support/v4/app/n;->b:Z

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h0()Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/n;->b:Z

    throw p1
.end method

.method private a1()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/app/n;->f1(Landroid/view/View;Landroid/support/v4/app/n$g;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    new-instance p1, Landroid/support/v4/app/n$h;

    invoke-direct {p1, p0}, Landroid/support/v4/app/n$h;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/n;->s0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object p1, p1, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/n$e;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/n$e;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d0()V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/h;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Landroid/support/v4/app/h;->E()I

    move-result v5

    invoke-virtual {v4}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v4/app/h;->g1(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static e1(Landroid/support/v4/app/o;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/h;->B:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/o;->a()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/n;->e1(Landroid/support/v4/app/o;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private f0(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/n;->q()V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/n;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/n;->k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Landroid/support/v4/app/n;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroid/support/v4/app/n;->b:Z

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static f1(Landroid/view/View;Landroid/support/v4/app/n$g;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, La/b/a/c/b;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/support/v4/app/n;->F0(Landroid/support/v4/app/n$g;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic g(Landroid/support/v4/app/n;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/n;->a1()V

    return-void
.end method

.method static synthetic h(Landroid/support/v4/app/n;Landroid/support/v4/app/c;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->s(Landroid/support/v4/app/c;ZZZ)V

    return-void
.end method

.method private i(La/b/a/b/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/b/a/b/b<",
            "Landroid/support/v4/app/h;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/app/n;->l:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/h;

    iget v2, v9, Landroid/support/v4/app/h;->a:I

    if-ge v2, v0, :cond_1

    invoke-virtual {v9}, Landroid/support/v4/app/h;->u()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/h;->v()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    iget-object v2, v9, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/h;->y:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/h;->O:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v9}, La/b/a/b/b;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static i0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->g(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->m(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->g(I)V

    invoke-virtual {v0}, Landroid/support/v4/app/c;->l()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private i1(Ljava/lang/RuntimeException;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, La/b/a/b/e;

    invoke-direct {v0, v1}, La/b/a/b/e;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v2, v4}, Landroid/support/v4/app/l;->p(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2, v0}, Landroid/support/v4/app/n;->b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    throw p1
.end method

.method private j0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    iget-boolean v11, v0, Landroid/support/v4/app/c;->s:Z

    iget-object v0, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v0, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    iget-object v1, v6, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v4/app/n;->v0()Landroid/support/v4/app/h;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v9

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v2, v10, :cond_4

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/c;->n(Ljava/util/ArrayList;Landroid/support/v4/app/h;)Landroid/support/v4/app/h;

    move-result-object v0

    goto :goto_2

    :cond_1
    iget-object v4, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/c;->v(Ljava/util/ArrayList;Landroid/support/v4/app/h;)Landroid/support/v4/app/h;

    move-result-object v0

    :goto_2
    if-nez v12, :cond_3

    iget-boolean v3, v3, Landroid/support/v4/app/c;->i:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v12, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v6, Landroid/support/v4/app/n;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_5

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/q;->E(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/n;->i0(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_6

    new-instance v14, La/b/a/b/b;

    invoke-direct {v14}, La/b/a/b/b;-><init>()V

    invoke-direct {p0, v14}, Landroid/support/v4/app/n;->i(La/b/a/b/b;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/n;->O0(Ljava/util/ArrayList;Ljava/util/ArrayList;IILa/b/a/b/b;)I

    move-result v0

    invoke-direct {p0, v14}, Landroid/support/v4/app/n;->D0(La/b/a/b/b;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v10

    :goto_5
    if-eq v4, v9, :cond_7

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/q;->E(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, v6, Landroid/support/v4/app/n;->l:I

    invoke-virtual {p0, v0, v13}, Landroid/support/v4/app/n;->H0(IZ)V

    :cond_7
    :goto_6
    if-ge v9, v10, :cond_9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v0, Landroid/support/v4/app/c;->l:I

    if-ltz v1, :cond_8

    invoke-virtual {p0, v1}, Landroid/support/v4/app/n;->q0(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v4/app/c;->l:I

    :cond_8
    invoke-virtual {v0}, Landroid/support/v4/app/c;->t()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {p0}, Landroid/support/v4/app/n;->S0()V

    :cond_a
    return-void
.end method

.method public static j1(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method private k0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/n$l;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    invoke-static {v3}, Landroid/support/v4/app/n$l;->c(Landroid/support/v4/app/n$l;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/support/v4/app/n$l;->d(Landroid/support/v4/app/n$l;)Landroid/support/v4/app/c;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    invoke-virtual {v3}, Landroid/support/v4/app/n$l;->e()V

    goto :goto_3

    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/n$l;->g()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    invoke-static {v3}, Landroid/support/v4/app/n$l;->d(Landroid/support/v4/app/n$l;)Landroid/support/v4/app/c;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/support/v4/app/c;->q(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_3

    invoke-static {v3}, Landroid/support/v4/app/n$l;->c(Landroid/support/v4/app/n$l;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/support/v4/app/n$l;->d(Landroid/support/v4/app/n$l;)Landroid/support/v4/app/c;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/support/v4/app/n$l;->f()V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private m(Landroid/support/v4/app/h;Landroid/support/v4/app/n$g;I)V
    .locals 3

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/h;->r1(I)V

    iget-object p3, p2, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    if-eqz p3, :cond_0

    iget-object v1, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/h;->g1(Landroid/view/View;)V

    invoke-static {p3}, Landroid/support/v4/app/n;->s0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/n$b;

    invoke-direct {v2, p0, v1, p1}, Landroid/support/v4/app/n$b;-><init>(Landroid/support/v4/app/n;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/h;)V

    invoke-virtual {p3, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v0, p2}, Landroid/support/v4/app/n;->c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V

    iget-object p1, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p3, p2, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    invoke-virtual {p1, p3}, Landroid/support/v4/app/h;->h1(Landroid/animation/Animator;)V

    iget-object v1, p1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_1
    new-instance v2, Landroid/support/v4/app/n$c;

    invoke-direct {v2, p0, v1, v0, p1}, Landroid/support/v4/app/n$c;-><init>(Landroid/support/v4/app/n;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/h;)V

    invoke-virtual {p3, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/app/n;->c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V

    invoke-virtual {p3}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method private o0(Landroid/support/v4/app/h;)Landroid/support/v4/app/h;
    .locals 4

    iget-object v0, p1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    iget-object v3, v1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_1

    iget-object v3, v1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private p()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private p0()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n;->A:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/n$l;

    invoke-virtual {v0}, Landroid/support/v4/app/n$l;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    iget-object v0, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private r0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/n$j;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/n$j;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->k()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/app/n;->C:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v2

    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private s(Landroid/support/v4/app/c;ZZZ)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/support/v4/app/c;->m(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/c;->l()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/q;->E(Landroid/support/v4/app/n;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Landroid/support/v4/app/n;->l:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/n;->H0(IZ)V

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/h;->O:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/h;->w:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/c;->p(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/h;->Q:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    iget-object v4, v1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    iput v3, v1, Landroid/support/v4/app/h;->Q:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/v4/app/h;->Q:F

    iput-boolean p3, v1, Landroid/support/v4/app/h;->O:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private static s0(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 3

    const-string v0, "FragmentManager"

    :try_start_0
    sget-object v1, Landroid/support/v4/app/n;->E:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const-class v1, Landroid/view/animation/Animation;

    const-string v2, "mListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/n;->E:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    sget-object v1, Landroid/support/v4/app/n;->E:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Cannot access Animation\'s mListener field"

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "No field with the name mListener is found in Animation class"

    :goto_0
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h0()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iput-object v0, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    iput-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method B0(Landroid/support/v4/app/h;)V
    .locals 3

    iget v0, p1, Landroid/support/v4/app/h;->d:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/h;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iget-object v1, p1, Landroid/support/v4/app/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/h;->K()V

    return-void
.end method

.method public C()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/h;->R0()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public D(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/h;->S0(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method E(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->E(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->a(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method F(Landroid/support/v4/app/h;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->F(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->b(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method G(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->G(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->c(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method G0(Landroid/support/v4/app/h;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/app/n;->l:I

    iget-boolean v1, p1, Landroid/support/v4/app/h;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/h;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/h;->v()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/h;->w()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Landroid/support/v4/app/n;->o0(Landroid/support/v4/app/h;)Landroid/support/v4/app/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v1, p1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v4, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    iget-boolean v0, p1, Landroid/support/v4/app/h;->O:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/support/v4/app/h;->Q:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    iget-object v4, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iput v1, p1, Landroid/support/v4/app/h;->Q:F

    iput-boolean v3, p1, Landroid/support/v4/app/h;->O:Z

    invoke-virtual {p1}, Landroid/support/v4/app/h;->v()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/h;->w()I

    move-result v1

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/n;->y0(Landroid/support/v4/app/h;IZI)Landroid/support/v4/app/n$g;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/n;->c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V

    iget-object v1, v0, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    if-eqz v1, :cond_5

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    iget-object v2, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_6
    :goto_1
    iget-boolean v0, p1, Landroid/support/v4/app/h;->P:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Landroid/support/v4/app/n;->t(Landroid/support/v4/app/h;)V

    :cond_7
    return-void
.end method

.method H(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->H(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->d(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method H0(IZ)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v4/app/n;->l:I

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroid/support/v4/app/n;->l:I

    iget-object p1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/n;->G0(Landroid/support/v4/app/h;)V

    iget-object v2, v2, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/support/v4/app/t;->i()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_7

    iget-object v2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_6

    iget-boolean v3, v2, Landroid/support/v4/app/h;->k:Z

    if-nez v3, :cond_5

    iget-boolean v3, v2, Landroid/support/v4/app/h;->z:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, v2, Landroid/support/v4/app/h;->O:Z

    if-nez v3, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v4/app/n;->G0(Landroid/support/v4/app/h;)V

    iget-object v2, v2, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/support/v4/app/t;->i()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h1()V

    :cond_8
    iget-boolean p1, p0, Landroid/support/v4/app/n;->q:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    if-eqz p1, :cond_9

    iget v0, p0, Landroid/support/v4/app/n;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    invoke-virtual {p1}, Landroid/support/v4/app/l;->v()V

    iput-boolean p2, p0, Landroid/support/v4/app/n;->q:Z

    :cond_9
    return-void
.end method

.method I(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->I(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->e(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method I0(Landroid/support/v4/app/h;)V
    .locals 6

    iget v2, p0, Landroid/support/v4/app/n;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    return-void
.end method

.method J(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->J(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->f(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method J0(Landroid/support/v4/app/h;IIIZ)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v7, Landroid/support/v4/app/h;->j:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v7, Landroid/support/v4/app/h;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v8, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-boolean v1, v7, Landroid/support/v4/app/h;->k:Z

    if-eqz v1, :cond_4

    iget v1, v7, Landroid/support/v4/app/h;->a:I

    if-le v0, v1, :cond_4

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->R()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, v7, Landroid/support/v4/app/h;->a:I

    :cond_4
    :goto_2
    iget-boolean v1, v7, Landroid/support/v4/app/h;->I:Z

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eqz v1, :cond_5

    iget v1, v7, Landroid/support/v4/app/h;->a:I

    if-ge v1, v9, :cond_5

    if-le v0, v10, :cond_5

    const/4 v11, 0x3

    goto :goto_3

    :cond_5
    move v11, v0

    :goto_3
    iget v0, v7, Landroid/support/v4/app/h;->a:I

    const/4 v12, 0x2

    const-string v13, "FragmentManager"

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v0, v11, :cond_24

    iget-boolean v0, v7, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Landroid/support/v4/app/h;->m:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-virtual {v7, v14}, Landroid/support/v4/app/h;->g1(Landroid/view/View;)V

    invoke-virtual {v7, v14}, Landroid/support/v4/app/h;->h1(Landroid/animation/Animator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->E()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    :cond_8
    iget v0, v7, Landroid/support/v4/app/h;->a:I

    if-eqz v0, :cond_a

    if-eq v0, v8, :cond_14

    if-eq v0, v12, :cond_20

    if-eq v0, v10, :cond_21

    if-eq v0, v9, :cond_9

    goto/16 :goto_13

    :cond_9
    :goto_4
    const/4 v0, 0x4

    goto/16 :goto_e

    :cond_a
    if-lez v11, :cond_14

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_d

    iget-object v1, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v6, v0, v1}, Landroid/support/v4/app/n;->t0(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v0

    iput-object v0, v7, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-eqz v0, :cond_c

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroid/support/v4/app/h;->i:I

    :cond_c
    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroid/support/v4/app/h;->J:Z

    if-nez v0, :cond_d

    iput-boolean v8, v7, Landroid/support/v4/app/h;->I:Z

    if-le v11, v10, :cond_d

    const/4 v11, 0x3

    :cond_d
    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iput-object v0, v7, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iget-object v1, v6, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    iput-object v1, v7, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    if-eqz v1, :cond_e

    iget-object v0, v1, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Landroid/support/v4/app/l;->j()Landroid/support/v4/app/n;

    move-result-object v0

    :goto_5
    iput-object v0, v7, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    iget-object v0, v7, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    const-string v5, "Fragment "

    if-eqz v0, :cond_10

    iget-object v1, v6, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    iget v0, v0, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-ne v0, v1, :cond_f

    iget v0, v1, Landroid/support/v4/app/h;->a:I

    if-ge v0, v8, :cond_10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v9, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    goto :goto_6

    :cond_f
    move-object v9, v5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, v5

    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v15}, Landroid/support/v4/app/n;->K(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    iput-boolean v15, v7, Landroid/support/v4/app/h;->E:Z

    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/app/h;->d0(Landroid/content/Context;)V

    iget-boolean v0, v7, Landroid/support/v4/app/h;->E:Z

    if-eqz v0, :cond_13

    iget-object v0, v7, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    if-nez v0, :cond_11

    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/l;->o(Landroid/support/v4/app/h;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v0, v7}, Landroid/support/v4/app/h;->e0(Landroid/support/v4/app/h;)V

    :goto_7
    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v15}, Landroid/support/v4/app/n;->F(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    iget-boolean v0, v7, Landroid/support/v4/app/h;->S:Z

    if-nez v0, :cond_12

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v15}, Landroid/support/v4/app/n;->L(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/h;->K0(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v15}, Landroid/support/v4/app/n;->G(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    goto :goto_8

    :cond_12
    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/h;->e1(Landroid/os/Bundle;)V

    iput v8, v7, Landroid/support/v4/app/h;->a:I

    :goto_8
    iput-boolean v15, v7, Landroid/support/v4/app/h;->B:Z

    goto :goto_9

    :cond_13
    new-instance v0, Landroid/support/v4/app/k0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/k0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/n;->g0(Landroid/support/v4/app/h;)V

    if-le v11, v8, :cond_20

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-boolean v0, v7, Landroid/support/v4/app/h;->l:Z

    if-nez v0, :cond_1e

    iget v0, v7, Landroid/support/v4/app/h;->w:I

    if-eqz v0, :cond_18

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    iget-object v1, v6, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/j;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_19

    iget-boolean v1, v7, Landroid/support/v4/app/h;->n:Z

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->z()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Landroid/support/v4/app/h;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v0, "unknown"

    :goto_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/support/v4/app/h;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v1}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_18
    move-object v0, v14

    :cond_19
    :goto_b
    iput-object v0, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroid/support/v4/app/h;->Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v0, v2}, Landroid/support/v4/app/h;->M0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v1, :cond_1d

    iput-object v1, v7, Landroid/support/v4/app/h;->H:Landroid/view/View;

    invoke-virtual {v1, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_1a

    iget-object v1, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1a
    iget-boolean v0, v7, Landroid/support/v4/app/h;->y:Z

    if-eqz v0, :cond_1b

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v1, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroid/support/v4/app/h;->E0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v1, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v15}, Landroid/support/v4/app/n;->Q(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v8, 0x0

    :goto_c
    iput-boolean v8, v7, Landroid/support/v4/app/h;->O:Z

    goto :goto_d

    :cond_1d
    iput-object v14, v7, Landroid/support/v4/app/h;->H:Landroid/view/View;

    :cond_1e
    :goto_d
    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/h;->H0(Landroid/os/Bundle;)V

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v15}, Landroid/support/v4/app/n;->E(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroid/support/v4/app/h;->f1(Landroid/os/Bundle;)V

    :cond_1f
    iput-object v14, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    :cond_20
    if-le v11, v12, :cond_21

    iput v10, v7, Landroid/support/v4/app/h;->a:I

    :cond_21
    if-le v11, v10, :cond_9

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->b1()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->O(Landroid/support/v4/app/h;Z)V

    goto/16 :goto_4

    :goto_e
    if-le v11, v0, :cond_39

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->Z0()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->M(Landroid/support/v4/app/h;Z)V

    iput-object v14, v7, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    iput-object v14, v7, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    goto/16 :goto_13

    :cond_24
    if-le v0, v11, :cond_39

    if-eq v0, v8, :cond_31

    if-eq v0, v12, :cond_2b

    if-eq v0, v10, :cond_29

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    const/4 v1, 0x5

    if-eq v0, v1, :cond_25

    goto/16 :goto_13

    :cond_25
    if-ge v11, v1, :cond_27

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->V0()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->J(Landroid/support/v4/app/h;Z)V

    :cond_27
    const/4 v0, 0x4

    if-ge v11, v0, :cond_29

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->c1()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->P(Landroid/support/v4/app/h;Z)V

    :cond_29
    if-ge v11, v10, :cond_2b

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STOPPED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->Y0()V

    :cond_2b
    if-ge v11, v12, :cond_31

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_2d

    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/l;->t(Landroid/support/v4/app/h;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v7, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    if-nez v0, :cond_2d

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/n;->Y0(Landroid/support/v4/app/h;)V

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->O0()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->R(Landroid/support/v4/app/h;Z)V

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_30

    iget-object v1, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget v0, v6, Landroid/support/v4/app/n;->l:I

    const/4 v1, 0x0

    if-lez v0, :cond_2e

    iget-boolean v0, v6, Landroid/support/v4/app/n;->s:Z

    if-nez v0, :cond_2e

    iget-object v0, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    iget v0, v7, Landroid/support/v4/app/h;->Q:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2e

    move/from16 v0, p3

    move/from16 v2, p4

    invoke-virtual {v6, v7, v0, v15, v2}, Landroid/support/v4/app/n;->y0(Landroid/support/v4/app/h;IZI)Landroid/support/v4/app/n$g;

    move-result-object v0

    goto :goto_f

    :cond_2e
    move-object v0, v14

    :goto_f
    iput v1, v7, Landroid/support/v4/app/h;->Q:F

    if-eqz v0, :cond_2f

    invoke-direct {v6, v7, v0, v11}, Landroid/support/v4/app/n;->m(Landroid/support/v4/app/h;Landroid/support/v4/app/n$g;I)V

    :cond_2f
    iget-object v0, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_30
    iput-object v14, v7, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iput-object v14, v7, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iput-object v14, v7, Landroid/support/v4/app/h;->H:Landroid/view/View;

    iput-boolean v15, v7, Landroid/support/v4/app/h;->m:Z

    :cond_31
    if-ge v11, v8, :cond_39

    iget-boolean v0, v6, Landroid/support/v4/app/n;->s:Z

    if-eqz v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v14}, Landroid/support/v4/app/h;->g1(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_10

    :cond_32
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v7, v14}, Landroid/support/v4/app/h;->h1(Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_33
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_34

    goto :goto_12

    :cond_34
    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-boolean v0, v7, Landroid/support/v4/app/h;->B:Z

    if-nez v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->N0()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->H(Landroid/support/v4/app/h;Z)V

    goto :goto_11

    :cond_36
    iput v15, v7, Landroid/support/v4/app/h;->a:I

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/h;->P0()V

    invoke-virtual {v6, v7, v15}, Landroid/support/v4/app/n;->I(Landroid/support/v4/app/h;Z)V

    if-nez p5, :cond_39

    iget-boolean v0, v7, Landroid/support/v4/app/h;->B:Z

    if-nez v0, :cond_37

    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/n;->B0(Landroid/support/v4/app/h;)V

    goto :goto_13

    :cond_37
    iput-object v14, v7, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iput-object v14, v7, Landroid/support/v4/app/h;->u:Landroid/support/v4/app/h;

    iput-object v14, v7, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    goto :goto_13

    :cond_38
    :goto_12
    invoke-virtual {v7, v11}, Landroid/support/v4/app/h;->r1(I)V

    goto :goto_14

    :cond_39
    :goto_13
    move v8, v11

    :goto_14
    iget v0, v7, Landroid/support/v4/app/h;->a:I

    if-eq v0, v8, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroid/support/v4/app/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v7, Landroid/support/v4/app/h;->a:I

    :cond_3a
    return-void
.end method

.method K(Landroid/support/v4/app/h;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->K(Landroid/support/v4/app/h;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->g(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public K0()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/h;->Z()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method L(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->L(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->h(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public L0(Landroid/support/v4/app/h;)V
    .locals 7

    iget-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/n;->u:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->I:Z

    iget v3, p0, Landroid/support/v4/app/n;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    :cond_1
    return-void
.end method

.method M(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->M(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->i(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method N(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/n;->N(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p3, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v4/app/m$a;->j(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method N0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/c;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v4, p5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-gez p3, :cond_1

    return v2

    :cond_1
    iget-object p4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    goto :goto_4

    :cond_4
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_7

    iget-object v4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c;

    if-eqz p3, :cond_5

    invoke-virtual {v4}, Landroid/support/v4/app/c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p4, :cond_6

    iget v4, v4, Landroid/support/v4/app/c;->l:I

    if-ne p4, v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez v1, :cond_8

    return v2

    :cond_8
    and-int/2addr p5, v3

    if-eqz p5, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_b

    iget-object p5, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/c;

    if-eqz p3, :cond_a

    invoke-virtual {p5}, Landroid/support/v4/app/c;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Landroid/support/v4/app/c;->l:I

    if-ne p4, p5, :cond_b

    goto :goto_3

    :cond_b
    move p3, v1

    :goto_4
    iget-object p4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v3

    if-ne p3, p4, :cond_c

    return v2

    :cond_c
    iget-object p4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    sub-int/2addr p4, v3

    :goto_5
    if-le p4, p3, :cond_d

    iget-object p5, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_5

    :cond_d
    :goto_6
    return v3
.end method

.method O(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->O(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->k(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method P(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->P(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->l(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public P0(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/h;)V
    .locals 1

    iget v0, p3, Landroid/support/v4/app/h;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not currently in the FragmentManager"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    const/4 p1, 0x0

    throw p1
.end method

.method Q(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/support/v4/app/n;->Q(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p4, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/v4/app/m$a;->m(Landroid/support/v4/app/m;Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public Q0(Landroid/support/v4/app/h;)V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/support/v4/app/h;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/h;->R()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/support/v4/app/h;->z:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p1, Landroid/support/v4/app/h;->C:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Landroid/support/v4/app/n;->q:Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    iput-boolean v1, p1, Landroid/support/v4/app/h;->k:Z

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method R(Landroid/support/v4/app/h;Z)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/app/n;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/app/n;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/n;->R(Landroid/support/v4/app/h;Z)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/b/g;

    if-eqz p2, :cond_2

    iget-object v2, v1, La/b/a/b/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    iget-object v1, v1, La/b/a/b/g;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v4/app/m$a;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/app/m$a;->n(Landroid/support/v4/app/m;Landroid/support/v4/app/h;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public S(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/support/v4/app/h;->T0(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method S0()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/m$b;

    invoke-interface {v1}, Landroid/support/v4/app/m$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/h;->U0(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method T0(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/app/o;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_8

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/h;

    sget-boolean v7, Landroid/support/v4/app/n;->D:Z

    if-eqz v7, :cond_3

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreAllState: re-attaching retained "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v7, 0x0

    :goto_2
    iget-object v8, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v9, v8

    if-ge v7, v9, :cond_4

    aget-object v9, v8, v7

    iget v9, v9, Landroid/support/v4/app/FragmentState;->b:I

    iget v10, v6, Landroid/support/v4/app/h;->d:I

    if-eq v9, v10, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    array-length v9, v8

    if-eq v7, v9, :cond_6

    aget-object v7, v8, v7

    iput-object v6, v7, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    iput-object v0, v6, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    iput v1, v6, Landroid/support/v4/app/h;->p:I

    iput-boolean v1, v6, Landroid/support/v4/app/h;->m:Z

    iput-boolean v1, v6, Landroid/support/v4/app/h;->j:Z

    iput-object v0, v6, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-eqz v8, :cond_5

    iget-object v9, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v9}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v8, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v9, "android:view_state"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, v6, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find active fragment with index "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/support/v4/app/h;->d:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_7
    move-object v3, v0

    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v4, v4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_3
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v5, v4

    if-ge v2, v5, :cond_c

    aget-object v4, v4, v2

    if-eqz v4, :cond_b

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/o;

    goto :goto_4

    :cond_9
    move-object v5, v0

    :goto_4
    iget-object v6, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iget-object v7, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    iget-object v8, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/h;Landroid/support/v4/app/o;)Landroid/support/v4/app/h;

    move-result-object v5

    sget-boolean v6, Landroid/support/v4/app/n;->D:Z

    if-eqz v6, :cond_a

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreAllState: active #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    iget v7, v5, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v0, v4, Landroid/support/v4/app/FragmentState;->l:Landroid/support/v4/app/h;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/support/v4/app/o;->b()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_f

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/h;

    iget v5, v4, Landroid/support/v4/app/h;->h:I

    if-ltz v5, :cond_e

    iget-object v6, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/h;

    iput-object v5, v4, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-nez v5, :cond_e

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/support/v4/app/h;->h:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_f
    iget-object p2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    if-eqz p2, :cond_13

    const/4 p2, 0x0

    :goto_7
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    array-length v3, v2

    if-ge p2, v3, :cond_13

    iget-object v3, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_12

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/h;->j:Z

    sget-boolean v3, Landroid/support/v4/app/n;->D:Z

    if-eqz v3, :cond_10

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v3, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already added!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for index #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v4/app/FragmentManagerState;->b:[I

    aget p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_13
    iget-object p2, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    if-eqz p2, :cond_16

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    const/4 p2, 0x0

    :goto_8
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    array-length v2, v0

    if-ge p2, v2, :cond_17

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/n;)Landroid/support/v4/app/c;

    move-result-object v0

    sget-boolean v2, Landroid/support/v4/app/n;->D:Z

    if-eqz v2, :cond_14

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: back stack #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v4/app/c;->l:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, La/b/a/b/e;

    const-string v3, "FragmentManager"

    invoke-direct {v2, v3}, La/b/a/b/e;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/c;->k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_14
    iget-object v2, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Landroid/support/v4/app/c;->l:I

    if-ltz v2, :cond_15

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/app/n;->b1(ILandroid/support/v4/app/c;)V

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_16
    iput-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    :cond_17
    iget p2, p1, Landroid/support/v4/app/FragmentManagerState;->d:I

    if-ltz p2, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/app/h;

    iput-object p2, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    :cond_18
    iget p1, p1, Landroid/support/v4/app/FragmentManagerState;->e:I

    iput p1, p0, Landroid/support/v4/app/n;->c:I

    return-void
.end method

.method public U()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method U0()Landroid/support/v4/app/o;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    invoke-static {v0}, Landroid/support/v4/app/n;->e1(Landroid/support/v4/app/o;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    return-object v0
.end method

.method public V(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/h;->W0(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public W(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/support/v4/app/h;->X0(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method W0()Landroid/os/Parcelable;
    .locals 13

    invoke-direct {p0}, Landroid/support/v4/app/n;->p0()V

    invoke-direct {p0}, Landroid/support/v4/app/n;->d0()V

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h0()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    iget-object v2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [Landroid/support/v4/app/FragmentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, " has cleared index: "

    const-string v8, "Failure saving state: active "

    const-string v9, ": "

    const-string v10, "FragmentManager"

    if-ge v5, v2, :cond_8

    iget-object v11, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/app/h;

    if-eqz v11, :cond_7

    iget v6, v11, Landroid/support/v4/app/h;->d:I

    if-ltz v6, :cond_6

    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v11}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/h;)V

    aput-object v6, v3, v5

    iget v7, v11, Landroid/support/v4/app/h;->a:I

    if-lez v7, :cond_3

    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    if-nez v7, :cond_3

    invoke-virtual {p0, v11}, Landroid/support/v4/app/n;->X0(Landroid/support/v4/app/h;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v8, v11, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-eqz v8, :cond_4

    iget v8, v8, Landroid/support/v4/app/h;->d:I

    if-ltz v8, :cond_2

    if-nez v7, :cond_1

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    :cond_1
    iget-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    iget-object v8, v11, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    const-string v12, "android:target_state"

    invoke-virtual {p0, v7, v12, v8}, Landroid/support/v4/app/n;->P0(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/h;)V

    iget v7, v11, Landroid/support/v4/app/h;->i:I

    if-eqz v7, :cond_4

    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    invoke-virtual {v8, v12, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure saving state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has target not in fragment manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v11, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_3
    iget-object v7, v11, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    :cond_4
    :goto_1
    sget-boolean v7, Landroid/support/v4/app/n;->D:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved state of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->k:Landroid/os/Bundle;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_a

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_9

    const-string v0, "saveAllState: no fragments!"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v1

    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    new-array v2, v0, [I

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_e

    iget-object v6, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/h;

    iget v6, v6, Landroid/support/v4/app/h;->d:I

    aput v6, v2, v5

    aget v6, v2, v5

    if-ltz v6, :cond_c

    sget-boolean v6, Landroid/support/v4/app/n;->D:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment #"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v5

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_d
    move-object v2, v1

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-array v1, v0, [Landroid/support/v4/app/BackStackState;

    :goto_4
    if-ge v4, v0, :cond_10

    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/c;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/c;)V

    aput-object v5, v1, v4

    sget-boolean v5, Landroid/support/v4/app/n;->D:Z

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_10
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->b:[I

    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->c:[Landroid/support/v4/app/BackStackState;

    iget-object v1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    if-eqz v1, :cond_11

    iget v1, v1, Landroid/support/v4/app/h;->d:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->d:I

    :cond_11
    iget v1, p0, Landroid/support/v4/app/n;->c:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->e:I

    invoke-virtual {p0}, Landroid/support/v4/app/n;->Z0()V

    return-object v0

    :cond_12
    :goto_5
    return-object v1
.end method

.method public X()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method X0(Landroid/support/v4/app/h;)Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->a1(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/app/n;->N(Landroid/support/v4/app/h;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    iput-object v1, p0, Landroid/support/v4/app/n;->y:Landroid/os/Bundle;

    move-object v1, v0

    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/n;->Y0(Landroid/support/v4/app/h;)V

    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :cond_3
    iget-object v0, p1, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    iget-boolean v0, p1, Landroid/support/v4/app/h;->J:Z

    if-nez v0, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    :cond_5
    iget-boolean p1, p1, Landroid/support/v4/app/h;->J:Z

    const-string v0, "android:user_visible_hint"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v1
.end method

.method public Y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method Y0(Landroid/support/v4/app/h;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v4/app/h;->H:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/h;->H:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/h;->c:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/n;->z:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public Z()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method Z0()V
    .locals 8

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/h;

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Landroid/support/v4/app/h;->A:Z

    if-eqz v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Landroid/support/v4/app/h;->g:Landroid/support/v4/app/h;

    if-eqz v6, :cond_1

    iget v6, v6, Landroid/support/v4/app/h;->d:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    iput v6, v5, Landroid/support/v4/app/h;->h:I

    sget-boolean v6, Landroid/support/v4/app/n;->D:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retainNonConfig: keeping retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v5, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/n;->Z0()V

    iget-object v5, v5, Landroid/support/v4/app/h;->s:Landroid/support/v4/app/n;

    iget-object v5, v5, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    goto :goto_2

    :cond_3
    iget-object v5, v5, Landroid/support/v4/app/h;->t:Landroid/support/v4/app/o;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    move-object v3, v1

    move-object v4, v3

    :cond_7
    if-nez v3, :cond_8

    if-nez v4, :cond_8

    iput-object v1, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    goto :goto_4

    :cond_8
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0, v3, v4}, Landroid/support/v4/app/o;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/n;->B:Landroid/support/v4/app/o;

    :goto_4
    return-void
.end method

.method public a()Landroid/support/v4/app/p;
    .locals 1

    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p0}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/n;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/h;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/h;->d(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/h;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/h;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/h;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/h;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/c;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/c;->j(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_5
    iget-object p2, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_7

    iget-object p4, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/n$j;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object p2, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz p2, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/n;->l:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/n;->r:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/n;->s:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean p2, p0, Landroid/support/v4/app/n;->q:Z

    if-eqz p2, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/n;->q:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    iget-object p2, p0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/support/v4/app/n;->t:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method public b1(ILandroid/support/v4/app/c;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Landroid/support/v4/app/n;->D:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c0()V
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/app/n;->u:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/h;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/support/v4/app/h;->K:Landroid/support/v4/app/t;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v4/app/t;->i()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iput-boolean v0, p0, Landroid/support/v4/app/n;->u:Z

    invoke-virtual {p0}, Landroid/support/v4/app/n;->h1()V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    return v0
.end method

.method public d1(Landroid/support/v4/app/h;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    return-void
.end method

.method public e(II)V
    .locals 2

    if-ltz p1, :cond_0

    new-instance v0, Landroid/support/v4/app/n$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/n$k;-><init>(Landroid/support/v4/app/n;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/n;->e0(Landroid/support/v4/app/n$j;Z)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e0(Landroid/support/v4/app/n$j;Z)V
    .locals 1

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/support/v4/app/n;->q()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/n;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/n;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/support/v4/app/n;->a1()V

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()Z
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/n;->q()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/n;->M0(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method g0(Landroid/support/v4/app/h;)V
    .locals 3

    iget-boolean v0, p1, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/h;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->Q0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/h;->M0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_1

    iput-object v0, p1, Landroid/support/v4/app/h;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/h;->E0(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/n;->Q(Landroid/support/v4/app/h;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_1
    iput-object v2, p1, Landroid/support/v4/app/h;->H:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method public g1(Landroid/support/v4/app/h;)V
    .locals 2

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    iget-boolean v0, p1, Landroid/support/v4/app/h;->P:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->P:Z

    :cond_1
    return-void
.end method

.method public h0()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->f0(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/n;->r0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->b:Z

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/n;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/n;->w:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/n;->R0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/support/v4/app/n;->r()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/n;->r()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/n;->c0()V

    invoke-direct {p0}, Landroid/support/v4/app/n;->p()V

    return v1
.end method

.method h1()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/n;->L0(Landroid/support/v4/app/h;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method j(Landroid/support/v4/app/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public k(Landroid/support/v4/app/h;Z)V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/n;->z0(Landroid/support/v4/app/h;)V

    iget-boolean v0, p1, Landroid/support/v4/app/h;->z:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/h;->k:Z

    iget-object v2, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroid/support/v4/app/h;->P:Z

    :cond_1
    iget-boolean v1, p1, Landroid/support/v4/app/h;->C:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/h;->D:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroid/support/v4/app/n;->q:Z

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/support/v4/app/n;->I0(Landroid/support/v4/app/h;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return-void
.end method

.method public l(Landroid/support/v4/app/c;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/n;->D:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/support/v4/app/n;->D:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public l0(I)Landroid/support/v4/app/h;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/h;->v:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/support/v4/app/h;->v:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public m0(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public n(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/h;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iput-object p2, p0, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    iput-object p3, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n0(Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/h;->f(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(Landroid/support/v4/app/h;)V
    .locals 3

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->z:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->z:Z

    iget-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    iget-boolean v1, p1, Landroid/support/v4/app/h;->C:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Landroid/support/v4/app/h;->D:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Landroid/support/v4/app/n;->q:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 12

    move-object v6, p0

    move-object v0, p3

    move-object/from16 v1, p4

    const-string v2, "fragment"

    move-object v3, p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const-string v2, "class"

    invoke-interface {v1, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/support/v4/app/n$i;->a:[I

    invoke-virtual {p3, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    move-object v7, v2

    const/4 v2, 0x1

    const/4 v8, -0x1

    invoke-virtual {v4, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v4}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/support/v4/app/h;->X(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_3
    if-ne v5, v8, :cond_5

    if-ne v9, v8, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-eq v9, v8, :cond_6

    invoke-virtual {p0, v9}, Landroid/support/v4/app/n;->l0(I)Landroid/support/v4/app/h;

    move-result-object v4

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_7

    if-eqz v10, :cond_7

    invoke-virtual {p0, v10}, Landroid/support/v4/app/n;->m0(Ljava/lang/String;)Landroid/support/v4/app/h;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    if-eq v5, v8, :cond_8

    invoke-virtual {p0, v5}, Landroid/support/v4/app/n;->l0(I)Landroid/support/v4/app/h;

    move-result-object v4

    :cond_8
    sget-boolean v8, Landroid/support/v4/app/n;->D:Z

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreateView: id=0x"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " fname="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " existing="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "FragmentManager"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez v4, :cond_b

    iget-object v4, v6, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/j;

    invoke-virtual {v4, p3, v7, v3}, Landroid/support/v4/app/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/h;

    move-result-object v4

    iput-boolean v2, v4, Landroid/support/v4/app/h;->l:Z

    if-eqz v9, :cond_a

    move v0, v9

    goto :goto_2

    :cond_a
    move v0, v5

    :goto_2
    iput v0, v4, Landroid/support/v4/app/h;->v:I

    iput v5, v4, Landroid/support/v4/app/h;->w:I

    iput-object v10, v4, Landroid/support/v4/app/h;->x:Ljava/lang/String;

    iput-boolean v2, v4, Landroid/support/v4/app/h;->m:Z

    iput-object v6, v4, Landroid/support/v4/app/h;->q:Landroid/support/v4/app/n;

    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iput-object v0, v4, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroid/support/v4/app/h;->s0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {p0, v4, v2}, Landroid/support/v4/app/n;->k(Landroid/support/v4/app/h;Z)V

    goto :goto_3

    :cond_b
    iget-boolean v0, v4, Landroid/support/v4/app/h;->m:Z

    if-nez v0, :cond_11

    iput-boolean v2, v4, Landroid/support/v4/app/h;->m:Z

    iget-object v0, v6, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    iput-object v0, v4, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    iget-boolean v3, v4, Landroid/support/v4/app/h;->B:Z

    if-nez v3, :cond_c

    invoke-virtual {v0}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v4, Landroid/support/v4/app/h;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v1, v3}, Landroid/support/v4/app/h;->s0(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_c
    :goto_3
    move-object v8, v4

    iget v0, v6, Landroid/support/v4/app/n;->l:I

    if-ge v0, v2, :cond_d

    iget-boolean v0, v8, Landroid/support/v4/app/h;->l:Z

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v8}, Landroid/support/v4/app/n;->I0(Landroid/support/v4/app/h;)V

    :goto_4
    iget-object v0, v8, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_10

    if-eqz v9, :cond_e

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    :cond_e
    iget-object v0, v8, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, v8, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_f
    iget-object v0, v8, Landroid/support/v4/app/h;->G:Landroid/view/View;

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/n;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public q0(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/n;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method t(Landroid/support/v4/app/h;)V
    .locals 7

    iget-object v0, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/app/h;->v()I

    move-result v0

    iget-boolean v3, p1, Landroid/support/v4/app/h;->y:Z

    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/support/v4/app/h;->w()I

    move-result v4

    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/support/v4/app/n;->y0(Landroid/support/v4/app/h;IZI)Landroid/support/v4/app/n$g;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    iget-object v4, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroid/support/v4/app/h;->y:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/h;->Q()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v4/app/h;->k1(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, Landroid/support/v4/app/h;->F:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/n$d;

    invoke-direct {v6, p0, v3, v4, p1}, Landroid/support/v4/app/n$d;-><init>(Landroid/support/v4/app/n;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/h;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    iget-object v3, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/n;->c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V

    iget-object v0, v0, Landroid/support/v4/app/n$g;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/support/v4/app/n;->c1(Landroid/view/View;Landroid/support/v4/app/n$g;)V

    iget-object v3, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/n$g;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_3
    iget-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/support/v4/app/h;->Q()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p1, Landroid/support/v4/app/h;->G:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/h;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/support/v4/app/h;->k1(Z)V

    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/h;->C:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/support/v4/app/h;->D:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/support/v4/app/n;->q:Z

    :cond_6
    iput-boolean v2, p1, Landroid/support/v4/app/h;->P:Z

    iget-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->q0(Z)V

    return-void
.end method

.method public t0(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/h;
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->i1(Ljava/lang/RuntimeException;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    :goto_0
    invoke-static {v1, v0}, La/b/a/b/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/support/v4/app/h;)V
    .locals 4

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->z:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->z:Z

    iget-boolean v1, p1, Landroid/support/v4/app/h;->j:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Landroid/support/v4/app/n;->D:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p1, Landroid/support/v4/app/h;->C:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/h;->D:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroid/support/v4/app/n;->q:Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/h;->j:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method u0()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method public v0()Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/n;->p:Landroid/support/v4/app/h;

    return-object v0
.end method

.method public w(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v4/app/h;->I0(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public w0(Landroid/support/v4/app/h;)V
    .locals 2

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->y:Z

    iget-boolean v1, p1, Landroid/support/v4/app/h;->P:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/h;->P:Z

    :cond_1
    return-void
.end method

.method public x(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/h;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/support/v4/app/h;->J0(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method x0(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/n;->l:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public y()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/n;->r:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/n;->a0(I)V

    return-void
.end method

.method y0(Landroid/support/v4/app/h;IZI)Landroid/support/v4/app/n$g;
    .locals 5

    invoke-virtual {p1}, Landroid/support/v4/app/h;->u()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/h;->h0(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Landroid/support/v4/app/n$g;

    invoke-direct {p1, v1, v2}, Landroid/support/v4/app/n$g;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/n$a;)V

    return-object p1

    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/h;->i0(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Landroid/support/v4/app/n$g;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/n$g;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/n$a;)V

    return-object p2

    :cond_1
    if-eqz v0, :cond_5

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v3}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Landroid/support/v4/app/n$g;

    invoke-direct {v4, v3, v2}, Landroid/support/v4/app/n$g;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/n$a;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-exception p1

    throw p1

    :cond_3
    :goto_0
    if-nez v1, :cond_5

    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {v1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, Landroid/support/v4/app/n$g;

    invoke-direct {v3, v1, v2}, Landroid/support/v4/app/n$g;-><init>(Landroid/animation/Animator;Landroid/support/v4/app/n$a;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    :catch_2
    move-exception v1

    if-nez p1, :cond_4

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p2, Landroid/support/v4/app/n$g;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/n$g;-><init>(Landroid/view/animation/Animation;Landroid/support/v4/app/n$a;)V

    return-object p2

    :cond_4
    throw v1

    :cond_5
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    invoke-static {p2, p3}, Landroid/support/v4/app/n;->j1(IZ)I

    move-result p1

    if-gez p1, :cond_7

    return-object v2

    :cond_7
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p1, :pswitch_data_0

    if-nez p4, :cond_8

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->s()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->r()I

    move-result p4

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p3}, Landroid/support/v4/app/n;->A0(Landroid/content/Context;FF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3, v0}, Landroid/support/v4/app/n;->A0(Landroid/content/Context;FF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    const p2, 0x3f89999a    # 1.075f

    invoke-static {p1, v0, p2, v0, p3}, Landroid/support/v4/app/n;->C0(Landroid/content/Context;FFFF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v0, p3, v0}, Landroid/support/v4/app/n;->C0(Landroid/content/Context;FFFF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, p2, v0, p3}, Landroid/support/v4/app/n;->C0(Landroid/content/Context;FFFF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroid/support/v4/app/n;->m:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f900000    # 1.125f

    invoke-static {p1, p2, v0, p3, v0}, Landroid/support/v4/app/n;->C0(Landroid/content/Context;FFFF)Landroid/support/v4/app/n$g;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/h;

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1, p2}, Landroid/support/v4/app/h;->L0(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    :goto_1
    iget-object p1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    iget-object p1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/h;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/h;->m0()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-object v1, p0, Landroid/support/v4/app/n;->g:Ljava/util/ArrayList;

    return v3
.end method

.method z0(Landroid/support/v4/app/h;)V
    .locals 2

    iget v0, p1, Landroid/support/v4/app/h;->d:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v4/app/n;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/n;->c:I

    iget-object v1, p0, Landroid/support/v4/app/n;->o:Landroid/support/v4/app/h;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/h;->l1(ILandroid/support/v4/app/h;)V

    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/n;->e:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/h;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Landroid/support/v4/app/n;->D:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allocated fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
