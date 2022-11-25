.class public Lcom/keepassdroid/view/EntryEditSection;
.super Landroid/widget/RelativeLayout;
.source "EntryEditSection.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setText(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/EntryEditSection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public setData(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedString;)V
    .locals 1

    const v0, 0x7f090220

    .line 69
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/view/EntryEditSection;->setText(ILjava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedString;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090236

    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/view/EntryEditSection;->setText(ILjava/lang/String;)V

    const p1, 0x7f0901b1

    .line 72
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/EntryEditSection;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 73
    invoke-virtual {p2}, Lcom/keepassdroid/database/security/ProtectedString;->isProtected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
