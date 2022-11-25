.class public Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "GroupBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/GroupBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AfterDeleteGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/GroupBaseActivity;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/GroupBaseActivity;Landroid/os/Handler;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    .line 303
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 308
    iget-boolean v0, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    invoke-virtual {v0}, Lcom/keepassdroid/GroupBaseActivity;->refreshIfDirty()V

    goto :goto_0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/keepassdroid/UIToastTask;

    iget-object v2, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecoverable error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keepassdroid/UIToastTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    .line 313
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    invoke-virtual {v0}, Lcom/keepassdroid/GroupBaseActivity;->finish()V

    :goto_0
    return-void
.end method
