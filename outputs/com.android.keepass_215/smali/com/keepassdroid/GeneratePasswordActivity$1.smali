.class Lcom/keepassdroid/GeneratePasswordActivity$1;
.super Ljava/lang/Object;
.source "GeneratePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/GeneratePasswordActivity;
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

    .line 45
    iput-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$1;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 47
    check-cast p1, Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/keepassdroid/GeneratePasswordActivity$1;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 50
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
