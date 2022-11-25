.class Landroid/support/v4/app/n$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/n;->m(Landroid/support/v4/app/h;Landroid/support/v4/app/n$g;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/support/v4/app/h;

.field final synthetic d:Landroid/support/v4/app/n;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/n$c;->d:Landroid/support/v4/app/n;

    iput-object p2, p0, Landroid/support/v4/app/n$c;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/n$c;->b:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/n$c;->c:Landroid/support/v4/app/h;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    iget-object p1, p0, Landroid/support/v4/app/n$c;->a:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n$c;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/n$c;->c:Landroid/support/v4/app/h;

    invoke-virtual {p1}, Landroid/support/v4/app/h;->k()Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v4/app/n$c;->c:Landroid/support/v4/app/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->h1(Landroid/animation/Animator;)V

    iget-object v1, p0, Landroid/support/v4/app/n$c;->d:Landroid/support/v4/app/n;

    iget-object v2, p0, Landroid/support/v4/app/n$c;->c:Landroid/support/v4/app/h;

    invoke-virtual {v2}, Landroid/support/v4/app/h;->E()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    :cond_1
    return-void
.end method
