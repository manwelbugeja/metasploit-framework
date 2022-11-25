.class public Lcom/keepassdroid/view/FileNameView;
.super Landroid/widget/RelativeLayout;
.source "FileNameView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/FileNameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/FileNameView;->inflate(Landroid/content/Context;)V

    return-void
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 1

    const-string v0, "layout_inflater"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0038

    .line 47
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public updateExternalStorageWarning()V
    .locals 7

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const v0, 0x7f100165

    goto :goto_0

    :cond_0
    const-string v1, "mounted"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f100166

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    const v1, 0x7f090131

    .line 59
    invoke-virtual {p0, v1}, Lcom/keepassdroid/view/FileNameView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090130

    .line 60
    invoke-virtual {p0, v4}, Lcom/keepassdroid/view/FileNameView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 61
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eq v0, v2, :cond_2

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x3

    .line 67
    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    .line 69
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
