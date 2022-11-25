.class public abstract Lcom/keepassdroid/database/edit/RunnableOnFinish;
.super Ljava/lang/Object;
.source "RunnableOnFinish.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mFinish:Lcom/keepassdroid/database/edit/OnFinish;

.field public mStatus:Lcom/keepassdroid/UpdateStatus;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    return-void
.end method


# virtual methods
.method protected finish(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Lcom/keepassdroid/database/edit/OnFinish;->setResult(Z)V

    .line 54
    iget-object p1, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-virtual {p1}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    :cond_0
    return-void
.end method

.method protected finish(ZLandroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/keepassdroid/database/edit/OnFinish;->setResult(ZLandroidx/fragment/app/DialogFragment;)V

    .line 47
    iget-object p1, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-virtual {p1}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    :cond_0
    return-void
.end method

.method protected finish(ZLjava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/keepassdroid/database/edit/OnFinish;->setResult(ZLjava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-virtual {p1}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    :cond_0
    return-void
.end method

.method public abstract run()V
.end method

.method public setStatus(Lcom/keepassdroid/UpdateStatus;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/keepassdroid/database/edit/RunnableOnFinish;->mStatus:Lcom/keepassdroid/UpdateStatus;

    return-void
.end method
