.class Lcom/keepassdroid/EntryEditActivityV4$1;
.super Ljava/lang/Object;
.source "EntryEditActivityV4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/EntryEditActivityV4;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/EntryEditActivityV4;


# direct methods
.method constructor <init>(Lcom/keepassdroid/EntryEditActivityV4;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/keepassdroid/EntryEditActivityV4$1;->this$0:Lcom/keepassdroid/EntryEditActivityV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 88
    iget-object p1, p0, Lcom/keepassdroid/EntryEditActivityV4$1;->this$0:Lcom/keepassdroid/EntryEditActivityV4;

    const v0, 0x7f09004e

    invoke-virtual {p1, v0}, Lcom/keepassdroid/EntryEditActivityV4;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivityV4$1;->this$0:Lcom/keepassdroid/EntryEditActivityV4;

    invoke-static {v0}, Lcom/keepassdroid/EntryEditActivityV4;->access$000(Lcom/keepassdroid/EntryEditActivityV4;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c002f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/view/EntryEditSection;

    .line 91
    new-instance v1, Lcom/keepassdroid/database/security/ProtectedString;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Lcom/keepassdroid/view/EntryEditSection;->setData(Ljava/lang/String;Lcom/keepassdroid/database/security/ProtectedString;)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/keepassdroid/EntryEditActivityV4$1;->this$0:Lcom/keepassdroid/EntryEditActivityV4;

    invoke-static {p1}, Lcom/keepassdroid/EntryEditActivityV4;->access$100(Lcom/keepassdroid/EntryEditActivityV4;)Landroid/widget/ScrollView;

    move-result-object p1

    new-instance v0, Lcom/keepassdroid/EntryEditActivityV4$1$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivityV4$1$1;-><init>(Lcom/keepassdroid/EntryEditActivityV4$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
