.class Lcom/keepassdroid/SetPasswordDialog$1;
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

    .line 77
    iput-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 80
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    const v0, 0x7f0901a0

    invoke-virtual {p1, v0}, Lcom/keepassdroid/SetPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    const v0, 0x7f09019d

    invoke-virtual {p1, v0}, Lcom/keepassdroid/SetPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 83
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/SetPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f100081

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    const v1, 0x7f09019e

    invoke-virtual {p1, v1}, Lcom/keepassdroid/SetPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 94
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-static {p1, v4}, Lcom/keepassdroid/SetPasswordDialog;->access$002(Lcom/keepassdroid/SetPasswordDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v4}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/SetPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f10007e

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 103
    :cond_1
    new-instance p1, Lcom/keepassdroid/database/edit/SetPassword;

    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v2

    new-instance v5, Lcom/keepassdroid/SetPasswordDialog$AfterSave;

    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-static {v0}, Lcom/keepassdroid/SetPasswordDialog;->access$100(Lcom/keepassdroid/SetPasswordDialog;)Lcom/keepassdroid/database/edit/FileOnFinish;

    move-result-object v6

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, v0, v6, v7}, Lcom/keepassdroid/SetPasswordDialog$AfterSave;-><init>(Lcom/keepassdroid/SetPasswordDialog;Lcom/keepassdroid/database/edit/FileOnFinish;Landroid/os/Handler;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/keepassdroid/database/edit/SetPassword;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 104
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/keepassdroid/ProgressTask;

    const v2, 0x7f100149

    invoke-direct {v1, v0, p1, v2}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 106
    iget-object v0, p0, Lcom/keepassdroid/SetPasswordDialog$1;->this$0:Lcom/keepassdroid/SetPasswordDialog;

    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/keepassdroid/SetPasswordDialog$1$1;

    invoke-direct {v2, p0, v1}, Lcom/keepassdroid/SetPasswordDialog$1$1;-><init>(Lcom/keepassdroid/SetPasswordDialog$1;Lcom/keepassdroid/ProgressTask;)V

    invoke-virtual {p1, v0, v2}, Lcom/keepassdroid/database/edit/SetPassword;->validatePassword(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {v1}, Lcom/keepassdroid/ProgressTask;->run()V

    :cond_2
    return-void
.end method
