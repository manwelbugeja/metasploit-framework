.class Lcom/android/datetimepicker/time/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/datetimepicker/time/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/c;


# direct methods
.method private constructor <init>(Lcom/android/datetimepicker/time/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/datetimepicker/time/c$b;->a:Lcom/android/datetimepicker/time/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/datetimepicker/time/c;Lcom/android/datetimepicker/time/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/c$b;-><init>(Lcom/android/datetimepicker/time/c;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/datetimepicker/time/c$b;->a:Lcom/android/datetimepicker/time/c;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
