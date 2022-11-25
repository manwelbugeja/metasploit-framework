.class public Lcom/keepassdroid/view/EntrySection;
.super Landroid/widget/LinearLayout;
.source "EntrySection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/EntrySection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/keepassdroid/view/EntrySection;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 44
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/keepassdroid/view/EntrySection;->inflate(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setText(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/EntrySection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .locals 1

    const v0, 0x7f0c0031

    return v0
.end method

.method protected inflate(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/keepassdroid/view/EntrySection;->getLayout()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090220

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/keepassdroid/view/EntrySection;->setText(ILjava/lang/String;)V

    const p1, 0x7f090236

    .line 55
    invoke-direct {p0, p1, p4}, Lcom/keepassdroid/view/EntrySection;->setText(ILjava/lang/String;)V

    return-void
.end method
