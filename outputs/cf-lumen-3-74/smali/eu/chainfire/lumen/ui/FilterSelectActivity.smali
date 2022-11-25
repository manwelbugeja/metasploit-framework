.class public Leu/chainfire/lumen/ui/FilterSelectActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Leu/chainfire/lumen/ui/FilterSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "eu.chainfire.lumen.EXTRA_FROM_APP"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "eu.chainfire.lumen.EXTRA_PREFERENCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "eu.chainfire.lumen.EXTRA_PREFERENCE_DEFAULT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "eu.chainfire.lumen.EXTRA_IS_MASTER"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Leu/chainfire/lumen/ui/MainActivity;->c(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Leu/chainfire/lumen/Application;

    invoke-virtual {p1}, Leu/chainfire/lumen/Application;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_0
    const/high16 p1, 0x7f080000

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method

.method public onSaveClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f060020

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->M()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
