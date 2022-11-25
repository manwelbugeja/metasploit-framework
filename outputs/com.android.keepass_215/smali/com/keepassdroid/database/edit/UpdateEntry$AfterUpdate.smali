.class Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "UpdateEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/edit/UpdateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterUpdate"
.end annotation


# instance fields
.field private mBackup:Lcom/keepassdroid/database/PwEntry;

.field final synthetic this$0:Lcom/keepassdroid/database/edit/UpdateEntry;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/UpdateEntry;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->this$0:Lcom/keepassdroid/database/edit/UpdateEntry;

    .line 65
    invoke-direct {p0, p3}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 67
    iput-object p2, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mBackup:Lcom/keepassdroid/database/PwEntry;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-boolean v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mSuccess:Z

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mBackup:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->this$0:Lcom/keepassdroid/database/edit/UpdateEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/UpdateEntry;->access$000(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mBackup:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->this$0:Lcom/keepassdroid/database/edit/UpdateEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/UpdateEntry;->access$000(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mBackup:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 78
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->sortEntriesByName()V

    .line 81
    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->this$0:Lcom/keepassdroid/database/edit/UpdateEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/UpdateEntry;->access$100(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->this$0:Lcom/keepassdroid/database/edit/UpdateEntry;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/UpdateEntry;->access$200(Lcom/keepassdroid/database/edit/UpdateEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/database/edit/UpdateEntry$AfterUpdate;->mBackup:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwEntry;->assign(Lcom/keepassdroid/database/PwEntry;)V

    .line 90
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
