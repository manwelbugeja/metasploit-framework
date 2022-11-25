.class Lcom/keepassdroid/fileselect/FileSelectActivity$5;
.super Landroid/os/AsyncTask;
.source "FileSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/FileSelectActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field keyFile:Ljava/lang/String;

.field final synthetic this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 413
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 417
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 418
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$200(Lcom/keepassdroid/fileselect/FileSelectActivity;)Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->getDatabaseAt(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->fileName:Ljava/lang/String;

    .line 419
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$200(Lcom/keepassdroid/fileselect/FileSelectActivity;)Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->getKeyfileAt(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->keyFile:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 p1, 0x1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->keyFile:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/ContentFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 433
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/keepassdroid/fragments/Android11WarningFragment;->showAndroid11Warning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    new-instance p1, Lcom/keepassdroid/fragments/Android11WarningFragment;

    invoke-direct {p1}, Lcom/keepassdroid/fragments/Android11WarningFragment;-><init>()V

    .line 435
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "Android11WarningFragment"

    invoke-virtual {p1, v0, v1}, Lcom/keepassdroid/fragments/Android11WarningFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v1, 0x7f100004

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 438
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 428
    :catch_1
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v1, 0x7f10008e

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
