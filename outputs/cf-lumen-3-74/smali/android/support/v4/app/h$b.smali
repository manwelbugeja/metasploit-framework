.class Landroid/support/v4/app/h$b;
.super Landroid/support/v4/app/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/h;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/h;


# direct methods
.method constructor <init>(Landroid/support/v4/app/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/app/h;

    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/h;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/h;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/h$b;->a:Landroid/support/v4/app/h;

    iget-object v0, v0, Landroid/support/v4/app/h;->G:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
