.class public Lcom/keepassdroid/dialog/WarningDialog;
.super Landroid/app/AlertDialog;
.source "WarningDialog.java"


# instance fields
.field private showKey:I

.field protected warning:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 39
    iput p2, p0, Lcom/keepassdroid/dialog/WarningDialog;->showKey:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/keepassdroid/dialog/WarningDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/dialog/WarningDialog;->warning:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/dialog/WarningDialog;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/keepassdroid/dialog/WarningDialog;->showKey:I

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lcom/keepassdroid/dialog/WarningDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/keepassdroid/dialog/WarningDialog;->warning:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/keepassdroid/dialog/WarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x104000a

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/keepassdroid/dialog/WarningDialog$1;

    invoke-direct {v2, p0}, Lcom/keepassdroid/dialog/WarningDialog$1;-><init>(Lcom/keepassdroid/dialog/WarningDialog;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Lcom/keepassdroid/dialog/WarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f100033

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/keepassdroid/dialog/WarningDialog$2;

    invoke-direct {v1, p0}, Lcom/keepassdroid/dialog/WarningDialog$2;-><init>(Lcom/keepassdroid/dialog/WarningDialog;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/keepassdroid/dialog/WarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
