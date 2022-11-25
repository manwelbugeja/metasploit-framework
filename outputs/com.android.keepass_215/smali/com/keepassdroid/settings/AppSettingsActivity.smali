.class public Lcom/keepassdroid/settings/AppSettingsActivity;
.super Lcom/keepassdroid/LockCloseActivity;
.source "AppSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseActivity;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/content/Context;)V
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/settings/AppSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0090

    .line 41
    invoke-virtual {p0, v0}, Lcom/keepassdroid/settings/AppSettingsActivity;->setContentView(I)V

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/keepassdroid/settings/AppSettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0901d9

    new-instance v1, Lcom/keepassdroid/settings/MainSettingsFragement;

    invoke-direct {v1}, Lcom/keepassdroid/settings/MainSettingsFragement;-><init>()V

    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
