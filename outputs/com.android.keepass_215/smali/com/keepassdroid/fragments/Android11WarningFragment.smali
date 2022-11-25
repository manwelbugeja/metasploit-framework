.class public Lcom/keepassdroid/fragments/Android11WarningFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "Android11WarningFragment.java"


# instance fields
.field resId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const v0, 0x7f100001

    .line 60
    iput v0, p0, Lcom/keepassdroid/fragments/Android11WarningFragment;->resId:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 63
    iput p1, p0, Lcom/keepassdroid/fragments/Android11WarningFragment;->resId:I

    return-void
.end method

.method public static showAndroid11Warning(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    const-string v2, "file"

    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/keepassdroid/fragments/Android11WarningFragment;->showAndroid11WarningOnThisVersion()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static showAndroid11Warning(Ljava/lang/String;)Z
    .locals 1

    .line 40
    invoke-static {p0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/keepassdroid/fragments/Android11WarningFragment;->showAndroid11Warning(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static showAndroid11WarningOnThisVersion()Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 69
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/keepassdroid/fragments/Android11WarningFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    iget v0, p0, Lcom/keepassdroid/fragments/Android11WarningFragment;->resId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/keepassdroid/fragments/Android11WarningFragment$1;

    invoke-direct {v1, p0}, Lcom/keepassdroid/fragments/Android11WarningFragment$1;-><init>(Lcom/keepassdroid/fragments/Android11WarningFragment;)V

    const v2, 0x104000a

    .line 71
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
