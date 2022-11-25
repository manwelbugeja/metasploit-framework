.class public Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;
.super Ljava/lang/Object;
.source "PasswordEncodingDialogHelper.java"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method public show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 2

    .line 37
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f100164

    .line 38
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f100163

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    const/high16 p1, 0x1040000

    .line 43
    new-instance p2, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper$1;

    invoke-direct {p2, p0}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper$1;-><init>(Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;->dialog:Landroid/app/AlertDialog;

    .line 55
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
