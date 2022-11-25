.class public Lcom/keepassdroid/EntryEditActivityV3;
.super Lcom/keepassdroid/EntryEditActivity;
.source "EntryEditActivityV3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/keepassdroid/EntryEditActivity;-><init>()V

    return-void
.end method

.method protected static putParentId(Landroid/content/Intent;Ljava/lang/String;Lcom/keepassdroid/database/PwGroupV3;)V
    .locals 0

    .line 53
    iget p2, p2, Lcom/keepassdroid/database/PwGroupV3;->groupId:I

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected getParentGroupId(Landroid/content/Intent;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroupId;
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 60
    new-instance p2, Lcom/keepassdroid/database/PwGroupIdV3;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/PwGroupIdV3;-><init>(I)V

    return-object p2
.end method

.method protected populateNewEntry(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/PwEntry;
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->populateNewEntry(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object p1

    .line 36
    iget v0, p0, Lcom/keepassdroid/EntryEditActivityV3;->mSelectedIconID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 37
    iget-boolean v0, p0, Lcom/keepassdroid/EntryEditActivityV3;->mIsNew:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v0

    iput-object v0, p1, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivityV3;->mEntry:Lcom/keepassdroid/database/PwEntry;

    iget-object v0, v0, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    iput-object v0, p1, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->iconFactory:Lcom/keepassdroid/database/PwIconFactory;

    iget v1, p0, Lcom/keepassdroid/EntryEditActivityV3;->mSelectedIconID:I

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwIconFactory;->getIcon(I)Lcom/keepassdroid/database/PwIconStandard;

    move-result-object v0

    iput-object v0, p1, Lcom/keepassdroid/database/PwEntry;->icon:Lcom/keepassdroid/database/PwIconStandard;

    :goto_0
    return-object p1
.end method
