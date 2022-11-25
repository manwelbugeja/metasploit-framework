.class public Lcom/keepassdroid/fragments/PasswordFragment;
.super Landroidx/fragment/app/Fragment;
.source "PasswordFragment.java"

# interfaces
.implements Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/fragments/PasswordFragment$OkClickHandler;,
        Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;,
        Lcom/keepassdroid/fragments/PasswordFragment$DefaultCheckChange;,
        Lcom/keepassdroid/fragments/PasswordFragment$InitTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BIOMETRIC_LOAD:I = 0x2

.field private static final BIOMETRIC_SAVE:I = 0x1

.field private static final FILE_BROWSE:I = 0x100

.field public static final GET_CONTENT:I = 0x101

.field private static final KEY_LAUNCH_IMMEDIATELY:Ljava/lang/String; = "launchImmediately"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final OPEN_DOC:I = 0x102

.field private static final PERMISSION_REQUEST_ID:I = 0x1

.field private static final PREF_KEY_IV_PREFIX:Ljava/lang/String; = "ivFor_"

.field private static final PREF_KEY_VALUE_PREFIX:Ljava/lang/String; = "valueFor_"

.field private static final VIEW_INTENT:Ljava/lang/String; = "android.intent.action.VIEW"


# instance fields
.field private afterOnCreateBeforeEndOfOnResume:Z

.field private biometricCheck:Landroid/widget/CheckBox;

.field private biometricClear:Landroid/widget/Button;

.field private biometricHelper:Lcom/keepassdroid/biometric/BiometricHelper;

.field private biometricMode:I

.field private biometricOpen:Landroid/widget/Button;

.field private biometricOpenPrompt:Landroidx/biometric/BiometricPrompt;

.field private biometricSavePrompt:Landroidx/biometric/BiometricPrompt;

.field private biometricsAvailable:Z

.field private confirmButton:Landroid/widget/Button;

.field private divider3:Landroid/view/View;

.field private loadPrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

.field private mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private mDbUri:Landroid/net/Uri;

.field private mKeyUri:Landroid/net/Uri;

.field private mRememberKeyfile:Z

.field private mView:Landroid/view/View;

.field private mode:I

.field private passwordView:Landroid/widget/EditText;

.field prefs:Landroid/content/SharedPreferences;

.field prefsNoBackup:Landroid/content/SharedPreferences;

.field private savePrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

.field private storedKeyUri:Landroid/net/Uri;

.field private storedPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    .line 99
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    .line 104
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedKeyUri:Landroid/net/Uri;

    .line 105
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedPassword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricsAvailable:Z

    .line 123
    iput v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricMode:I

    .line 127
    iput-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->afterOnCreateBeforeEndOfOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->biometricLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->clearStoredCredentials()V

    return-void
.end method

.method static synthetic access$1000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->getKeyFile(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpenUpdateVisibility()V

    return-void
.end method

.method static synthetic access$1300(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->populateView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/Button;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->confirmButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/view/View;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/keepassdroid/fragments/PasswordFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->retrieveSettings()V

    return-void
.end method

.method static synthetic access$1900(Lcom/keepassdroid/fragments/PasswordFragment;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/fragments/PasswordFragment;->loadDatabase(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keepassdroid/fragments/PasswordFragment;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricMode:I

    return p0
.end method

.method static synthetic access$2000(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/CheckBox;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricCheck:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keepassdroid/fragments/PasswordFragment;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricMode:I

    return p1
.end method

.method static synthetic access$2100(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/biometric/BiometricPrompt$PromptInfo;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->savePrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/biometric/BiometricPrompt;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricSavePrompt:Landroidx/biometric/BiometricPrompt;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/keepassdroid/fragments/PasswordFragment;I)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->getEditText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/keepassdroid/fragments/PasswordFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/fragments/PasswordFragment;->loadDatabase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keepassdroid/fragments/PasswordFragment;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/widget/EditText;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->passwordView:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keepassdroid/fragments/PasswordFragment;)Lcom/keepassdroid/biometric/BiometricHelper;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricHelper:Lcom/keepassdroid/biometric/BiometricHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keepassdroid/fragments/PasswordFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/keepassdroid/fragments/PasswordFragment;I)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->canceledBiometricAuth(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/keepassdroid/fragments/PasswordFragment;)Landroid/net/Uri;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$902(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    return-object p1
.end method

.method private biometricLogin()V
    .locals 4

    .line 179
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->initDecryptData()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricHelper:Lcom/keepassdroid/biometric/BiometricHelper;

    invoke-virtual {v0}, Lcom/keepassdroid/biometric/BiometricHelper;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 186
    iput v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricMode:I

    .line 187
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpenPrompt:Landroidx/biometric/BiometricPrompt;

    iget-object v2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->loadPrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

    new-instance v3, Landroidx/biometric/BiometricPrompt$CryptoObject;

    invoke-direct {v3, v0}, Landroidx/biometric/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    invoke-virtual {v1, v2, v3}, Landroidx/biometric/BiometricPrompt;->authenticate(Landroidx/biometric/BiometricPrompt$PromptInfo;Landroidx/biometric/BiometricPrompt$CryptoObject;)V

    return-void
.end method

.method private biometricOpenUpdateVisibility()V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result v0

    .line 253
    iget-boolean v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricsAvailable:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    .line 254
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyValue()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyIvSpec()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefs:Landroid/content/SharedPreferences;

    const v1, 0x7f10003b

    invoke-virtual {p0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f050003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 261
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->afterOnCreateBeforeEndOfOnResume:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    const/4 v2, 0x0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpen:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricClear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->divider3:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->biometricLogin()V

    :cond_3
    return-void
.end method

.method private canceledBiometricAuth(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private checkFilePermissions(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 1

    .line 905
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->hasFileUri(Landroid/net/Uri;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 906
    invoke-direct {p0, p2}, Lcom/keepassdroid/fragments/PasswordFragment;->hasFileUri(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    return v0

    .line 910
    :cond_2
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1, v0}, Lcom/keepassdroid/utils/PermissionUtil;->checkAndRequest(Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method

.method private clearStoredCredentials()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 847
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 848
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyIvSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 849
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 850
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->setFingerPrintVisibilty()V

    return-void
.end method

.method private errorMessage(I)V
    .locals 2

    .line 712
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private getEditText(I)Ljava/lang/String;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getKeyFile(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    .line 685
    iget-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mRememberKeyfile:Z

    if-eqz v0, :cond_0

    .line 687
    invoke-static {}, Lcom/keepassdroid/app/App;->getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->getFileByName(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPreferenceKeyIvSpec()Ljava/lang/String;
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ivFor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKeyValue()Ljava/lang/String;
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "valueFor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasFileUri(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 838
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method private initBiometrics()V
    .locals 6

    .line 282
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 283
    iput-boolean v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricsAvailable:Z

    .line 285
    new-instance v1, Lcom/keepassdroid/biometric/BiometricHelper;

    invoke-direct {v1, v0, p0}, Lcom/keepassdroid/biometric/BiometricHelper;-><init>(Landroid/content/Context;Lcom/keepassdroid/biometric/BiometricHelper$BiometricCallback;)V

    iput-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricHelper:Lcom/keepassdroid/biometric/BiometricHelper;

    .line 287
    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 289
    new-instance v2, Lcom/keepassdroid/fragments/PasswordFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/keepassdroid/fragments/PasswordFragment$3;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/content/Context;)V

    .line 338
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    invoke-direct {v0, p0, v1, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricSavePrompt:Landroidx/biometric/BiometricPrompt;

    .line 339
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const v3, 0x7f100038

    .line 340
    invoke-virtual {p0, v3}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    const/4 v3, 0x0

    .line 341
    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    const v4, 0x7f100040

    .line 342
    invoke-virtual {p0, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    const/high16 v4, 0x1040000

    .line 343
    invoke-virtual {p0, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->savePrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 346
    new-instance v0, Landroidx/biometric/BiometricPrompt;

    invoke-direct {v0, p0, v1, v2}, Landroidx/biometric/BiometricPrompt;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/concurrent/Executor;Landroidx/biometric/BiometricPrompt$AuthenticationCallback;)V

    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpenPrompt:Landroidx/biometric/BiometricPrompt;

    .line 347
    new-instance v0, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    invoke-direct {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;-><init>()V

    const v1, 0x7f100037

    .line 348
    invoke-virtual {p0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setDescription(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v3}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setConfirmationRequired(Z)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    const v1, 0x7f10003f

    .line 350
    invoke-virtual {p0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v4}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->setNegativeButtonText(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroidx/biometric/BiometricPrompt$PromptInfo$Builder;->build()Landroidx/biometric/BiometricPrompt$PromptInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->loadPrompt:Landroidx/biometric/BiometricPrompt$PromptInfo;

    .line 354
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->setFingerPrintVisibilty()V

    return-void
.end method

.method private initDecryptData()Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyIvSpec()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricHelper:Lcom/keepassdroid/biometric/BiometricHelper;

    invoke-virtual {v1, v0}, Lcom/keepassdroid/biometric/BiometricHelper;->initDecryptData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadDatabase(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .line 729
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const p1, 0x7f10007e

    .line 730
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->errorMessage(I)V

    return-void

    .line 734
    :cond_1
    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedPassword:Ljava/lang/String;

    .line 735
    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedKeyUri:Landroid/net/Uri;

    .line 737
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/fragments/PasswordFragment;->checkFilePermissions(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 738
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->loadDatabaseWithPermission()V

    :cond_2
    return-void
.end method

.method private loadDatabase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 831
    invoke-static {p2}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/fragments/PasswordFragment;->loadDatabase(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private loadDatabaseWithPermission()V
    .locals 9

    .line 743
    iget-object v4, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedPassword:Ljava/lang/String;

    const/4 v0, 0x0

    .line 744
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedPassword:Ljava/lang/String;

    .line 745
    iget-object v5, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedKeyUri:Landroid/net/Uri;

    .line 746
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->storedKeyUri:Landroid/net/Uri;

    .line 747
    iget-object v7, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 751
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    .line 752
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/keepassdroid/Database;->clear(Landroid/content/Context;)V

    .line 755
    invoke-static {}, Lcom/keepassdroid/app/App;->clearShutdown()V

    .line 757
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 758
    new-instance v8, Lcom/keepassdroid/database/edit/LoadDB;

    iget-object v3, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    new-instance v6, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;

    invoke-direct {v6, p0, v0, v1}, Lcom/keepassdroid/fragments/PasswordFragment$AfterLoad;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;Landroid/os/Handler;Lcom/keepassdroid/Database;)V

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/keepassdroid/database/edit/LoadDB;-><init>(Lcom/keepassdroid/Database;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 759
    new-instance v0, Lcom/keepassdroid/ProgressTask;

    const v1, 0x7f1000be

    invoke-direct {v0, v7, v8, v1}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 760
    invoke-virtual {v0}, Lcom/keepassdroid/ProgressTask;->run()V

    return-void
.end method

.method private populateView()V
    .locals 4

    .line 694
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v2, 0x7f0900f1

    .line 695
    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->setEditText(ILjava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/keepassdroid/utils/UriUtil;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 698
    iget-object v2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    const v3, 0x7f0900f2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 700
    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 701
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/keepassdroid/utils/UriUtil;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const v0, 0x7f09019e

    .line 708
    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->setEditText(ILjava/lang/String;)V

    return-void
.end method

.method private retrieveSettings()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "defaultFileName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 678
    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mDbUri:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/keepassdroid/utils/UriUtil;->equalsDefaultfile(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    .line 680
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private setEditText(ILjava/lang/String;)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setFingerPrintVisibilty()V
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricsAvailable:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricCheck:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 245
    :goto_0
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpenUpdateVisibility()V

    return-void
.end method


# virtual methods
.method public handleDecryptedResult(Ljava/lang/String;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->passwordView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 868
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->confirmButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->performClick()Z

    return-void
.end method

.method public handleEncryptedResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 856
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 857
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getPreferenceKeyIvSpec()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 858
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 860
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100062

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 378
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 380
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 381
    new-instance v0, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;Lcom/keepassdroid/fragments/PasswordFragment$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 382
    invoke-virtual {v0, v1}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/keepassdroid/fragments/PasswordFragment$InitTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 387
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 389
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, ""

    const v2, 0x7f0901a1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const v1, 0x7f09019e

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    .line 418
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 p3, 0x101

    if-ne p1, p3, :cond_0

    .line 421
    invoke-static {v0, p2}, Lcom/keepassdroid/utils/UriUtil;->translate(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 423
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 425
    iget-object p3, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 426
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_1
    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_4

    .line 406
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 408
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 409
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mKeyUri:Landroid/net/Uri;

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 400
    invoke-direct {p0, v2, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->setEditText(ILjava/lang/String;)V

    .line 401
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 402
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keepassdroid/Database;->clear(Landroid/content/Context;)V

    goto :goto_0

    .line 394
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/keepassdroid/fragments/PasswordFragment;->setEditText(ILjava/lang/String;)V

    .line 395
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keepassdroid/Database;->clear(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 217
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 219
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 220
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->setHasOptionsMenu(Z)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->setRetainInstance(Z)V

    .line 135
    iput-boolean p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->afterOnCreateBeforeEndOfOnResume:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 192
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 194
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f0d0004

    .line 195
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c007a

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 233
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 228
    iput-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public onException()V
    .locals 1

    const/4 v0, 0x1

    .line 878
    invoke-virtual {p0, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->onException(Z)V

    return-void
.end method

.method public onException(I)V
    .locals 2

    .line 895
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onException(Ljava/lang/CharSequence;)V
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onException(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f10003d

    .line 884
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->onException(I)V

    :cond_0
    return-void
.end method

.method public onInvalidKeyException()V
    .locals 3

    .line 873
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100095

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onKeyInvalidated()V
    .locals 3

    .line 900
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->clearStoredCredentials()V

    .line 901
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10003e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 208
    :pswitch_0
    invoke-static {v0}, Lcom/keepassdroid/settings/AppSettingsActivity;->Launch(Landroid/content/Context;)V

    return v2

    .line 203
    :pswitch_1
    new-instance p1, Lcom/keepassdroid/AboutDialog;

    invoke-direct {p1, v0}, Lcom/keepassdroid/AboutDialog;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {p1}, Lcom/keepassdroid/AboutDialog;->show()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f090154
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 466
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 468
    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->loadDatabaseWithPermission()V

    goto :goto_0

    :cond_0
    const p1, 0x7f10011f

    .line 474
    invoke-direct {p0, p1}, Lcom/keepassdroid/fragments/PasswordFragment;->errorMessage(I)V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 440
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 444
    invoke-static {}, Lcom/keepassdroid/app/App;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mView:Landroid/view/View;

    const v1, 0x7f0901a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    .line 446
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    :cond_0
    invoke-static {}, Lcom/keepassdroid/app/App;->clearShutdown()V

    .line 452
    iget-object v0, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Landroidx/biometric/BiometricManager;->from(Landroid/content/Context;)Landroidx/biometric/BiometricManager;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Landroidx/biometric/BiometricManager;->canAuthenticate()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->initBiometrics()V

    goto :goto_0

    .line 457
    :cond_1
    iput-boolean v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricsAvailable:Z

    .line 458
    invoke-direct {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->setFingerPrintVisibilty()V

    .line 461
    :goto_0
    iput-boolean v1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->afterOnCreateBeforeEndOfOnResume:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 148
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getContext()Landroid/content/Context;

    .line 152
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefs:Landroid/content/SharedPreferences;

    .line 153
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v0, "nobackup"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefsNoBackup:Landroid/content/SharedPreferences;

    .line 155
    iget-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->prefs:Landroid/content/SharedPreferences;

    const v0, 0x7f1000b7

    invoke-virtual {p0, v0}, Lcom/keepassdroid/fragments/PasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/keepassdroid/fragments/PasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->mRememberKeyfile:Z

    const p2, 0x7f09019f

    .line 156
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->confirmButton:Landroid/widget/Button;

    const p2, 0x7f0901a1

    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->passwordView:Landroid/widget/EditText;

    const p2, 0x7f090194

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpen:Landroid/widget/Button;

    const p2, 0x7f090084

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricClear:Landroid/widget/Button;

    const p2, 0x7f0900ae

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/keepassdroid/fragments/PasswordFragment;->divider3:Landroid/view/View;

    const p2, 0x7f0901c1

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricCheck:Landroid/widget/CheckBox;

    .line 163
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricOpen:Landroid/widget/Button;

    new-instance p2, Lcom/keepassdroid/fragments/PasswordFragment$1;

    invoke-direct {p2, p0}, Lcom/keepassdroid/fragments/PasswordFragment$1;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object p1, p0, Lcom/keepassdroid/fragments/PasswordFragment;->biometricClear:Landroid/widget/Button;

    new-instance p2, Lcom/keepassdroid/fragments/PasswordFragment$2;

    invoke-direct {p2, p0}, Lcom/keepassdroid/fragments/PasswordFragment$2;-><init>(Lcom/keepassdroid/fragments/PasswordFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
