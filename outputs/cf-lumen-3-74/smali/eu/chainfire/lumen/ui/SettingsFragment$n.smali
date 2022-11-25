.class Leu/chainfire/lumen/ui/SettingsFragment$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$n;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->j(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V

    const/4 p1, 0x0

    return p1
.end method
