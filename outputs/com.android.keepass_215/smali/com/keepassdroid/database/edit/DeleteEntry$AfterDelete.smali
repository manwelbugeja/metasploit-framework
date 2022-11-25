.class Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "DeleteEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/edit/DeleteEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterDelete"
.end annotation


# instance fields
.field private mEntry:Lcom/keepassdroid/database/PwEntry;

.field private mParent:Lcom/keepassdroid/database/PwGroup;

.field private recycled:Z

.field final synthetic this$0:Lcom/keepassdroid/database/edit/DeleteEntry;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/DeleteEntry;Lcom/keepassdroid/database/edit/OnFinish;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwEntry;Z)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    .line 85
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 87
    iput-object p3, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mParent:Lcom/keepassdroid/database/PwGroup;

    .line 88
    iput-object p4, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 89
    iput-boolean p5, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->recycled:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteEntry;->access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 95
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mSuccess:Z

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mParent:Lcom/keepassdroid/database/PwGroup;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteEntry;->access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mParent:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->recycled:Z

    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDatabase;->getRecycleBin()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteEntry;->access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/DeleteEntry;->access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->this$0:Lcom/keepassdroid/database/edit/DeleteEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/DeleteEntry;->access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v1, v1, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->recycled:Z

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mEntry:Lcom/keepassdroid/database/PwEntry;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mParent:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwDatabase;->undoRecycle(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mEntry:Lcom/keepassdroid/database/PwEntry;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;->mParent:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwDatabase;->undoDeleteEntry(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 115
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
