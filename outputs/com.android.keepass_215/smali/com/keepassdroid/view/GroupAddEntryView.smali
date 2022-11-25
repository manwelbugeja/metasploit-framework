.class public Lcom/keepassdroid/view/GroupAddEntryView;
.super Landroid/widget/RelativeLayout;
.source "GroupAddEntryView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/GroupAddEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/GroupAddEntryView;->inflate(Landroid/content/Context;)V

    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c003c

    .line 43
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
