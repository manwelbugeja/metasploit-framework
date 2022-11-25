.class Leu/chainfire/lumen/ui/SettingsFragment$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Leu/chainfire/lumen/ui/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment;->z()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez p1, :cond_0

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v1}, La/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$o;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
