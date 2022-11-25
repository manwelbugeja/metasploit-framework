.class public Lcom/keepassdroid/GroupEditActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "GroupEditActivity.java"


# static fields
.field public static final KEY_ICON_ID:Ljava/lang/String; = "icon_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field private mSelectedIconID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/app/Activity;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/GroupEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 45
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/GroupEditActivity;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/keepassdroid/GroupEditActivity;->mSelectedIconID:I

    return p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "icon_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/GroupEditActivity;->mSelectedIconID:I

    const p1, 0x7f09011e

    .line 110
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 111
    iget p2, p0, Lcom/keepassdroid/GroupEditActivity;->mSelectedIconID:I

    invoke-static {p2}, Lcom/keepassdroid/icons/Icons;->iconToResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 51
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->setContentView(I)V

    const p1, 0x7f100027

    .line 52
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->setTitle(I)V

    const p1, 0x7f09011e

    .line 54
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 55
    new-instance v0, Lcom/keepassdroid/GroupEditActivity$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GroupEditActivity$1;-><init>(Lcom/keepassdroid/GroupEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090191

    .line 63
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 64
    new-instance v0, Lcom/keepassdroid/GroupEditActivity$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GroupEditActivity$2;-><init>(Lcom/keepassdroid/GroupEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 88
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 89
    new-instance v0, Lcom/keepassdroid/GroupEditActivity$3;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GroupEditActivity$3;-><init>(Lcom/keepassdroid/GroupEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
