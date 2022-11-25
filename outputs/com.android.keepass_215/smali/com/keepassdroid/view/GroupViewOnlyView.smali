.class public Lcom/keepassdroid/view/GroupViewOnlyView;
.super Landroid/widget/RelativeLayout;
.source "GroupViewOnlyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/GroupViewOnlyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/GroupViewOnlyView;->inflate(Landroid/content/Context;)V

    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c003c

    .line 44
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09004d

    .line 47
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/GroupViewOnlyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09004c

    .line 50
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/GroupViewOnlyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900ad

    .line 53
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/GroupViewOnlyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090112

    .line 56
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/GroupViewOnlyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    const/4 v1, -0x1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    return-void
.end method
