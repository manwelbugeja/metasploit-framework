.class public Lcom/keepassdroid/view/PwGroupView;
.super Lcom/keepassdroid/view/ClickView;
.source "PwGroupView.java"


# static fields
.field protected static final MENU_OPEN:I = 0x1


# instance fields
.field protected mAct:Lcom/keepassdroid/GroupBaseActivity;

.field protected mPw:Lcom/keepassdroid/database/PwGroup;

.field protected mTv:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V
    .locals 3

    .line 57
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/ClickView;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p1, p0, Lcom/keepassdroid/view/PwGroupView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    .line 60
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090114

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keepassdroid/view/PwGroupView;->mTv:Landroid/widget/TextView;

    .line 63
    invoke-static {p1}, Lcom/keepassdroid/settings/PrefsUtil;->getListTextSize(Landroid/content/Context;)F

    move-result p1

    .line 64
    iget-object v1, p0, Lcom/keepassdroid/view/PwGroupView;->mTv:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f090111

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr p1, v2

    .line 67
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    invoke-direct {p0, v0, p2}, Lcom/keepassdroid/view/PwGroupView;->populateView(Landroid/view/View;Lcom/keepassdroid/database/PwGroup;)V

    .line 71
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/keepassdroid/view/PwGroupView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getInstance(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)Lcom/keepassdroid/view/PwGroupView;
    .locals 1

    .line 49
    instance-of v0, p1, Lcom/keepassdroid/database/PwGroupV3;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/keepassdroid/view/PwGroupViewV3;

    invoke-direct {v0, p0, p1}, Lcom/keepassdroid/view/PwGroupViewV3;-><init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Lcom/keepassdroid/view/PwGroupView;

    invoke-direct {v0, p0, p1}, Lcom/keepassdroid/view/PwGroupView;-><init>(Lcom/keepassdroid/GroupBaseActivity;Lcom/keepassdroid/database/PwGroup;)V

    return-object v0
.end method

.method private launchGroup()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/keepassdroid/view/PwGroupView;->mAct:Lcom/keepassdroid/GroupBaseActivity;

    iget-object v1, p0, Lcom/keepassdroid/view/PwGroupView;->mPw:Lcom/keepassdroid/database/PwGroup;

    invoke-static {v0, v1}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method private populateView(Landroid/view/View;Lcom/keepassdroid/database/PwGroup;)V
    .locals 3

    .line 77
    iput-object p2, p0, Lcom/keepassdroid/view/PwGroupView;->mPw:Lcom/keepassdroid/database/PwGroup;

    const v0, 0x7f090110

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 80
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {p0}, Lcom/keepassdroid/view/PwGroupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwGroup;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/keepassdroid/icons/DrawableFactory;->assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V

    .line 82
    iget-object p1, p0, Lcom/keepassdroid/view/PwGroupView;->mTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwGroup;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public convertView(Lcom/keepassdroid/database/PwGroup;)V
    .locals 0

    .line 86
    invoke-direct {p0, p0, p1}, Lcom/keepassdroid/view/PwGroupView;->populateView(Landroid/view/View;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method

.method public onClick()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/keepassdroid/view/PwGroupView;->launchGroup()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/keepassdroid/view/PwGroupView;->launchGroup()V

    return v0
.end method

.method public onCreateMenu(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f1000f2

    .line 99
    invoke-interface {p1, p2, v0, p2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method
