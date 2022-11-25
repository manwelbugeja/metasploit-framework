.class public Landroid/support/v4/app/g;
.super Landroid/support/v4/app/h;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field W:I

.field X:I

.field Y:Z

.field Z:Z

.field a0:I

.field b0:Landroid/app/Dialog;

.field c0:Z

.field d0:Z

.field e0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/g;->W:I

    iput v0, p0, Landroid/support/v4/app/g;->X:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Y:Z

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/g;->a0:I

    return-void
.end method


# virtual methods
.method public A1(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public B0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->B0(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Landroid/support/v4/app/g;->W:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Landroid/support/v4/app/g;->X:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Y:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Landroid/support/v4/app/g;->a0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public B1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/g;->Z:Z

    return-void
.end method

.method public C0()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/h;->C0()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/g;->c0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public C1(Landroid/app/Dialog;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v1, 0x18

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void
.end method

.method public D0()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/h;->D0()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public D1(Landroid/support/v4/app/m;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->d0:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->e0:Z

    invoke-virtual {p1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/p;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/h;Ljava/lang/String;)Landroid/support/v4/app/p;

    invoke-virtual {p1}, Landroid/support/v4/app/p;->c()I

    return-void
.end method

.method public a0(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->a0(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->J()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/h;->g()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroid/support/v4/app/g;->Y:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public d0(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->d0(Landroid/content/Context;)V

    iget-boolean p1, p0, Landroid/support/v4/app/g;->e0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/app/g;->d0:Z

    :cond_0
    return-void
.end method

.method public g0(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->g0(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/support/v4/app/h;->w:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/g;->W:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/g;->X:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Y:Z

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/app/g;->a0:I

    :cond_1
    return-void
.end method

.method public n0()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/h;->n0()V

    iget-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/g;->c0:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public o0()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/h;->o0()V

    iget-boolean v0, p0, Landroid/support/v4/app/g;->e0:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/g;->d0:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->d0:Z

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p1, p0, Landroid/support/v4/app/g;->c0:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->z1(Z)V

    :cond_0
    return-void
.end method

.method public p0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/g;->Z:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->p0(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/g;->A1(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    const-string v0, "layout_inflater"

    if-eqz p1, :cond_1

    iget v1, p0, Landroid/support/v4/app/g;->W:I

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/g;->C1(Landroid/app/Dialog;I)V

    iget-object p1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1

    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/h;->r:Landroid/support/v4/app/l;

    invoke-virtual {p1}, Landroid/support/v4/app/l;->i()Landroid/content/Context;

    move-result-object p1

    goto :goto_0
.end method

.method z1(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/app/g;->d0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/g;->d0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/g;->e0:Z

    iget-object v1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/g;->b0:Landroid/app/Dialog;

    :cond_1
    iput-boolean v0, p0, Landroid/support/v4/app/g;->c0:Z

    iget v1, p0, Landroid/support/v4/app/g;->a0:I

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object p1

    iget v1, p0, Landroid/support/v4/app/g;->a0:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/m;->e(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v4/app/g;->a0:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/h;->r()Landroid/support/v4/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/p;->e(Landroid/support/v4/app/h;)Landroid/support/v4/app/p;

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()I

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    :goto_0
    return-void
.end method
