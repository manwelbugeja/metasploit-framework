.class Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;
.super Lcom/keepassdroid/database/edit/FileOnFinish;
.source "FileSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fileselect/FileSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectPassword"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/fileselect/FileSelectActivity;Lcom/keepassdroid/database/edit/FileOnFinish;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    .line 389
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/FileOnFinish;-><init>(Lcom/keepassdroid/database/edit/FileOnFinish;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 394
    new-instance v0, Lcom/keepassdroid/SetPasswordDialog;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    iget-object v2, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;->mOnFinish:Lcom/keepassdroid/database/edit/FileOnFinish;

    invoke-direct {v0, v1, v2}, Lcom/keepassdroid/SetPasswordDialog;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/FileOnFinish;)V

    .line 395
    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->show()V

    return-void
.end method
