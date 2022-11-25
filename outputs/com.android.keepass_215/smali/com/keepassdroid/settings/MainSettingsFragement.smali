.class public Lcom/keepassdroid/settings/MainSettingsFragement;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "MainSettingsFragement.java"


# static fields
.field public static KEYFILE_DEFAULT:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/content/Context;)V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/settings/MainSettingsFragement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/MainSettingsFragement;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130001

    .line 52
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/MainSettingsFragement;->addPreferencesFromResource(I)V

    .line 54
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDatabase;->appSettingsEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x7f100059

    .line 56
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/MainSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/MainSettingsFragement;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    const/4 p2, 0x0

    .line 57
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
