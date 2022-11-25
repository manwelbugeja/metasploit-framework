.class public Lcom/keepassdroid/database/edit/DeleteGroup;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "DeleteGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;
    }
.end annotation


# instance fields
.field private mAct:Lcom/keepassdroid/GroupBaseActivity;

.field private mDb:Lcom/keepassdroid/Database;

.field private mDontSave:Z

.field private mGroup:Lcom/keepassdroid/database/PwGroup;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 0

    .line 39
    invoke-direct {p0, p4}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    const/4 p4, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keepassdroid/database/edit/DeleteGroup;->setMembers(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/edit/OnFinish;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p4}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 45
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/keepassdroid/database/edit/DeleteGroup;->setMembers(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/edit/OnFinish;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p3}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    const/4 p3, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/keepassdroid/database/edit/DeleteGroup;->setMembers(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/database/PwGroup;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keepassdroid/database/edit/DeleteGroup;)Lcom/keepassdroid/Database;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    return-object p0
.end method

.method private setMembers(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Z)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    .line 56
    iput-object p2, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    .line 57
    iput-object p3, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    .line 58
    iput-boolean p4, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDontSave:Z

    .line 60
    new-instance p1, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;

    iget-object p2, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    invoke-direct {p1, p0, p2}, Lcom/keepassdroid/database/edit/DeleteGroup$AfterDelete;-><init>(Lcom/keepassdroid/database/edit/DeleteGroup;Lcom/keepassdroid/database/edit/OnFinish;)V

    iput-object p1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v1, v1, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 71
    new-instance v3, Lcom/keepassdroid/database/edit/DeleteEntry;

    iget-object v5, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    iget-object v6, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/keepassdroid/database/PwEntry;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/keepassdroid/database/edit/DeleteEntry;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 72
    invoke-virtual {v3}, Lcom/keepassdroid/database/edit/DeleteEntry;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v2, v2, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 78
    new-instance v2, Lcom/keepassdroid/database/edit/DeleteGroup;

    iget-object v4, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/keepassdroid/database/PwGroup;

    iget-object v6, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/keepassdroid/database/edit/DeleteGroup;-><init>(Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 79
    invoke-virtual {v2}, Lcom/keepassdroid/database/edit/DeleteGroup;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, v0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwDatabase;->getGroups()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/keepassdroid/database/edit/SaveDB;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDb:Lcom/keepassdroid/Database;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    iget-boolean v4, p0, Lcom/keepassdroid/database/edit/DeleteGroup;->mDontSave:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keepassdroid/database/edit/SaveDB;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 94
    invoke-virtual {v0}, Lcom/keepassdroid/database/edit/SaveDB;->run()V

    return-void
.end method
