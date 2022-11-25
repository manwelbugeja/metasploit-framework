.class Lcom/keepassdroid/fragments/PasswordFragment$3;
.super Landroidx/biometric/BiometricPrompt$AuthenticationCallback;
.source "PasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fragments/PasswordFragment;->initBiometrics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/fragments/PasswordFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/content/Context;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    .line 326
    invoke-super {p0, p1, p2}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 328
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p2, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$700(Lcom/keepassdroid/fragments/PasswordFragment;I)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 329
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->val$context:Landroid/content/Context;

    const v0, 0x7f100034

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I

    move-result p1

    if-ne p1, p2, :cond_1

    .line 333
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 3

    .line 293
    invoke-super {p0}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 295
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->val$context:Landroid/content/Context;

    const v2, 0x7f100036

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 299
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->val$context:Landroid/content/Context;

    const v2, 0x7f100035

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    .line 305
    invoke-super {p0, p1}, Landroidx/biometric/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroidx/biometric/BiometricPrompt$AuthenticationResult;)V

    .line 307
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 309
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$400(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$500(Lcom/keepassdroid/fragments/PasswordFragment;)Lcom/keepassdroid/biometric/BiometricHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keepassdroid/biometric/BiometricHelper;->encryptData(Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/GroupActivity;->Launch(Landroid/app/Activity;)V

    .line 313
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$400(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {p1}, Lcom/keepassdroid/fragments/PasswordFragment;->access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 316
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    iget-object p1, p1, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$600(Lcom/keepassdroid/fragments/PasswordFragment;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 318
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment$3;->this$0:Lcom/keepassdroid/fragments/PasswordFragment;

    invoke-static {v0}, Lcom/keepassdroid/fragments/PasswordFragment;->access$500(Lcom/keepassdroid/fragments/PasswordFragment;)Lcom/keepassdroid/biometric/BiometricHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keepassdroid/biometric/BiometricHelper;->decryptData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
