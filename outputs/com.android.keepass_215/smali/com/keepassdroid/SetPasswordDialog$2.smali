.class Lcom/keepassdroid/SetPasswordDialog$2;
.super Ljava/lang/Object;
.source "SetPasswordDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/SetPasswordDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/SetPasswordDialog;


# direct methods
.method constructor <init>(Lcom/keepassdroid/SetPasswordDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$2;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$2;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/SetPasswordDialog;->cancel()V

    .line 127
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$2;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-static {p1}, Lcom/keepassdroid/SetPasswordDialog;->access$100(Lcom/keepassdroid/SetPasswordDialog;)Lcom/keepassdroid/database/edit/FileOnFinish;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$2;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-static {p1}, Lcom/keepassdroid/SetPasswordDialog;->access$100(Lcom/keepassdroid/SetPasswordDialog;)Lcom/keepassdroid/database/edit/FileOnFinish;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keepassdroid/database/edit/FileOnFinish;->run()V

    :cond_0
    return-void
.end method
