.class Leu/chainfire/lumen/ui/SettingsFragment$u;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$u;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leu/chainfire/lumen/ui/a;)Z
    .locals 2

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$u;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->f:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0}, Leu/chainfire/lumen/a$c;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$u;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v0

    iget-object v0, v0, Leu/chainfire/lumen/a;->f:Leu/chainfire/lumen/a$c;

    invoke-virtual {v0, v1}, Leu/chainfire/lumen/a$c;->d(Z)V

    invoke-virtual {p1}, Leu/chainfire/lumen/ui/a;->a()V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$u;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0, p1}, Leu/chainfire/lumen/ui/SettingsFragment;->j(Leu/chainfire/lumen/ui/SettingsFragment;Leu/chainfire/lumen/ui/a;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
