.class Leu/chainfire/lumen/ui/SettingsFragment$p0$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$p0;->c(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/ui/SettingsFragment$p0;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$p0;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$e;->a:Leu/chainfire/lumen/ui/SettingsFragment$p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$e;->a:Leu/chainfire/lumen/ui/SettingsFragment$p0;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment$p0;->a(Leu/chainfire/lumen/ui/SettingsFragment$p0;)Leu/chainfire/lumen/drivers/e;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$e;->a:Leu/chainfire/lumen/ui/SettingsFragment$p0;

    iget-object v1, v1, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/drivers/e;->e(Landroid/content/Context;Z)V

    return-void
.end method
