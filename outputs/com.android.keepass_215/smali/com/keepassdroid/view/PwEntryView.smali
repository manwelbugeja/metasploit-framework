.class public Lcom/keepassdroid/view/PwEntryView;
.super Lcom/keepassdroid/view/ClickView;
.source "PwEntryView.java"


# static fields
.field private static final MENU_DELETE:I = 0x2

.field protected static final MENU_OPEN:I = 0x1


# instance fields
.field protected mAct:Lcom/keepassdroid/GroupBaseActivity;

.field private mPos:I

.field protected mPw:Lcom/keepassdroid/database/PwEntry;

.field private mTv:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwEntry;I)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/ClickView;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p1, p0, Lcom/keepassdroid/view/PwEntryView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    const v0, 0x7f0c0030

    const/4 v1, 0x0

    .line 59
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900e0

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keepassdroid/view/PwEntryView;->mTv:Landroid/widget/TextView;

    .line 61
    invoke-static {p1}, Lcom/keepassdroid/settings/PrefsUtil;->getListTextSize(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    invoke-direct {p0, v0, p2, p3}, Lcom/keepassdroid/view/PwEntryView;->populateView(Landroid/view/View;Lcom/keepassdroid/database/PwEntry;I)V

    .line 65
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/keepassdroid/view/PwEntryView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private deleteEntry()V
    .locals 7

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 100
    new-instance v1, Lcom/keepassdroid/database/edit/DeleteEntry;

    iget-object v2, p0, Lcom/keepassdroid/view/PwEntryView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v3

    iget-object v4, p0, Lcom/keepassdroid/view/PwEntryView;->mPw:Lcom/keepassdroid/database/PwEntry;

    new-instance v5, Lcom/keepassdroid/GroupBaseActivity$RefreshTask;

    iget-object v6, p0, Lcom/keepassdroid/view/PwEntryView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v0}, Lcom/keepassdroid/GroupBaseActivity$RefreshTask;-><init>(Lcom/keepassdroid/GroupBaseActivity;Landroid/os/Handler;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/keepassdroid/database/edit/DeleteEntry;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/PwEntry;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 101
    new-instance v0, Lcom/keepassdroid/ProgressTask;

    iget-object v2, p0, Lcom/keepassdroid/view/PwEntryView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    const v3, 0x7f100149

    invoke-direct {v0, v2, v1, v3}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 102
    invoke-virtual {v0}, Lcom/keepassdroid/ProgressTask;->run()V

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwEntry;I)Lcom/keepassdroid/view/PwEntryView;
    .locals 1

    .line 52
    new-instance v0, Lcom/keepassdroid/view/PwEntryView;

    invoke-direct {v0, p0, p1, p2}, Lcom/keepassdroid/view/PwEntryView;-><init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwEntry;I)V

    return-object v0
.end method

.method private launchEntry()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/keepassdroid/view/PwEntryView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    iget-object v1, p0, Lcom/keepassdroid/view/PwEntryView;->mPw:Lcom/keepassdroid/database/PwEntry;

    iget v2, p0, Lcom/keepassdroid/view/PwEntryView;->mPos:I

    invoke-static {v0, v1, v2}, Lcom/keepassdroid/EntryActivity;->Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwEntry;I)V

    return-void
.end method

.method private populateView(Landroid/view/View;Lcom/keepassdroid/database/PwEntry;I)V
    .locals 1

    .line 72
    iput-object p2, p0, Lcom/keepassdroid/view/PwEntryView;->mPw:Lcom/keepassdroid/database/PwEntry;

    .line 73
    iput p3, p0, Lcom/keepassdroid/view/PwEntryView;->mPos:I

    const p3, 0x7f0900d8

    .line 75
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 76
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p3

    iget-object p3, p3, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {p0}, Lcom/keepassdroid/view/PwEntryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/keepassdroid/icons/DrawableFactory;->assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V

    .line 78
    iget-object p1, p0, Lcom/keepassdroid/view/PwEntryView;->mTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/keepassdroid/view/PwEntryView;->mPw:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwEntry;->getDisplayTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public convertView(Lcom/keepassdroid/database/PwEntry;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p0, p1, p2}, Lcom/keepassdroid/view/PwEntryView;->populateView(Landroid/view/View;Lcom/keepassdroid/database/PwEntry;I)V

    return-void
.end method

.method public onClick()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/keepassdroid/view/PwEntryView;->launchEntry()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/view/PwEntryView;->deleteEntry()V

    return v0

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/keepassdroid/view/PwEntryView;->launchEntry()V

    return v0
.end method

.method public onCreateMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f1000f2

    .line 108
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 109
    iget-boolean v0, p0, Lcom/keepassdroid/view/PwEntryView;->readOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f1000ed

    .line 110
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public refreshTitle()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/keepassdroid/view/PwEntryView;->mTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keepassdroid/view/PwEntryView;->mPw:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
