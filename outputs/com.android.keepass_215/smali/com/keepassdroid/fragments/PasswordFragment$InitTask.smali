.class Lcom/keepassdroid/fragments/PasswordFragment$InitTask;
.super Ljava/lang/Object;
.source "PasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fragments/PasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitTask"
.end annotation


# instance fields
.field launch_immediately:Z

.field password:Ljava/lang/String;

.field final synthetic this$0:Lcom/keepassdroid/fragments/PasswordFragment;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 490
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    const/4 p1, 0x0

    .line 491
    iput-boolean p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->launch_immediately:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V
    .locals 0

    .line 488
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    .line 494
    aget-object p1, p1, v0

    .line 495
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "launchImmediately"

    const-string v3, "password"

    const-string v4, "keyFile"

    if-eqz v1, :cond_6

    const-string v5, "android.intent.action.VIEW"

    .line 497
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 498
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 499
    iget-object v5, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v5, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$902(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 501
    iget-object v5, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1, v4}, Lcom/keepassdroid/compat/ClipDataCompat;->getUriFromIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    const v4, 0x7f100074

    if-nez v1, :cond_0

    .line 504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 505
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 506
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x7f100004

    if-nez v4, :cond_1

    .line 510
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 513
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 516
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 520
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1100(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    .line 522
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_4

    .line 524
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1100(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 529
    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    .line 530
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->launch_immediately:Z

    goto :goto_1

    .line 527
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 533
    :cond_6
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const-string v5, "fileName"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/keepassdroid/fragments/PasswordFragment;->access$902(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 534
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 535
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    .line 536
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->launch_immediately:Z

    .line 538
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    .line 539
    :cond_7
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1100(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 543
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1200(Lcom/keepassdroid/fragments/PasswordFragment;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 550
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 551
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 555
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1300(Lcom/keepassdroid/fragments/PasswordFragment;)V

    .line 557
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1500(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 561
    new-instance v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$1;-><init>(Lcom/keepassdroid/fragments/PasswordFragment$InitTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 577
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 579
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    :cond_1
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 583
    new-instance v0, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-direct {v0, v1, v2}, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 585
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 586
    new-instance v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$2;-><init>(Lcom/keepassdroid/fragments/PasswordFragment$InitTask;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1800(Lcom/keepassdroid/fragments/PasswordFragment;)V

    .line 644
    iget-boolean p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->launch_immediately:Z

    if-eqz p1, :cond_2

    .line 645
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->password:Ljava/lang/String;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1900(Lcom/keepassdroid/fragments/PasswordFragment;Ljava/lang/String;Landroid/net/Uri;)V

    :cond_2
    return-void
.end method
