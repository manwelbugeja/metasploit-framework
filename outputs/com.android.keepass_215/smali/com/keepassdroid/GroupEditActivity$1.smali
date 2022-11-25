.class Lcom/keepassdroid/GroupEditActivity$1;
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

    .line 56
    iput-object p1, p0, Lcom/keepassdroid/GroupEditActivity$1;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/keepassdroid/GroupEditActivity$1;->this$0:Lcom/keepassdroid/GroupEditActivity;

    invoke-static {p1}, Lcom/keepassdroid/IconPickerActivity;->Launch(Landroid/app/Activity;)V

    return-void
.end method
