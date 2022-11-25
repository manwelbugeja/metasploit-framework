.class public Lcom/keepassdroid/view/PasswordTextViewSelect;
.super Lcom/keepassdroid/view/TextViewSelect;
.source "PasswordTextViewSelect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/TextViewSelect;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/view/TextViewSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/view/TextViewSelect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/keepassdroid/view/PasswordTextViewSelect;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fonts/DejaVuSansMono.ttf"

    invoke-static {v0, v1}, Lcom/keepassdroid/assets/TypefaceFactory;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/PasswordTextViewSelect;->getTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/keepassdroid/view/TextViewSelect;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/keepassdroid/view/PasswordTextViewSelect;->getTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/keepassdroid/view/TextViewSelect;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
