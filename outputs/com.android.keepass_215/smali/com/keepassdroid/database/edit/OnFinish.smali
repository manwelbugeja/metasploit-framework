.class public Lcom/keepassdroid/database/edit/OnFinish;
.super Ljava/lang/Object;
.source "OnFinish.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected mDialog:Landroidx/fragment/app/DialogFragment;

.field protected mHandler:Landroid/os/Handler;

.field protected mMessage:Ljava/lang/String;

.field protected mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

.field protected mSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 48
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    .line 49
    iput-object p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 58
    iput-object p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    .line 59
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/database/edit/OnFinish;Landroid/os/Handler;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 53
    iput-object p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    .line 54
    iput-object p2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected displayMessage(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object p2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mMessage:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 102
    iget-object p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz p1, :cond_1

    const-string v0, "message"

    .line 103
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected displayMessage(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/edit/OnFinish;->displayMessage(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    if-eqz v0, :cond_2

    .line 79
    iget-object v1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_0

    .line 80
    iget-boolean v2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mSuccess:Z

    invoke-virtual {v0, v2, v1}, Lcom/keepassdroid/database/edit/OnFinish;->setResult(ZLandroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mSuccess:Z

    iget-object v2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/edit/OnFinish;->setResult(ZLjava/lang/String;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/edit/OnFinish;->mOnFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-virtual {v0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setResult(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mSuccess:Z

    return-void
.end method

.method public setResult(ZLandroidx/fragment/app/DialogFragment;)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mSuccess:Z

    .line 69
    iput-object p2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mDialog:Landroidx/fragment/app/DialogFragment;

    return-void
.end method

.method public setResult(ZLjava/lang/String;)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/keepassdroid/database/edit/OnFinish;->mSuccess:Z

    .line 64
    iput-object p2, p0, Lcom/keepassdroid/database/edit/OnFinish;->mMessage:Ljava/lang/String;

    return-void
.end method
