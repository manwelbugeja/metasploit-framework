.class Lcom/keepassdroid/fileselect/FileSelectActivity$4;
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

    .line 265
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private lookForOpenIntentsFilePicker()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const-string v1, "org.openintents.action.PICK_FILE"

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Interaction;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const v3, 0x7f0900ed

    invoke-static {v2, v3}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->showBrowserDialog()V

    goto :goto_0

    .line 303
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->showBrowserDialog()V

    :goto_0
    return-void
.end method

.method private showBrowserDialog()V
    .locals 2

    .line 308
    new-instance v0, Lcom/keepassdroid/fileselect/BrowserDialog;

    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-direct {v0, v1}, Lcom/keepassdroid/fileselect/BrowserDialog;-><init>(Landroid/content/Context;)V

    .line 309
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/BrowserDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 268
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    invoke-static {p1}, Lcom/keepassdroid/compat/StorageAF;->useStorageFramework(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "*/*"

    const-string v1, "android.intent.category.OPENABLE"

    if-eqz p1, :cond_0

    .line 269
    new-instance p1, Landroid/content/Intent;

    sget-object v2, Lcom/keepassdroid/compat/StorageAF;->ACTION_OPEN_DOCUMENT:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x43

    .line 272
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 277
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->this$0:Lcom/keepassdroid/fileselect/FileSelectActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->lookForOpenIntentsFilePicker()V

    goto :goto_0

    .line 284
    :catch_1
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$4;->lookForOpenIntentsFilePicker()V

    :goto_0
    return-void
.end method
