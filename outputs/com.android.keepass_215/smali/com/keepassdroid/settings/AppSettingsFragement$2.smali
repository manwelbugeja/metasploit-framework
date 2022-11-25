.class Lcom/keepassdroid/settings/AppSettingsFragement$2;
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

    .line 71
    iput-object p1, p0, Lcom/keepassdroid/settings/AppSettingsFragement$2;->this$0:Lcom/keepassdroid/settings/AppSettingsFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 77
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 80
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_1

    .line 81
    invoke-static {}, Lcom/keepassdroid/app/App;->getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keepassdroid/fileselect/RecentFileHistory;->deleteAll()V

    :cond_1
    return p1
.end method
