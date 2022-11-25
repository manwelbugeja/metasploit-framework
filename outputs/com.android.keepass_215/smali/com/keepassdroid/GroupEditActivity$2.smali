.class Lcom/keepassdroid/GroupEditActivity$2;
.super Ljava/lang/Object;
.source "GroupEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/GroupEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/GroupEditActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/GroupEditActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Lcom/keepassdroid/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "name"

    .line 75
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-static {p1}, Lcom/keepassdroid/GroupEditActivity;->access$000(Lcom/keepassdroid/GroupEditActivity;)I

    move-result p1

    const-string v1, "icon_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/GroupEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-virtual {p1}, Lcom/keepassdroid/GroupEditActivity;->finish()V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$2;->this$0:Lcom/keepassdroid/GroupEditActivity;

    const v0, 0x7f10007d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
