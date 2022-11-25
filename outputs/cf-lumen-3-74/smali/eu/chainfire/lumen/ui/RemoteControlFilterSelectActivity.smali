.class public Leu/chainfire/lumen/ui/RemoteControlFilterSelectActivity;
.super Landroid/app/Activity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

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

    invoke-static {p0}, Leu/chainfire/lumen/receivers/RemoteControlFireReceiver;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

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

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onSaveClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Leu/chainfire/lumen/ui/FilterSelectFragment;

    invoke-virtual {v1}, Leu/chainfire/lumen/ui/FilterSelectFragment;->I()Leu/chainfire/lumen/a$d;

    move-result-object v1

    invoke-virtual {v1}, Leu/chainfire/lumen/a$d;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "eu.chainfire.lumen.EXTRA_REMOTE_CONTROL_FILTER"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Leu/chainfire/lumen/a;->a(Landroid/content/Context;Leu/chainfire/lumen/a$d;ZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.twofortyfouram.locale.intent.extra.BLURB"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
