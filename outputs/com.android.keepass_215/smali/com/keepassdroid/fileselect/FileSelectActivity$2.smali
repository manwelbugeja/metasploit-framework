.class Lcom/keepassdroid/fileselect/FileSelectActivity$2;
.super Ljava/lang/Object;
.source "FileSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/FileSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$000(Lcom/keepassdroid/fileselect/FileSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v0, 0x7f0900ed

    invoke-static {p1, v0}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {v1, p1}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/ContentFileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :catch_0
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v1, 0x7f100004

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :catch_1
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v1, 0x7f10008e

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 217
    :cond_0
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/keepassdroid/compat/StorageAF;->ACTION_OPEN_DOCUMENT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x43

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://com.android.externalstorage.documents/document/primary:keepass"

    .line 221
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.provider.extra.INITIAL_URI"

    .line 222
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
