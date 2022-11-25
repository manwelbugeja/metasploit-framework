.class public abstract Lcom/google/android/gms/dynamic/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/dynamic/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/dynamic/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/dynamic/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/dynamic/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/dynamic/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/d;-><init>(Lcom/google/android/gms/dynamic/a;)V

    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->d:Lcom/google/android/gms/dynamic/c;

    return-void
.end method

.method public static o(Landroid/widget/FrameLayout;)V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/common/b;->q()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->h(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/c;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/c;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/common/b;->c(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/google/android/gms/dynamic/h;

    invoke-direct {v2, v1, p0}, Lcom/google/android/gms/dynamic/h;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic q(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    return-object p1
.end method

.method static synthetic r(Lcom/google/android/gms/dynamic/a;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    return-object p0
.end method

.method private final s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/gms/dynamic/a$a;->b(Lcom/google/android/gms/dynamic/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/dynamic/a;->b:Landroid/os/Bundle;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/dynamic/a;->b:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/dynamic/a;->d:Lcom/google/android/gms/dynamic/c;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/c;)V

    return-void
.end method

.method static synthetic t(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    return-object p0
.end method

.method private final u(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/a$a;

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/a$a;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/dynamic/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/dynamic/c<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public b()Lcom/google/android/gms/dynamic/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method

.method protected c(Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/dynamic/a;->o(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/dynamic/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/dynamic/f;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/dynamic/a;->s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    return-void
.end method

.method public e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    new-instance v6, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/gms/dynamic/g;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/dynamic/g;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v7}, Lcom/google/android/gms/dynamic/a;->s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    iget-object p1, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-nez p1, :cond_0

    invoke-virtual {p0, v6}, Lcom/google/android/gms/dynamic/a;->c(Landroid/widget/FrameLayout;)V

    :cond_0
    return-object v6
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->onDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->u(I)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->onDestroyView()V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->u(I)V

    return-void
.end method

.method public h(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/dynamic/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/dynamic/e;-><init>(Lcom/google/android/gms/dynamic/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/dynamic/a;->s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->onPause()V

    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->u(I)V

    return-void
.end method

.method public k()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/dynamic/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/j;-><init>(Lcom/google/android/gms/dynamic/a;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/dynamic/a;->s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/dynamic/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->b:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public m()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/dynamic/i;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/i;-><init>(Lcom/google/android/gms/dynamic/a;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/dynamic/a;->s(Landroid/os/Bundle;Lcom/google/android/gms/dynamic/a$a;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/a;->a:Lcom/google/android/gms/dynamic/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->onStop()V

    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/a;->u(I)V

    return-void
.end method
