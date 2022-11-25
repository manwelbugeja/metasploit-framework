.class public Lcom/keepassdroid/EntryEditActivityV4;
.super Lcom/keepassdroid/EntryEditActivity;
.source "EntryEditActivityV4.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private scroll:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/keepassdroid/EntryEditActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/EntryEditActivityV4;)Landroid/view/LayoutInflater;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/keepassdroid/EntryEditActivityV4;->inflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keepassdroid/EntryEditActivityV4;)Landroid/widget/ScrollView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/keepassdroid/EntryEditActivityV4;->scroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method protected static putParentId(Landroid/content/Intent;Ljava/lang/String;Lcom/keepassdroid/database/PwGroupV4;)V
    .locals 0

    .line 59
    invoke-virtual {p2}, Lcom/keepassdroid/database/PwGroupV4;->getId()Lcom/keepassdroid/database/PwGroupId;

    move-result-object p2

    .line 60
    check-cast p2, Lcom/keepassdroid/database/PwGroupIdV4;

    .line 62
    invoke-virtual {p2}, Lcom/keepassdroid/database/PwGroupIdV4;->getId()Ljava/util/UUID;

    move-result-object p2

    invoke-static {p2}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public deleteAdvancedString(Landroid/view/View;)V
    .locals 3

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/view/EntryEditSection;

    const v0, 0x7f09004e

    .line 181
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 183
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/view/EntryEditSection;

    if-ne v2, p1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 187
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected fillData()V
    .locals 7

    .line 119
    invoke-super {p0}, Lcom/keepassdroid/EntryEditActivity;->fillData()V

    .line 121
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivityV4;->mEntry:Lcom/keepassdroid/database/PwEntry;

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    const v1, 0x7f09004e

    .line 123
    invoke-virtual {p0, v1}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 125
    iget-object v2, v0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 126
    iget-object v0, v0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-static {v3}, Lcom/keepassdroid/database/PwEntryV4;->IsStandardString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/keepassdroid/EntryEditActivityV4;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0c002f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/keepassdroid/view/EntryEditSection;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-virtual {v4, v3, v2}, Lcom/keepassdroid/view/EntryEditSection;->setData(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedString;)V

    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getParentGroupId(Landroid/content/Intent;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroupId;
    .locals 0

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/keepassdroid/database/PwGroupIdV4;

    invoke-direct {p2, p1}, Lcom/keepassdroid/database/PwGroupIdV4;-><init>(Ljava/util/UUID;)V

    return-object p2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "layout_inflater"

    .line 76
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivityV4;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keepassdroid/EntryEditActivityV4;->inflater:Landroid/view/LayoutInflater;

    .line 78
    invoke-super {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0900de

    .line 80
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/keepassdroid/EntryEditActivityV4;->scroll:Landroid/widget/ScrollView;

    const p1, 0x7f09004b

    .line 82
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 84
    new-instance v0, Lcom/keepassdroid/EntryEditActivityV4$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivityV4$1;-><init>(Lcom/keepassdroid/EntryEditActivityV4;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09011e

    .line 105
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const/16 v0, 0x8

    .line 106
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    const p1, 0x7f0900b2

    .line 108
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    const v2, 0x7f0900e1

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v0, 0x7f0900e6

    .line 112
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method

.method protected populateNewEntry()Lcom/keepassdroid/database/PwEntry;
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivityV4;->mEntry:Lcom/keepassdroid/database/PwEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwEntry;->clone(Z)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    .line 144
    iget-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->history:Ljava/util/ArrayList;

    .line 145
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    check-cast v1, Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-virtual {v0, v1}, Lcom/keepassdroid/database/PwEntryV4;->createBackup(Lcom/keepassdroid/database/PwDatabaseV4;)V

    .line 147
    invoke-super {p0, v0}, Lcom/keepassdroid/EntryEditActivity;->populateNewEntry(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntryV4;

    .line 149
    iget-object v1, v0, Lcom/keepassdroid/database/PwEntryV4;->strings:Ljava/util/HashMap;

    .line 152
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 153
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/keepassdroid/database/PwEntryV4;->IsStandardString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const v2, 0x7f09004e

    .line 160
    invoke-virtual {p0, v2}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 161
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 162
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f090220

    .line 164
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 165
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090236

    .line 167
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 168
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0901b1

    .line 170
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 171
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 173
    new-instance v7, Lcom/keepassdroid/database/security/ProtectedString;

    invoke-direct {v7, v4, v6}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected validateBeforeSaving()Z
    .locals 6

    .line 195
    invoke-super {p0}, Lcom/keepassdroid/EntryEditActivity;->validateBeforeSaving()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f09004e

    .line 199
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 200
    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/keepassdroid/view/EntryEditSection;

    const v5, 0x7f090220

    .line 203
    invoke-virtual {v3, v5}, Lcom/keepassdroid/view/EntryEditSection;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 204
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 206
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const v0, 0x7f100084

    .line 207
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_3
    return v4
.end method
