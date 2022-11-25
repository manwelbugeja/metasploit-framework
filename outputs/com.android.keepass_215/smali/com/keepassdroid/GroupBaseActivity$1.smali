.class Lcom/keepassdroid/GroupBaseActivity$1;
.super Ljava/lang/Object;
.source "GroupBaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/GroupBaseActivity;->ensureCorrectListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/GroupBaseActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/GroupBaseActivity;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/keepassdroid/GroupBaseActivity$1;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/keepassdroid/GroupBaseActivity$1;->this$0:Lcom/keepassdroid/GroupBaseActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/keepassdroid/GroupBaseActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
