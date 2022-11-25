.class final Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "PasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/fragments/PasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AfterLoad"
.end annotation


# instance fields
.field private db:Lcom/keepassdroid/Database;

.field final synthetic this$0:Lcom/keepassdroid/fragments/PasswordFragment;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/os/Handler;Lcom/keepassdroid/Database;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    .line 773
    invoke-direct {p0, p2}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Landroid/os/Handler;)V

    .line 775
    iput-object p3, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->db:Lcom/keepassdroid/Database;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->db:Lcom/keepassdroid/Database;

    iget-boolean v0, v0, Lcom/keepassdroid/Database;->passwordEncodingError:Z

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;

    invoke-direct {v0}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;-><init>()V

    .line 782
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    new-instance v2, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad$1;

    invoke-direct {v2, p0}, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad$1;-><init>(Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;)V

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/dialog/PasswordEncodingDialogHelper;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 792
    :cond_0
    iget-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->mSuccess:Z

    if-eqz v0, :cond_3

    .line 793
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$500(Lcom/keepassdroid/fragments/PasswordFragment;)Lcom/keepassdroid/biometric/BiometricHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/biometric/BiometricHelper;->initEncryptData()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$500(Lcom/keepassdroid/fragments/PasswordFragment;)Lcom/keepassdroid/biometric/BiometricHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keepassdroid/biometric/BiometricHelper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/keepassdroid/fragments/PasswordFragment;->access$202(Lcom/keepassdroid/fragments/PasswordFragment;I)I

    .line 800
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2200(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/biometric/BiometricPrompt;

    move-result-object v1

    iget-object v2, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v2}, Lcom/keepassdroid/fragments/PasswordFragment;->access$2100(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v2

    new-instance v3, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v3, v0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    invoke-virtual {v1, v2, v3}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$400(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 808
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;)V

    goto :goto_0

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;->displayMessage(Landroidx/appcompat/app/AppCompatActivity;)V

    :cond_4
    :goto_0
    return-void
.end method
