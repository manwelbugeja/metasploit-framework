.class public Lcom/keepassdroid/ProgressTask;
.super Ljava/lang/Object;
.source "ProgressTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/ProgressTask$CloseProcessDialog;,
        Lcom/keepassdroid/ProgressTask$AfterTask;
    }
.end annotation


# instance fields
.field private mAct:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mPd:Landroid/app/ProgressDialog;

.field private mTask:Lcom/keepassdroid/database/edit/RunnableOnFinish;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/keepassdroid/ProgressTask;->mAct:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/keepassdroid/ProgressTask;->mTask:Lcom/keepassdroid/database/edit/RunnableOnFinish;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/ProgressTask;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/keepassdroid/ProgressTask;->mAct:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    const v1, 0x7f100134

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p3, p0, Lcom/keepassdroid/ProgressTask;->mTask:Lcom/keepassdroid/database/edit/RunnableOnFinish;

    new-instance v0, Lcom/keepassdroid/UpdateStatus;

    iget-object v1, p0, Lcom/keepassdroid/ProgressTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    invoke-direct {v0, p1, v1, v2}, Lcom/keepassdroid/UpdateStatus;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    invoke-virtual {p3, v0}, Lcom/keepassdroid/database/edit/RunnableOnFinish;->setStatus(Lcom/keepassdroid/UpdateStatus;)V

    .line 57
    iget-object p1, p0, Lcom/keepassdroid/ProgressTask;->mTask:Lcom/keepassdroid/database/edit/RunnableOnFinish;

    new-instance p3, Lcom/keepassdroid/ProgressTask$AfterTask;

    iget-object p2, p2, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    iget-object v0, p0, Lcom/keepassdroid/ProgressTask;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, p0, p2, v0}, Lcom/keepassdroid/ProgressTask$AfterTask;-><init>(Lcom/keepassdroid/ProgressTask;Lcom/keepassdroid/database/edit/OnFinish;Landroid/os/Handler;)V

    iput-object p3, p1, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    return-void
.end method

.method static synthetic access$100(Lcom/keepassdroid/ProgressTask;)Landroid/app/ProgressDialog;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keepassdroid/ProgressTask;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/keepassdroid/ProgressTask;->mAct:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 66
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/keepassdroid/ProgressTask;->mTask:Lcom/keepassdroid/database/edit/RunnableOnFinish;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
