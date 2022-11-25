.class Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;
.super Ljava/lang/Object;
.source "PasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment$InitTask;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private lookForOpenIntentsFilePicker()V
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v0, v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "org.openintents.action.PICK_FILE"

    invoke-static {v0, v1}, Lcom/keepassdroid/utils/Interaction;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v1, v1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v1, v1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 614
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v1, v1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v2, v2, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v2}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v1, v1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lcom/keepassdroid/fragments/PasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 629
    :catch_1
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->showBrowserDialog()V

    goto :goto_0

    .line 632
    :cond_1
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->showBrowserDialog()V

    :goto_0
    return-void
.end method

.method private showBrowserDialog()V
    .locals 2

    .line 637
    new-instance v0, Lcom/keepassdroid/fileselect/BrowserDialog;

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v1, v1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keepassdroid/fileselect/BrowserDialog;-><init>(Landroid/content/Context;)V

    .line 638
    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/BrowserDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 589
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object p1, p1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/compat/StorageAF;->useStorageFramework(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "*/*"

    const-string v1, "android.intent.category.OPENABLE"

    if-eqz p1, :cond_0

    .line 590
    new-instance p1, Landroid/content/Intent;

    sget-object v2, Lcom/keepassdroid/compat/StorageAF;->ACTION_OPEN_DOCUMENT:Ljava/lang/String;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v0, v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const/16 v1, 0x102

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 595
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object v0, v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const/16 v1, 0x101

    invoke-virtual {v0, p1, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 602
    :catch_0
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;->lookForOpenIntentsFilePicker()V

    :goto_0
    return-void
.end method
