.class public Lcom/keepassdroid/view/GroupHeaderView;
.super Landroid/widget/RelativeLayout;
.source "GroupHeaderView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/GroupHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/GroupHeaderView;->inflate(Landroid/content/Context;)V

    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c003f

    .line 45
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    iget-boolean p1, p1, Lcom/keepassdroid/Database;->readOnly:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0901b4

    .line 48
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/GroupHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
