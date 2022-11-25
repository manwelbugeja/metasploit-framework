.class public Lcom/keepassdroid/EntryActivityV4;
.super Lcom/keepassdroid/EntryActivity;
.source "EntryActivityV4.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/keepassdroid/EntryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected fillData(Z)V
    .locals 8

    .line 46
    invoke-super {p0, p1}, Lcom/keepassdroid/EntryActivity;->fillData(Z)V

    const v0, 0x7f0900ea

    .line 48
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/EntryActivityV4;->mEntry:Lcom/keepassdroid/database/PwEntry;

    check-cast p1, Lcom/keepassdroid/database/PwEntryV4;

    .line 56
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 57
    invoke-static {v1}, Lcom/keepassdroid/utils/SprEngineV4;->getInstance(Lcom/keepassdroid/database/PwDatabase;)Lcom/keepassdroid/utils/SprEngine;

    move-result-object v2

    .line 60
    iget-object v3, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 61
    iget-object v3, p1, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 64
    invoke-static {v5}, Lcom/keepassdroid/database/PwEntryV4;->IsStandardString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 65
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-virtual {v4}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    new-instance v6, Lcom/keepassdroid/view/EntrySection;

    const/4 v7, 0x0

    invoke-virtual {v2, v4, p1, v1}, Lcom/keepassdroid/utils/SprEngine;->compile(Ljava/lang/String;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v7, v5, v4}, Lcom/keepassdroid/view/EntrySection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected setEntryView()V
    .locals 1

    const v0, 0x7f0c0034

    .line 41
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivityV4;->setContentView(I)V

    return-void
.end method
