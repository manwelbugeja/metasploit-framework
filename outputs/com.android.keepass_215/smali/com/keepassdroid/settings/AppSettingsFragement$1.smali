.class Lcom/keepassdroid/settings/AppSettingsFragement$1;
.super Ljava/lang/Object;
.source "AppSettingsFragement.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/settings/AppSettingsFragement;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keepassdroid/settings/AppSettingsFragement;


# direct methods
.method constructor <init>(Lcom/keepassdroid/settings/AppSettingsFragement;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/keepassdroid/settings/AppSettingsFragement$1;->this$0:Lcom/keepassdroid/settings/AppSettingsFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 60
    check-cast p2, Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lcom/keepassdroid/app/App;->getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->deleteAllKeys()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
