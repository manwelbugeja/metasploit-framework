.class public Lcom/keepassdroid/backup/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# static fields
.field private static final PREFS_BACKUP_KEY:Ljava/lang/String; = "prefs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/keepassdroid/backup/SettingsBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string v0, "prefs"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/backup/SettingsBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method
