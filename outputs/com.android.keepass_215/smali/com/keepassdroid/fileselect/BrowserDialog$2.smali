.class Lcom/keepassdroid/fileselect/BrowserDialog$2;
.super Ljava/lang/Object;
.source "BrowserDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/BrowserDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fileselect/BrowserDialog;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fileselect/BrowserDialog;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/keepassdroid/fileselect/BrowserDialog$2;->this$0:Lcom/keepassdroid/fileselect/BrowserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/keepassdroid/fileselect/BrowserDialog$2;->this$0:Lcom/keepassdroid/fileselect/BrowserDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100123

    invoke-static {p1, v0}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;I)V

    .line 60
    iget-object p1, p0, Lcom/keepassdroid/fileselect/BrowserDialog$2;->this$0:Lcom/keepassdroid/fileselect/BrowserDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->cancel()V

    return-void
.end method
