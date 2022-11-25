.class Lcom/keepassdroid/SetPasswordDialog$AfterSave;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "SetPasswordDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/SetPasswordDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterSave"
.end annotation


# instance fields
.field private mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

.field final synthetic this$0:Lcom/keepassdroid/SetPasswordDialog;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/SetPasswordDialog;Lcom/keepassdroid/database/edit/FileOnFinish;Landroid/os/Handler;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    .line 138
    invoke-direct {p0, p2, p3}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;Landroid/os/Handler;)V

    .line 139
    iput-object p2, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-boolean v0, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->mSuccess:Z

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->mFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-static {v1}, Lcom/keepassdroid/SetPasswordDialog;->access$000(Lcom/keepassdroid/SetPasswordDialog;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/edit/FileOnFinish;->setFilename(Landroid/net/Uri;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->dismiss()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0, v0}, Lcom/keepassdroid/SetPasswordDialog$AfterSave;->displayMessage(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 152
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
