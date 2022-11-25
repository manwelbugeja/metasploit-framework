.class Lcom/keepassdroid/GroupEditActivity$3;
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

    .line 90
    iput-object p1, p0, Lcom/keepassdroid/GroupEditActivity$3;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/keepassdroid/GroupEditActivity$3;->this$0:Lcom/keepassdroid/GroupEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/keepassdroid/GroupEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$3;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-virtual {p1}, Lcom/keepassdroid/GroupEditActivity;->finish()V

    return-void
.end method
