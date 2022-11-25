.class public Lcom/keepassdroid/settings/AppSettingsFragement;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "AppSettingsFragement.java"


# static fields
.field public static KEYFILE_DEFAULT:Z = false


# instance fields
.field private backupManager:Landroid/app/backup/BackupManager;


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

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/settings/AppSettingsFragement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f130002

    .line 54
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->addPreferencesFromResource(I)V

    const p1, 0x7f1000b7

    .line 56
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/keepassdroid/settings/AppSettingsFragement$1;

    invoke-direct {p2, p0}, Lcom/keepassdroid/settings/AppSettingsFragement$1;-><init>(Lcom/keepassdroid/settings/AppSettingsFragement;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f100139

    .line 70
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/AppSettingsFragement;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/keepassdroid/settings/AppSettingsFragement$2;

    invoke-direct {p2, p0}, Lcom/keepassdroid/settings/AppSettingsFragement$2;-><init>(Lcom/keepassdroid/settings/AppSettingsFragement;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    new-instance p1, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/keepassdroid/settings/AppSettingsFragement;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keepassdroid/settings/AppSettingsFragement;->backupManager:Landroid/app/backup/BackupManager;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/keepassdroid/settings/AppSettingsFragement;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 95
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    return-void
.end method
