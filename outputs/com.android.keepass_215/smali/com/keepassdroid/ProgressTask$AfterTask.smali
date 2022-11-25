.class Lcom/keepassdroid/ProgressTask$AfterTask;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "ProgressTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/ProgressTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/ProgressTask;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/ProgressTask;Lcom/keepassdroid/database/edit/OnFinish;Landroid/os/Handler;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/keepassdroid/ProgressTask$AfterTask;->this$0:Lcom/keepassdroid/ProgressTask;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 78
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    .line 80
    iget-object v0, p0, Lcom/keepassdroid/ProgressTask$AfterTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;

    iget-object v2, p0, Lcom/keepassdroid/ProgressTask$AfterTask;->this$0:Lcom/keepassdroid/ProgressTask;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/keepassdroid/ProgressTask$CloseProcessDialog;-><init>(Lcom/keepassdroid/ProgressTask;Lcom/keepassdroid/ProgressTask$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
