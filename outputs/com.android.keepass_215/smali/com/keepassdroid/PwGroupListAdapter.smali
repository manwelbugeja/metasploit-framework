.class public Lcom/keepassdroid/PwGroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PwGroupListAdapter.java"


# instance fields
.field private entriesForViewing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entryComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/keepassdroid/database/PwEntry;",
            ">;"
        }
    .end annotation
.end field

.field private groupComp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field private groupsForViewing:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keepassdroid/database/PwGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mAct:Lcom/keepassdroid/GroupBaseActivity;

.field private mGroup:Lcom/keepassdroid/database/PwGroup;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    new-instance v0, Lcom/keepassdroid/database/PwEntry$EntryNameComparator;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwEntry$EntryNameComparator;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->entryComp:Ljava/util/Comparator;

    .line 46
    new-instance v0, Lcom/keepassdroid/database/PwGroup$GroupNameComparator;

    invoke-direct {v0}, Lcom/keepassdroid/database/PwGroup$GroupNameComparator;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupComp:Ljava/util/Comparator;

    .line 50
    iput-object p1, p0, Lcom/keepassdroid/PwGroupListAdapter;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    .line 51
    iput-object p2, p0, Lcom/keepassdroid/PwGroupListAdapter;->mGroup:Lcom/keepassdroid/database/PwGroup;

    .line 52
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/PwGroupListAdapter;->prefs:Landroid/content/SharedPreferences;

    .line 54
    invoke-direct {p0}, Lcom/keepassdroid/PwGroupListAdapter;->filterAndSort()V

    return-void
.end method

.method private createEntryView(ILandroid/view/View;)Lcom/keepassdroid/view/PwEntryView;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->entriesForViewing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntry;

    if-eqz p2, :cond_1

    .line 137
    instance-of v1, p2, Lcom/keepassdroid/view/PwEntryView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    check-cast p2, Lcom/keepassdroid/view/PwEntryView;

    .line 142
    invoke-virtual {p2, v0, p1}, Lcom/keepassdroid/view/PwEntryView;->convertView(Lcom/keepassdroid/database/PwEntry;I)V

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/keepassdroid/PwGroupListAdapter;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    invoke-static {p2, v0, p1}, Lcom/keepassdroid/view/PwEntryView;->getInstance(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwEntry;I)Lcom/keepassdroid/view/PwEntryView;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method private createGroupView(ILandroid/view/View;)Landroid/view/View;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    if-eqz p2, :cond_1

    .line 120
    instance-of v0, p2, Lcom/keepassdroid/view/PwGroupView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    check-cast p2, Lcom/keepassdroid/view/PwGroupView;

    .line 126
    invoke-virtual {p2, p1}, Lcom/keepassdroid/view/PwGroupView;->convertView(Lcom/keepassdroid/database/PwGroup;)V

    goto :goto_1

    .line 122
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/keepassdroid/PwGroupListAdapter;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    invoke-static {p2, p1}, Lcom/keepassdroid/view/PwGroupView;->getInstance(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)Lcom/keepassdroid/view/PwGroupView;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method private filterAndSort()V
    .locals 4

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->entriesForViewing:Ljava/util/List;

    const/4 v0, 0x0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v1, v1, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v1, v1, Lcom/keepassdroid/database/PwGroup;->childEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwEntry;

    .line 77
    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->isMetaStream()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/keepassdroid/PwGroupListAdapter;->entriesForViewing:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    const v2, 0x7f100152

    invoke-virtual {v1, v2}, Lcom/keepassdroid/GroupBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/PwGroupListAdapter;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    invoke-virtual {v2}, Lcom/keepassdroid/GroupBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v1, v1, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    .line 86
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->entriesForViewing:Ljava/util/List;

    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->entryComp:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 87
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupComp:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->mGroup:Lcom/keepassdroid/database/PwGroup;

    iget-object v0, v0, Lcom/keepassdroid/database/PwGroup;->childGroups:Ljava/util/List;

    iput-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    :goto_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/keepassdroid/PwGroupListAdapter;->entriesForViewing:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 107
    iget-object p3, p0, Lcom/keepassdroid/PwGroupListAdapter;->groupsForViewing:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/PwGroupListAdapter;->createGroupView(ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, p3

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/PwGroupListAdapter;->createEntryView(ILandroid/view/View;)Lcom/keepassdroid/view/PwEntryView;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 60
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 62
    invoke-direct {p0}, Lcom/keepassdroid/PwGroupListAdapter;->filterAndSort()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .line 67
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 69
    invoke-direct {p0}, Lcom/keepassdroid/PwGroupListAdapter;->filterAndSort()V

    return-void
.end method
