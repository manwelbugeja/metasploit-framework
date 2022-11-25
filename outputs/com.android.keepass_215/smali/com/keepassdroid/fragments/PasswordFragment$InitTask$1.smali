.class Lcom/keepassdroid/fragments/PasswordFragment$InitTask$1;
.super Ljava/lang/Object;
.source "PasswordFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment$InitTask;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$1;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 566
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask$1;->this$1:Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    iget-object p1, p1, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/16 p2, 0x91

    .line 569
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x81

    .line 571
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method
