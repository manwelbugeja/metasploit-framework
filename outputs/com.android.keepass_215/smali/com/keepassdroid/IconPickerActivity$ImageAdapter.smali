.class public Lcom/keepassdroid/IconPickerActivity$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/IconPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/keepassdroid/IconPickerActivity;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/IconPickerActivity;Landroid/content/Context;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/keepassdroid/IconPickerActivity$ImageAdapter;->this$0:Lcom/keepassdroid/IconPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/keepassdroid/IconPickerActivity$ImageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 84
    invoke-static {}, Lcom/keepassdroid/icons/Icons;->count()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 102
    iget-object p2, p0, Lcom/keepassdroid/IconPickerActivity$ImageAdapter;->this$0:Lcom/keepassdroid/IconPickerActivity;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Lcom/keepassdroid/IconPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0041

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090122

    .line 110
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090121

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 113
    invoke-static {p1}, Lcom/keepassdroid/icons/Icons;->iconToResId(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2
.end method
