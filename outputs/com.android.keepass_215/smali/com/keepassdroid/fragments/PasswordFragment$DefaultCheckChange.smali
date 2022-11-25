.class Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;
.super Ljava/lang/Object;
.source "PasswordFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fragments/PasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultCheckChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fragments/PasswordFragment;


# direct methods
.method private constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V
    .locals 0

    .line 650
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 660
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 665
    :goto_0
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    iget-object p2, p2, Lcom/keepassdroid/fragments/PasswordFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "defaultFileName"

    .line 666
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 669
    new-instance p1, Landroid/app/backup/BackupManager;

    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-virtual {p2}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method
