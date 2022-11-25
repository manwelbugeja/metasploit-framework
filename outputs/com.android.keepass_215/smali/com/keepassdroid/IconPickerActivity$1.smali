.class Lcom/keepassdroid/IconPickerActivity$1;
.super Ljava/lang/Object;
.source "IconPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/IconPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/IconPickerActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/IconPickerActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/keepassdroid/IconPickerActivity$1;->this$0:Lcom/keepassdroid/IconPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 62
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "icon_id"

    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    iget-object p2, p0, Lcom/keepassdroid/IconPickerActivity$1;->this$0:Lcom/keepassdroid/IconPickerActivity;

    const/16 p3, 0x3e8

    invoke-virtual {p2, p3, p1}, Lcom/keepassdroid/IconPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 67
    iget-object p1, p0, Lcom/keepassdroid/IconPickerActivity$1;->this$0:Lcom/keepassdroid/IconPickerActivity;

    invoke-virtual {p1}, Lcom/keepassdroid/IconPickerActivity;->finish()V

    return-void
.end method
