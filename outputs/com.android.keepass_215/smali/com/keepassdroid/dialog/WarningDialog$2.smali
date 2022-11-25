.class Lcom/keepassdroid/dialog/WarningDialog$2;
.super Ljava/lang/Object;
.source "WarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/dialog/WarningDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/dialog/WarningDialog;


# direct methods
.method constructor <init>(Lcom/keepassdroid/dialog/WarningDialog;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/keepassdroid/dialog/WarningDialog$2;->this$0:Lcom/keepassdroid/dialog/WarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcom/keepassdroid/dialog/WarningDialog$2;->this$0:Lcom/keepassdroid/dialog/WarningDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/dialog/WarningDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 67
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/keepassdroid/dialog/WarningDialog$2;->this$0:Lcom/keepassdroid/dialog/WarningDialog;

    invoke-static {v0}, Lcom/keepassdroid/dialog/WarningDialog;->access$000(Lcom/keepassdroid/dialog/WarningDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    iget-object p1, p0, Lcom/keepassdroid/dialog/WarningDialog$2;->this$0:Lcom/keepassdroid/dialog/WarningDialog;

    invoke-virtual {p1}, Lcom/keepassdroid/dialog/WarningDialog;->dismiss()V

    return-void
.end method
