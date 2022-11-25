.class public Lcom/keepassdroid/view/TextViewSelect;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextViewSelect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/view/TextViewSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/keepassdroid/view/TextViewSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/TextViewSelect;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/keepassdroid/view/TextViewSelect;->setFocusableInTouchMode(Z)V

    return-void
.end method


# virtual methods
.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .line 49
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 59
    sget-object p2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
