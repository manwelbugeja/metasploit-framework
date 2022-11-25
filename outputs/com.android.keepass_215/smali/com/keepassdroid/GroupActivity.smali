.class public abstract Lcom/keepassdroid/GroupActivity;
.super Lcom/keepassdroid/GroupBaseActivity;
.source "GroupActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Group Activity:"

.field public static final UNINIT:I = -0x1


# instance fields
.field protected addEntryEnabled:Z

.field protected addGroupEnabled:Z

.field protected isRoot:Z

.field protected readOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->addGroupEnabled:Z

    .line 61
    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->addEntryEnabled:Z

    .line 62
    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->isRoot:Z

    .line 63
    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->readOnly:Z

    return-void
.end method

.method public static Launch(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, v0}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public static Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwGroup;)V
    .locals 3

    .line 75
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 76
    instance-of v1, v0, Lcom/keepassdroid/database/PwDatabaseV3;

    const-string v2, "entry"

    if-eqz v1, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/GroupActivityV3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    .line 80
    check-cast p1, Lcom/keepassdroid/database/PwGroupV3;

    .line 81
    iget p1, p1, Lcom/keepassdroid/database/PwGroupV3;->groupId:I

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, v0, Lcom/keepassdroid/database/PwDatabaseV4;

    if-eqz v0, :cond_2

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/GroupActivityV4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    .line 87
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    .line 88
    iget-object p1, p1, Lcom/keepassdroid/database/PwGroupV4;->uuid:Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const-string p0, "Group Activity:"

    const-string p1, "Tried to launch with null db"

    .line 92
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/keepassdroid/GroupBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "icon_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 217
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 218
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v4, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    new-instance v5, Lcom/keepassdroid/GroupBaseActivity$RefreshTask;

    invoke-direct {v5, p0, p1}, Lcom/keepassdroid/GroupBaseActivity$RefreshTask;-><init>(Lcom/keepassdroid/GroupBaseActivity;Landroid/os/Handler;)V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/keepassdroid/database/edit/AddGroup;->getInstance(Landroid/content/Context;Lcom/keepassdroid/Database;Ljava/lang/String;ILcom/keepassdroid/database/PwGroup;Lcom/keepassdroid/database/edit/OnFinish;Z)Lcom/keepassdroid/database/edit/AddGroup;

    move-result-object p1

    .line 219
    new-instance p2, Lcom/keepassdroid/ProgressTask;

    const p3, 0x7f100149

    invoke-direct {p2, p0, p1, p3}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 220
    invoke-virtual {p2}, Lcom/keepassdroid/ProgressTask;->run()V

    :goto_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 201
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v0, Lcom/keepassdroid/view/ClickView;

    .line 203
    invoke-virtual {v0, p1}, Lcom/keepassdroid/view/ClickView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 107
    invoke-super {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setResult(I)V

    const-string v0, "Group Activity:"

    const-string v1, "Creating group view"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupActivity;->retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupId;

    move-result-object v1

    .line 120
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v2

    .line 121
    iget-boolean v3, v2, Lcom/keepassdroid/Database;->readOnly:Z

    iput-boolean v3, p0, Lcom/keepassdroid/GroupActivity;->readOnly:Z

    .line 122
    iget-object v3, v2, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v3, v3, Lcom/keepassdroid/database/PwDatabase;->rootGroup:Lcom/keepassdroid/database/PwGroup;

    if-nez v1, :cond_1

    .line 124
    iput-object v3, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    goto :goto_0

    .line 126
    :cond_1
    iget-object v2, v2, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object v2, v2, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keepassdroid/database/PwGroup;

    iput-object v1, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    :goto_0
    const-string v1, "Retrieved group"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    if-nez v1, :cond_2

    const-string p1, "Group was null"

    .line 131
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    if-ne v1, v3, :cond_3

    const/4 p1, 0x1

    :cond_3
    iput-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->isRoot:Z

    .line 137
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->setupButtons()V

    .line 139
    iget-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->addGroupEnabled:Z

    const v1, 0x7f09004d

    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/keepassdroid/GroupActivity;->addEntryEnabled:Z

    if-eqz v2, :cond_4

    .line 140
    new-instance p1, Lcom/keepassdroid/view/GroupAddEntryView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupAddEntryView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 142
    new-instance p1, Lcom/keepassdroid/view/GroupRootView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupRootView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 143
    :cond_5
    iget-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->addEntryEnabled:Z

    if-eqz p1, :cond_6

    .line 144
    new-instance p1, Lcom/keepassdroid/view/GroupAddEntryView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupAddEntryView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setContentView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 146
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_6
    new-instance p1, Lcom/keepassdroid/view/GroupViewOnlyView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupViewOnlyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setContentView(Landroid/view/View;)V

    :goto_1
    const p1, 0x7f090225

    .line 150
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 151
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 153
    iget-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->addGroupEnabled:Z

    if-eqz p1, :cond_7

    .line 155
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 156
    new-instance v1, Lcom/keepassdroid/GroupActivity$1;

    invoke-direct {v1, p0}, Lcom/keepassdroid/GroupActivity$1;-><init>(Lcom/keepassdroid/GroupActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_7
    iget-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->addEntryEnabled:Z

    if-eqz p1, :cond_8

    const p1, 0x7f09004c

    .line 166
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 167
    new-instance v1, Lcom/keepassdroid/GroupActivity$2;

    invoke-direct {v1, p0}, Lcom/keepassdroid/GroupActivity$2;-><init>(Lcom/keepassdroid/GroupActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :cond_8
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->setGroupTitle()V

    .line 176
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->setGroupIcon()V

    .line 178
    new-instance p1, Lcom/keepassdroid/PwGroupListAdapter;

    iget-object v1, p0, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-direct {p1, p0, v1}, Lcom/keepassdroid/PwGroupListAdapter;-><init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupActivity;->registerForContextMenu(Landroid/view/View;)V

    const-string p1, "Finished creating group"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-boolean p1, p0, Lcom/keepassdroid/GroupActivity;->isRoot:Z

    if-eqz p1, :cond_9

    .line 183
    invoke-virtual {p0}, Lcom/keepassdroid/GroupActivity;->showWarnings()V

    :cond_9
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 191
    move-object p2, p3

    check-cast p2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 192
    iget-object p2, p2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast p2, Lcom/keepassdroid/view/ClickView;

    .line 193
    invoke-virtual {p2, p1, p3}, Lcom/keepassdroid/view/ClickView;->onCreateMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method protected abstract retrieveGroupId(Landroid/content/Intent;)Lcom/keepassdroid/database/PwGroupId;
.end method

.method protected setupButtons()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->readOnly:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/keepassdroid/GroupActivity;->addGroupEnabled:Z

    return-void
.end method

.method protected showWarnings()V
    .locals 3

    .line 230
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-boolean v0, v0, Lcom/keepassdroid/Database;->readOnly:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f100150

    .line 233
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Lcom/keepassdroid/dialog/ReadOnlyDialog;

    invoke-direct {v0, p0}, Lcom/keepassdroid/dialog/ReadOnlyDialog;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
