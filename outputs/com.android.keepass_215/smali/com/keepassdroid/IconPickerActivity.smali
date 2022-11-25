.class public Lcom/keepassdroid/IconPickerActivity;
.super Lcom/keepassdroid/LockCloseActivity;
.source "IconPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/IconPickerActivity$ImageAdapter;
    }
.end annotation


# static fields
.field public static final KEY_ICON_ID:Ljava/lang/String; = "icon_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseActivity;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/app/Activity;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/IconPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0042

    .line 53
    invoke-virtual {p0, p1}, Lcom/keepassdroid/IconPickerActivity;->setContentView(I)V

    const p1, 0x7f090005

    .line 55
    invoke-virtual {p0, p1}, Lcom/keepassdroid/IconPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 56
    new-instance v0, Lcom/keepassdroid/IconPickerActivity$ImageAdapter;

    invoke-direct {v0, p0, p0}, Lcom/keepassdroid/IconPickerActivity$ImageAdapter;-><init>(Lcom/keepassdroid/IconPickerActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Lcom/keepassdroid/IconPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/IconPickerActivity$1;-><init>(Lcom/keepassdroid/IconPickerActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
