.class Leu/chainfire/lumen/ui/SettingsFragment$j;
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

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Leu/chainfire/lumen/ui/SettingsFragment;->h(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {p1}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object p1

    iget-object p1, p1, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/a$c;->d(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/h;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/h;->r(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/j;->o(Landroid/content/Context;)Leu/chainfire/lumen/drivers/j;

    move-result-object p1

    invoke-virtual {p1, v0}, Leu/chainfire/lumen/drivers/j;->q(Z)V

    iget-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Leu/chainfire/lumen/drivers/d;->x(Landroid/content/Context;)Leu/chainfire/lumen/drivers/d;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/lumen/drivers/d;->s()V

    new-instance v2, Leu/chainfire/lumen/a$d;

    const/16 v1, 0x3e8

    invoke-direct {v2, v1}, Leu/chainfire/lumen/a$d;-><init>(I)V

    const/4 v3, 0x1

    const-wide/16 v4, 0x1f4

    const-string v6, "gamma"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Leu/chainfire/lumen/drivers/d;->r(Leu/chainfire/lumen/a$d;ZJLjava/lang/String;)Z

    iget-object v1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v1}, Leu/chainfire/lumen/ui/SettingsFragment;->y(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/ui/a;

    move-result-object v2

    new-instance v5, Leu/chainfire/lumen/ui/SettingsFragment$j$a;

    invoke-direct {v5, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$j$a;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$j;Leu/chainfire/lumen/drivers/d;)V

    new-instance v9, Leu/chainfire/lumen/ui/SettingsFragment$j$b;

    invoke-direct {v9, p0, p1}, Leu/chainfire/lumen/ui/SettingsFragment$j$b;-><init>(Leu/chainfire/lumen/ui/SettingsFragment$j;Leu/chainfire/lumen/drivers/d;)V

    const v3, 0x7f0900d5

    const v4, 0x7f0900d6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0900d8

    invoke-virtual/range {v2 .. v9}, Leu/chainfire/lumen/ui/a;->b(IILjava/lang/Runnable;ILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return v0
.end method
