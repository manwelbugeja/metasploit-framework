.class Lcom/keepassdroid/fileselect/FileSelectActivity$6;
.super Landroid/os/AsyncTask;
.source "FileSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/FileSelectActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 585
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    .line 587
    aget-object v1, p1, v0

    .line 588
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$200(Lcom/keepassdroid/fileselect/FileSelectActivity;)Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->deleteFile(Landroid/net/Uri;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 585
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 593
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$300(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    return-void
.end method
