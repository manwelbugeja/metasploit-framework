.class Lcom/keepassdroid/settings/DBSettingsFragement$1;
.super Ljava/lang/Object;
.source "DBSettingsFragement.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/settings/DBSettingsFragement;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/settings/DBSettingsFragement;


# direct methods
.method constructor <init>(Lcom/keepassdroid/settings/DBSettingsFragement;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/keepassdroid/settings/DBSettingsFragement$1;->this$0:Lcom/keepassdroid/settings/DBSettingsFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 84
    iget-object p2, p0, Lcom/keepassdroid/settings/DBSettingsFragement$1;->this$0:Lcom/keepassdroid/settings/DBSettingsFragement;

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/keepassdroid/settings/DBSettingsFragement;->access$000(Lcom/keepassdroid/settings/DBSettingsFragement;Lcom/keepassdroid/Database;Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method
