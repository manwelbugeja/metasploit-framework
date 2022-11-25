.class Lcom/keepassdroid/GeneratePasswordActivity$4;
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

    .line 88
    iput-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$4;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$4;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->setResult(I)V

    .line 93
    iget-object p1, p0, Lcom/keepassdroid/GeneratePasswordActivity$4;->this$0:Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-virtual {p1}, Lcom/keepassdroid/GeneratePasswordActivity;->finish()V

    return-void
.end method
