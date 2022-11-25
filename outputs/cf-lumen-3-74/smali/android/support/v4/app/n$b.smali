.class Landroid/support/v4/app/n$b;
.super Landroid/support/v4/app/n$f;
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
.field final synthetic b:Landroid/support/v4/app/h;

.field final synthetic c:Landroid/support/v4/app/n;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/n$b;->c:Landroid/support/v4/app/n;

    iput-object p3, p0, Landroid/support/v4/app/n$b;->b:Landroid/support/v4/app/h;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/support/v4/app/n$f;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/n$a;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/support/v4/app/n$f;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Landroid/support/v4/app/n$b;->b:Landroid/support/v4/app/h;

    invoke-virtual {p1}, Landroid/support/v4/app/h;->j()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v4/app/n$b;->b:Landroid/support/v4/app/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/h;->g1(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v4/app/n$b;->c:Landroid/support/v4/app/n;

    iget-object v2, p0, Landroid/support/v4/app/n$b;->b:Landroid/support/v4/app/h;

    invoke-virtual {v2}, Landroid/support/v4/app/h;->E()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/n;->J0(Landroid/support/v4/app/h;IIIZ)V

    :cond_0
    return-void
.end method
