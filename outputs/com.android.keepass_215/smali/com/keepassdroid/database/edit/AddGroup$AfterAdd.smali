.class Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "AddGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/edit/AddGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterAdd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/edit/AddGroup;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/AddGroup;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    .line 76
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    iget-object v0, v0, Lcom/keepassdroid/database/edit/AddGroup;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 82
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    iget-object v0, v0, Lcom/keepassdroid/database/edit/AddGroup;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/AddGroup;->access$000(Lcom/keepassdroid/database/edit/AddGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/AddGroup;->access$100(Lcom/keepassdroid/database/edit/AddGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/database/edit/AddGroup$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddGroup;

    invoke-static {v2}, Lcom/keepassdroid/database/edit/AddGroup;->access$000(Lcom/keepassdroid/database/edit/AddGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwDatabase;->removeGroupFrom(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwGroup;)V

    .line 89
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
