.class Lcom/keepassdroid/fileselect/FileSelectActivity$3;
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

    .line 230
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$000(Lcom/keepassdroid/fileselect/FileSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v0, 0x7f0900ed

    invoke-static {p1, v0}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v0, 0x7f100079

    const/4 v1, 0x1

    .line 240
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/PermissionUtil;->checkAndRequest(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {v0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->access$100(Lcom/keepassdroid/fileselect/FileSelectActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 251
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    .line 252
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "keepass.kdbx"

    .line 253
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x43

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "content://com.android.externalstorage.documents/document/primary:keepass"

    .line 255
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.provider.extra.INITIAL_URI"

    .line 256
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 257
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method
