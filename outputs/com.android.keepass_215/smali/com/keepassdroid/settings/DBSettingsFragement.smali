.class public Lcom/keepassdroid/settings/DBSettingsFragement;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "DBSettingsFragement.java"


# static fields
.field public static KEYFILE_DEFAULT:Z = false

.field private static final ROUNDS_PREFERENCE_TAG:Ljava/lang/String; = "ROUNDS"


# instance fields
.field private backupManager:Landroid/app/backup/BackupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method public static Launch(Landroid/content/Context;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/settings/DBSettingsFragement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/settings/DBSettingsFragement;Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->setRounds(Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V

    return-void
.end method

.method private setAlgorithm(Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V
    .locals 1

    .line 111
    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDatabase;->getEncAlgorithm()Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    move-result-object p1

    sget-object v0, Lcom/keepassdroid/database/PwEncryptionAlgorithm;->Rjindal:Lcom/keepassdroid/database/PwEncryptionAlgorithm;

    if-ne p1, v0, :cond_0

    const p1, 0x7f10013f

    goto :goto_0

    :cond_0
    const p1, 0x7f10015a

    .line 117
    :goto_0
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private setRounds(Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V
    .locals 2

    .line 106
    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDatabase;->getNumRounds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/DBSettingsFragement;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const p1, 0x7f130003

    .line 76
    invoke-virtual {p0, p1}, Lcom/keepassdroid/settings/DBSettingsFragement;->addPreferencesFromResource(I)V

    .line 78
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p2}, Lcom/keepassdroid/database/PwDatabase;->appSettingsEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f100147

    .line 80
    invoke-virtual {p0, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 81
    new-instance v0, Lcom/keepassdroid/settings/DBSettingsFragement$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/settings/DBSettingsFragement$1;-><init>(Lcom/keepassdroid/settings/DBSettingsFragement;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->setRounds(Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V

    const p2, 0x7f10002a

    .line 91
    invoke-virtual {p0, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/settings/DBSettingsFragement;->setAlgorithm(Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V

    .line 95
    :cond_0
    new-instance p1, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Lcom/keepassdroid/settings/DBSettingsFragement;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/keepassdroid/settings/DBSettingsFragement;->backupManager:Landroid/app/backup/BackupManager;

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/keepassdroid/settings/DBSettingsFragement;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ROUNDS"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 64
    instance-of v2, p1, Landroidx/preference/EditTextPreference;

    if-eqz v2, :cond_1

    const v2, 0x7f100147

    invoke-virtual {p0, v2}, Lcom/keepassdroid/settings/DBSettingsFragement;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->newInstance(Ljava/lang/String;)Lcom/keepassdroid/settings/RoundsPreferenceFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 67
    invoke-virtual {p0}, Lcom/keepassdroid/settings/DBSettingsFragement;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/keepassdroid/settings/DBSettingsFragement;->backupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 102
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    return-void
.end method
