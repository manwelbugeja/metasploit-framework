.class Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "AddEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/edit/AddEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterAdd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/database/edit/AddEntry;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/edit/AddEntry;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    .line 60
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    iget-object v0, v0, Lcom/keepassdroid/database/edit/AddEntry;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 66
    iget-boolean v1, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->mSuccess:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    invoke-static {v0}, Lcom/keepassdroid/database/edit/AddEntry;->access$000(Lcom/keepassdroid/database/edit/AddEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    iget-object v1, v1, Lcom/keepassdroid/database/edit/AddEntry;->mDb:Lcom/keepassdroid/Database;

    iget-object v1, v1, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    invoke-static {v1}, Lcom/keepassdroid/database/edit/AddEntry;->access$000(Lcom/keepassdroid/database/edit/AddEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/database/edit/AddEntry$AfterAdd;->this$0:Lcom/keepassdroid/database/edit/AddEntry;

    invoke-static {v2}, Lcom/keepassdroid/database/edit/AddEntry;->access$000(Lcom/keepassdroid/database/edit/AddEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwDatabase;->removeEntryFrom(Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwGroup;)V

    .line 77
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
