.class Lcom/keepassdroid/GroupActivity$2;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/GroupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/GroupActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/GroupActivity;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/keepassdroid/GroupActivity$2;->this$0:Lcom/keepassdroid/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/keepassdroid/GroupActivity$2;->this$0:Lcom/keepassdroid/GroupActivity;

    iget-object v0, p1, Lcom/keepassdroid/GroupActivity;->mGroup:Lcom/keepassdroid/database/PwGroup;

    invoke-static {p1, v0}, Lcom/keepassdroid/EntryEditActivity;->Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwGroup;)V

    return-void
.end method
