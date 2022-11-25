.class public Lcom/keepassdroid/search/SearchResults;
.super Lcom/keepassdroid/GroupBaseActivity;
.source "SearchResults.java"


# instance fields
.field private mDb:Lcom/keepassdroid/Database;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;-><init>()V

    return-void
.end method

.method private getSearchStr(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 99
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private performSearch(Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keepassdroid/search/SearchResults;->query(Ljava/lang/String;)V

    return-void
.end method

.method private query(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/keepassdroid/search/SearchResults;->mDb:Lcom/keepassdroid/Database;

    invoke-virtual {v0, p1}, Lcom/keepassdroid/Database;->Search(Ljava/lang/String;)Lcom/keepassdroid/database/PwGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/search/SearchResults;->mGroup:Lcom/keepassdroid/database/PwGroup;

    .line 70
    iget-object p1, p0, Lcom/keepassdroid/search/SearchResults;->mGroup:Lcom/keepassdroid/database/PwGroup;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/keepassdroid/search/SearchResults;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object p1, p1, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p1, Lcom/keepassdroid/view/GroupViewOnlyView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupViewOnlyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    new-instance p1, Lcom/keepassdroid/view/GroupEmptyView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupEmptyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->setContentView(Landroid/view/View;)V

    :goto_1
    const p1, 0x7f090225

    .line 75
    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 76
    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 78
    invoke-virtual {p0}, Lcom/keepassdroid/search/SearchResults;->setGroupTitle()V

    .line 80
    new-instance p1, Lcom/keepassdroid/PwGroupListAdapter;

    iget-object v0, p0, Lcom/keepassdroid/search/SearchResults;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-direct {p1, p0, v0}, Lcom/keepassdroid/PwGroupListAdapter;-><init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/keepassdroid/search/SearchResults;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/keepassdroid/search/SearchResults;->setResult(I)V

    .line 52
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/search/SearchResults;->mDb:Lcom/keepassdroid/Database;

    .line 55
    invoke-virtual {p1}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/keepassdroid/search/SearchResults;->finish()V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/keepassdroid/search/SearchResults;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keepassdroid/search/SearchResults;->getSearchStr(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/keepassdroid/search/SearchResults;->performSearch(Ljava/lang/String;)V

    return-void
.end method
