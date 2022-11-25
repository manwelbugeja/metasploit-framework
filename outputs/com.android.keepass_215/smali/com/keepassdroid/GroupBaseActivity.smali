.class public abstract Lcom/keepassdroid/GroupBaseActivity;
.super Lcom/keepassdroid/LockCloseListActivity;
.source "GroupBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/GroupBaseActivity$AfterDeleteGroup;,
        Lcom/keepassdroid/GroupBaseActivity$RefreshTask;
    }
.end annotation


# static fields
.field public static final KEY_ENTRY:Ljava/lang/String; = "entry"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mGroup:Lcom/keepassdroid/database/PwGroup;

.field protected mList:Landroid/widget/ListView;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseListActivity;-><init>()V

    return-void
.end method

.method private ensureCorrectListView()V
    .locals 2

    const v0, 0x7f090112

    .line 153
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GroupBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lcom/keepassdroid/GroupBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/keepassdroid/GroupBaseActivity$1;-><init>(Lcom/keepassdroid/GroupBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method private setPassword()V
    .locals 1

    .line 266
    new-instance v0, Lcom/keepassdroid/SetPasswordDialog;

    invoke-direct {v0, p0}, Lcom/keepassdroid/SetPasswordDialog;-><init>(Landroid/app/Activity;)V

    .line 267
    invoke-virtual {v0}, Lcom/keepassdroid/SetPasswordDialog;->show()V

    return-void
.end method

.method private setSortMenuText(Landroid/view/Menu;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const v1, 0x7f100152

    .line 180
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f100151

    goto :goto_1

    :cond_1
    const v0, 0x7f100153

    :goto_1
    const v1, 0x7f09015e

    .line 190
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    return-void
.end method

.method private toggleSort()V
    .locals 4

    const v0, 0x7f100152

    .line 245
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GroupBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/keepassdroid/GroupBaseActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 247
    iget-object v2, p0, Lcom/keepassdroid/GroupBaseActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    xor-int/lit8 v1, v1, 0x1

    .line 248
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 252
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->invalidateOptionsMenu()V

    .line 255
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/keepassdroid/Database;->markAllGroupsAsDirty()V

    .line 258
    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;->ensureCorrectListView()V

    .line 149
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->finish()V

    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/GroupBaseActivity;->prefs:Landroid/content/SharedPreferences;

    .line 98
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->invalidateOptionsMenu()V

    .line 100
    new-instance p1, Lcom/keepassdroid/view/GroupViewOnlyView;

    invoke-direct {p1, p0}, Lcom/keepassdroid/view/GroupViewOnlyView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->setResult(I)V

    const p1, 0x7f090225

    .line 102
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 103
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 105
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->styleScrollBars()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 169
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0003

    .line 170
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/keepassdroid/GroupBaseActivity;->mAdapter:Landroid/widget/ListAdapter;

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/view/ClickView;

    .line 82
    invoke-virtual {p1}, Lcom/keepassdroid/view/ClickView;->onClick()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 240
    :pswitch_0
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 235
    :pswitch_1
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;->toggleSort()V

    return v1

    .line 223
    :pswitch_2
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->onSearchRequested()Z

    return v1

    .line 217
    :pswitch_3
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    .line 218
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupBaseActivity;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->finish()V

    return v1

    :pswitch_4
    const p1, 0x7f100060

    .line 209
    :try_start_0
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const p1, 0x7f100077

    .line 211
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1

    .line 231
    :pswitch_5
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;->setPassword()V

    return v1

    .line 227
    :pswitch_6
    invoke-static {p0}, Lcom/keepassdroid/settings/AppSettingsActivity;->Launch(Landroid/content/Context;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f090155
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 195
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/keepassdroid/GroupBaseActivity;->setSortMenuText(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/keepassdroid/LockCloseListActivity;->onResume()V

    .line 69
    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->refreshIfDirty()V

    return-void
.end method

.method public refreshIfDirty()V
    .locals 3

    .line 73
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    .line 74
    iget-object v1, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v2, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, v0, Lcom/keepassdroid/Database;->dirty:Ljava/util/Set;

    iget-object v1, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected setGroupIcon()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    if-eqz v0, :cond_0

    const v0, 0x7f09011d

    .line 136
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GroupBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {p0}, Lcom/keepassdroid/GroupBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-virtual {v3}, Lcom/keepassdroid/database/PwGroup;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/keepassdroid/icons/DrawableFactory;->assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V

    :cond_0
    return-void
.end method

.method protected setGroupTitle()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/keepassdroid/database/PwGroup;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090113

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f100140

    .line 127
    invoke-virtual {p0, v1}, Lcom/keepassdroid/GroupBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;->ensureCorrectListView()V

    .line 143
    iput-object p1, p0, Lcom/keepassdroid/GroupBaseActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 144
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/keepassdroid/LockCloseListActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method protected styleScrollBars()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/keepassdroid/GroupBaseActivity;->ensureCorrectListView()V

    .line 111
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mList:Landroid/widget/ListView;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 112
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    return-void
.end method
