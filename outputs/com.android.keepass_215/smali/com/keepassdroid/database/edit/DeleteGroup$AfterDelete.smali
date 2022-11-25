.class Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "DeleteGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/edit/DeleteGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterDelete"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/edit/DeleteGroup;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/DeleteGroup;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    .line 100
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->mSuccess:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$000(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwGroup;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$000(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$000(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteGroup;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteGroup;->access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    .line 122
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
