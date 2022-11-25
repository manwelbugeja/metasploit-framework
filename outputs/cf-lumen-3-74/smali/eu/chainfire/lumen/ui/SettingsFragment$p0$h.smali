.class Leu/chainfire/lumen/ui/SettingsFragment$p0$h;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$h;->a:Leu/chainfire/lumen/ui/SettingsFragment$p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$p0$h;->a:Leu/chainfire/lumen/ui/SettingsFragment$p0;

    iget-object v0, v0, Leu/chainfire/lumen/ui/SettingsFragment$p0;->d:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
