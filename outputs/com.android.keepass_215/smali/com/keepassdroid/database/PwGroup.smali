.class public abstract Lcom/keepassdroid/database/PwGroup;
.super Ljava/lang/Object;
.source "PwGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/database/PwGroup$GroupNameComparator;
    }
.end annotation


# instance fields
.field public childEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field public childGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field public icon:Lcom/keepassdroid/database/PwIconStandard;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/keepassdroid/database/PwGroup;->name:Ljava/lang/String;

    return-void
.end method

.method private searchEntriesSingle(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/SearchParameters;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)Z"
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lcom/keepassdroid/database/SearchParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/SearchParameters;

    .line 169
    iget-object v0, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 170
    new-instance v0, Lcom/keepassdroid/database/EntrySearchHandlerAll;

    invoke-direct {v0, p1, p2}, Lcom/keepassdroid/database/EntrySearchHandlerAll;-><init>(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/keepassdroid/database/EntrySearchHandler;->getInstance(Lcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)Lcom/keepassdroid/database/EntrySearchHandler;

    move-result-object v0

    :goto_0
    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/keepassdroid/database/PwGroup;->preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getIcon()Lcom/keepassdroid/database/PwIcon;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroup;->icon:Lcom/keepassdroid/database/PwIconStandard;

    return-object v0
.end method

.method public abstract getId()Lcom/keepassdroid/database/PwGroupId;
.end method

.method public abstract getLastMod()Ljava/util/Date;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParent()Lcom/keepassdroid/database/PwGroup;
.end method

.method public initNewGroup(Ljava/lang/String;Lcom/keepassdroid/database/PwGroupId;)V
    .locals 0

    .line 71
    invoke-virtual {p0, p2}, Lcom/keepassdroid/database/PwGroup;->setId(Lcom/keepassdroid/database/PwGroupId;)V

    .line 72
    iput-object p1, p0, Lcom/keepassdroid/database/PwGroup;->name:Ljava/lang/String;

    return-void
.end method

.method public isContainedIn(Lcom/keepassdroid/database/PwGroup;)Z
    .locals 1

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_0
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/GroupHandler<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;",
            "Lcom/keepassdroid/database/EntryHandler<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 182
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwEntry;

    .line 183
    invoke-virtual {p2, v2}, Lcom/keepassdroid/database/EntryHandler;->operate(Lcom/keepassdroid/database/PwEntry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/PwGroup;

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p1, v2}, Lcom/keepassdroid/database/GroupHandler;->operate(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 192
    :cond_2
    invoke-virtual {v2, p1, p2}, Lcom/keepassdroid/database/PwGroup;->preOrderTraverseTree(Lcom/keepassdroid/database/GroupHandler;Lcom/keepassdroid/database/EntryHandler;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public searchEntries(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keepassdroid/database/SearchParameters;",
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 108
    :cond_1
    iget-object v0, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    invoke-static {v0}, Lcom/keepassdroid/utils/StrUtil;->splitSearchTerms(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    iget-boolean v1, p1, Lcom/keepassdroid/database/SearchParameters;->regularExpression:Z

    if-eqz v1, :cond_2

    goto/16 :goto_5

    .line 115
    :cond_2
    new-instance v1, Lcom/keepassdroid/database/PwGroup$1;

    invoke-direct {v1, p0}, Lcom/keepassdroid/database/PwGroup$1;-><init>(Lcom/keepassdroid/database/PwGroup;)V

    .line 123
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 125
    iget-object v1, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 127
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    .line 133
    iget-object v7, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 134
    iget-object v7, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    .line 135
    iget-object v7, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 138
    :goto_1
    invoke-direct {p0, p1, v6}, Lcom/keepassdroid/database/PwGroup;->searchEntriesSingle(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    .line 143
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_7

    .line 145
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keepassdroid/database/PwEntry;

    .line 146
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 147
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object v3, v8

    goto :goto_3

    :cond_7
    move-object v3, v6

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    .line 159
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_9
    iput-object v1, p1, Lcom/keepassdroid/database/SearchParameters;->searchString:Ljava/lang/String;

    return-void

    .line 110
    :cond_a
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/database/PwGroup;->searchEntriesSingle(Lcom/keepassdroid/database/SearchParameters;Ljava/util/List;)Z

    return-void
.end method

.method public abstract setId(Lcom/keepassdroid/database/PwGroupId;)V
.end method

.method public abstract setLastAccessTime(Ljava/util/Date;)V
.end method

.method public abstract setLastModificationTime(Ljava/util/Date;)V
.end method

.method public abstract setParent(Lcom/keepassdroid/database/PwGroup;)V
.end method

.method public sortEntriesByName()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    new-instance v1, Lcom/keepassdroid/database/PwEntry$EntryNameComparator;

    invoke-direct {v1}, Lcom/keepassdroid/database/PwEntry$EntryNameComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sortGroupsByName()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    new-instance v1, Lcom/keepassdroid/database/PwGroup$GroupNameComparator;

    invoke-direct {v1}, Lcom/keepassdroid/database/PwGroup$GroupNameComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public touch(ZZ)V
    .locals 1

    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 91
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwGroup;->setLastAccessTime(Ljava/util/Date;)V

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/keepassdroid/database/PwGroup;->setLastModificationTime(Ljava/util/Date;)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/database/PwGroup;->getParent()Lcom/keepassdroid/database/PwGroup;

    move-result-object v0

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .line 99
    invoke-virtual {v0, p1, p2}, Lcom/keepassdroid/database/PwGroup;->touch(ZZ)V

    :cond_1
    return-void
.end method
