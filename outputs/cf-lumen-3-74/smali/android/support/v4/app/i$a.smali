.class Landroid/support/v4/app/i$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/i;


# direct methods
.method constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {p1}, Landroid/support/v4/app/i;->l()V

    iget-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    iget-object p1, p1, Landroid/support/v4/app/i;->e:Landroid/support/v4/app/k;

    invoke-virtual {p1}, Landroid/support/v4/app/k;->x()Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    iget-boolean v0, p1, Landroid/support/v4/app/i;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/i;->f(Z)V

    :cond_2
    :goto_0
    return-void
.end method
