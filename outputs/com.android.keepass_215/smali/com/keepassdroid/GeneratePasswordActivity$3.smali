.class Lcom/keepassdroid/GeneratePasswordActivity$3;
.super Ljava/lang/Object;
.source "GeneratePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/GeneratePasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/GeneratePasswordActivity;


# direct methods
.method constructor <init>(Lcom/keepassdroid/GeneratePasswordActivity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$3;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$3;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    const v0, 0x7f0901a1

    invoke-virtual {p1, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.keepassdroid.password.generated_password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$3;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 83
    iget-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$3;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-virtual {p1}, Lcom/keepassdroid/GeneratePasswordActivity;->finish()V

    return-void
.end method
