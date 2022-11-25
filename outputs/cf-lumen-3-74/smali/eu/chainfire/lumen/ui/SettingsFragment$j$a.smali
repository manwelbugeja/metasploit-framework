.class Leu/chainfire/lumen/ui/SettingsFragment$j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/lumen/ui/SettingsFragment$j;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leu/chainfire/lumen/drivers/d;

.field final synthetic b:Leu/chainfire/lumen/ui/SettingsFragment$j;


# direct methods
.method constructor <init>(Leu/chainfire/lumen/ui/SettingsFragment$j;Leu/chainfire/lumen/drivers/d;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$j;

    iput-object p2, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->a:Leu/chainfire/lumen/drivers/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->h(Leu/chainfire/lumen/ui/SettingsFragment;Z)Z

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->b:Leu/chainfire/lumen/ui/SettingsFragment$j;

    iget-object v0, v0, Leu/chainfire/lumen/ui/SettingsFragment$j;->a:Leu/chainfire/lumen/ui/SettingsFragment;

    invoke-static {v0}, Leu/chainfire/lumen/ui/SettingsFragment;->p(Leu/chainfire/lumen/ui/SettingsFragment;)Leu/chainfire/lumen/a;

    move-result-object v1

    iget-object v1, v1, Leu/chainfire/lumen/a;->O:Leu/chainfire/lumen/a$c;

    iget-object v1, v1, Leu/chainfire/lumen/a$j;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Leu/chainfire/lumen/ui/SettingsFragment;->i(Leu/chainfire/lumen/ui/SettingsFragment;Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->a:Leu/chainfire/lumen/drivers/d;

    invoke-virtual {v0}, Leu/chainfire/lumen/drivers/d;->t()V

    iget-object v0, p0, Leu/chainfire/lumen/ui/SettingsFragment$j$a;->a:Leu/chainfire/lumen/drivers/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Leu/chainfire/lumen/drivers/d;->A(J)V

    return-void
.end method
