.class public Lcom/keepassdroid/database/edit/DeleteEntry;
.super Lcom/keepassdroid/database/edit/RunnableOnFinish;
.source "DeleteEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mDb:Lcom/keepassdroid/Database;

.field private mDontSave:Z

.field private mEntry:Lcom/keepassdroid/database/PwEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 41
    invoke-direct/range {v0 .. v5}, Lcom/keepassdroid/database/edit/DeleteEntry;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p4}, Lcom/keepassdroid/database/edit/RunnableOnFinish;-><init>(Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 47
    iput-object p2, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDb:Lcom/keepassdroid/Database;

    .line 48
    iput-object p3, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 49
    iput-boolean p5, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDontSave:Z

    .line 50
    iput-object p1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/database/edit/DeleteEntry;)Lcom/keepassdroid/Database;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDb:Lcom/keepassdroid/Database;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDb:Lcom/keepassdroid/Database;

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 57
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v5

    .line 60
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwDatabase;->canRecycle(Lcom/keepassdroid/database/PwEntry;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwDatabase;->recycle(Lcom/keepassdroid/database/PwEntry;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwDatabase;->deleteEntry(Lcom/keepassdroid/database/PwEntry;)V

    .line 69
    :goto_0
    new-instance v0, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;

    iget-object v4, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    iget-object v6, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mEntry:Lcom/keepassdroid/database/PwEntry;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/keepassdroid/database/edit/DeleteEntry$AfterDelete;-><init>(Lcom/keepassdroid/database/edit/DeleteEntry;Lcom/keepassdroid/database/edit/OnFinish;Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/PwEntry;Z)V

    iput-object v0, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    .line 72
    new-instance v0, Lcom/keepassdroid/database/edit/SaveDB;

    iget-object v1, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDb:Lcom/keepassdroid/Database;

    iget-object v3, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mFinish:Lcom/keepassdroid/database/edit/OnFinish;

    iget-boolean v4, p0, Lcom/keepassdroid/database/edit/DeleteEntry;->mDontSave:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keepassdroid/database/edit/SaveDB;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 73
    invoke-virtual {v0}, Lcom/keepassdroid/database/edit/SaveDB;->run()V

    return-void
.end method
