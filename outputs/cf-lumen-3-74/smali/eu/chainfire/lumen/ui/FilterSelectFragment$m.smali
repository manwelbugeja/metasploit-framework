.class Leu/chainfire/lumen/ui/FilterSelectFragment$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/FilterSelectFragment;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/FilterSelectFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/FilterSelectFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result p1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->k(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->s(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090006

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f090008

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f090098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->r(Leu/chainfire/lumen/ui/FilterSelectFragment;)Leu/chainfire/lumen/drivers/d;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->h(Leu/chainfire/lumen/ui/FilterSelectFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/FilterSelectFragment;->i(Leu/chainfire/lumen/ui/FilterSelectFragment;)I

    move-result v0

    :goto_1
    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/d;->B(I)V

    :cond_3
    :goto_2
    iget-object p1, p0, Leu/chainfire/lumen/ui/FilterSelectFragment$m;->a:Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->B(Leu/chainfire/lumen/ui/FilterSelectFragment;)V

    return-void
.end method
