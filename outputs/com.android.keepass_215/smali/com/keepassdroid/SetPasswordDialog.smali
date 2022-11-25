.class public Lcom/keepassdroid/SetPasswordDialog;
.super Lcom/keepassdroid/CancelDialog;
.source "SetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/SetPasswordDialog$AfterSave;
    }
.end annotation


# instance fields
.field private mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

.field private mKeyfile:Landroid/net/Uri;

.field private masterKey:[B


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/keepassdroid/CancelDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/FileOnFinish;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;-><init>(Landroid/app/Activity;)V

    .line 57
    iput-object p2, p0, Lcom/keepassdroid/SetPasswordDialog;->mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/SetPasswordDialog;)Landroid/net/Uri;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/keepassdroid/SetPasswordDialog;->mKeyfile:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$002(Lcom/keepassdroid/SetPasswordDialog;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/keepassdroid/SetPasswordDialog;->mKeyfile:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/keepassdroid/SetPasswordDialog;)Lcom/keepassdroid/database/edit/FileOnFinish;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/keepassdroid/SetPasswordDialog;->mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    return-object p0
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog;->masterKey:[B

    return-object v0
.end method

.method public keyfile()Landroid/net/Uri;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog;->mKeyfile:Landroid/net/Uri;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/keepassdroid/CancelDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008f

    .line 71
    invoke-virtual {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;->setContentView(I)V

    const p1, 0x7f10012b

    .line 73
    invoke-virtual {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;->setTitle(I)V

    const p1, 0x7f090191

    .line 76
    invoke-virtual {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 77
    new-instance v0, Lcom/keepassdroid/SetPasswordDialog$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/SetPasswordDialog$1;-><init>(Lcom/keepassdroid/SetPasswordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 122
    invoke-virtual {p0, p1}, Lcom/keepassdroid/SetPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 123
    new-instance v0, Lcom/keepassdroid/SetPasswordDialog$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/SetPasswordDialog$2;-><init>(Lcom/keepassdroid/SetPasswordDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
